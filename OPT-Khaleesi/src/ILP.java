
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Stack;

import ilog.concert.IloException;
import ilog.concert.IloIntVar;
import ilog.concert.IloNumExpr;
import ilog.cplex.IloCplex;

public class ILP {

	// Decision Variable
	IloIntVar[][] theta;
	IloIntVar[][] x;
	IloIntVar[][] y;
	IloIntVar[][][] w;
	IloIntVar[] z;
	IloIntVar[][] q;
	IloIntVar[][] delta;
	IloIntVar[][][] gamma;

	// For routing from ingress to egress
	IloIntVar[][] o;
	IloIntVar[][] t;

	public void runILP(Graph G, int[][] M, int flowIdx, Flow f,
	    ArrayList<Tuple> E, int[] mbSpecs, String logPrefix)
	    throws IloException, IOException {
		System.out.print("Bazinga!!");
		// System.out.println(E);
		IloCplex model = buildILP(G, M, f, E, mbSpecs);
		model.exportModel("OPT-Khaleesi.lp");
		BufferedWriter costWriter = new BufferedWriter(
		    new FileWriter(new File(logPrefix + ".cost"), true));
		BufferedWriter nodePlacementWriter = new BufferedWriter(
		    new FileWriter(new File(logPrefix + ".nmap"), true));
		BufferedWriter linkPlacementWriter = new BufferedWriter(
		    new FileWriter(new File(logPrefix + ".path"), true));
		BufferedWriter emapWriter = new BufferedWriter(
		    new FileWriter(new File(logPrefix + ".emap"), true));
		BufferedWriter linkSelectionWriter = new BufferedWriter(
		    new FileWriter(new File(logPrefix + ".sequence"), true));
		BufferedWriter durationWriter = new BufferedWriter(
		    new FileWriter(new File(logPrefix + ".time"), true));
		int start = (int) System.currentTimeMillis();
		if (model.solve()) {
			int finish = (int) System.currentTimeMillis();
			// System.out.println("Duration = " + (finish - start));
			durationWriter.append(flowIdx + "," + (finish - start) + "\n");
			durationWriter.flush();
			// System.out.println("Optimal Solution = " + model.getObjValue());
			costWriter.append(flowIdx + "," + model.getObjValue() + "\n");
			costWriter.flush();
			// System.out.println("NF Placements");
			nodePlacementWriter.append(Integer.toString(flowIdx));
			nodePlacementWriter.flush();
			ArrayList<Integer> nodePlacements = new ArrayList<Integer>();
			int firstNf = -1, lastNf = -1;
			for (int i = 0; i < f.getChain().size(); i++) {
				for (int j = 0; j < G.getAdjList().length; j++) {
					if (model.getValue(theta[i][j]) >= 0.9) {
						// System.out.println("NF " + i + " of type " + f.getChain().get(i)
						//     + " is placed on Node " + j);
						nodePlacements.add(j);
						if (model.getValue(o[i][j]) >= 0.9) {
							firstNf = i;
							// System.out.println("*This is the first NF*");
						}
						if (model.getValue(t[i][j]) >= 0.9) {
							lastNf = i;
							// System.out.println("*This is the last NF*");
						}
					}
				}
			}
			// System.out.println("Path from Ingress to First NF");
			ArrayList<Tuple> embeddingLinks = new ArrayList<Tuple>();
			HashMap<Integer, ArrayList<Tuple>> linkEmbedding = new HashMap<Integer, ArrayList<Tuple>>();
			Tuple ingressToFirst = new Tuple(f.getSource(), firstNf);
			emapWriter.append(Integer.toString(flowIdx));
			for (int j = 0; j < G.getAdjList().length; j++) {
				for (int k = 0; k < G.getAdjList().length; k++) {
					try {
						if (model.getValue(w[E.size()][j][k]) >= 0.9) {
							embeddingLinks.add(new Tuple(j, k));
							if (!linkEmbedding.containsKey(E.size())) {
								linkEmbedding.put(E.size(), new ArrayList<Tuple>());
							}
							ArrayList<Tuple> p = linkEmbedding.get(E.size());
							p.add(new Tuple(j, k));
							// System.out.print("{" + j + "," + k + "},");
						}
					} catch (IloException e) {
					}
				}
			}
			// System.out.println();

			Tuple egressToLast = new Tuple(lastNf, f.getDestination());
			// System.out.println("Path from Last NF to Egress");
			for (int j = 0; j < G.getAdjList().length; j++) {
				for (int k = 0; k < G.getAdjList().length; k++) {
					try {
						if (model.getValue(w[E.size() + 1][j][k]) >= 0.9) {
							embeddingLinks.add(new Tuple(j, k));
							if (!linkEmbedding.containsKey(E.size() + 1)) {
								linkEmbedding.put(E.size() + 1, new ArrayList<Tuple>());
							}
							ArrayList<Tuple> p = linkEmbedding.get(E.size() + 1);
							p.add(new Tuple(j, k));
							System.out.print("{" + j + "," + k + "},");
						}
					} catch (IloException e) {
					}
				}
			}
			// System.out.println();

			// System.out.println("Chosen E Links");
			ArrayList<Tuple> selectedLinks = new ArrayList<Tuple>();
			for (int i = 0; i < E.size(); i++) {
				if (model.getValue(z[i]) >= 0.9) {
					selectedLinks.add(new Tuple(getIndexNF(f, E.get(i).getSource()),
					    getIndexNF(f, E.get(i).getDestination())));
					// System.out.println(
					//     "Z " + i + " = " + E.get(i) + " is routed through Path: ");
					linkEmbedding.put(i, new ArrayList<Tuple>());
					for (int j = 0; j < G.getAdjList().length; j++) {
						for (int k = 0; k < G.getAdjList().length; k++) {
							try {
								if (model.getValue(w[i][j][k]) > 0) {
									embeddingLinks.add(new Tuple(j, k));
									ArrayList<Tuple> p = linkEmbedding.get(i);
									p.add(new Tuple(j, k));
									System.out.print("{" + j + "," + k + "},");
								}
							} catch (IloException e) {
							}
						}
					}
					// System.out.println();
				}
			}
			for (Tuple sLink : embeddingLinks) {
				emapWriter.append(
				    "," + sLink.getSource() + "," + sLink.getDestination());
				emapWriter.flush();
			}
			emapWriter.append("\n");
			
			// System.out.println("Selected z_es: ");
			// for (Tuple link : selectedLinks) {
			// 	System.out.println(link);
			// }
			ArrayList<Integer> embeddedSequence = ComputePath(selectedLinks,
			    f.getChain().size());
			linkSelectionWriter.append(Integer.toString(flowIdx));
			for (int i = 0; i < embeddedSequence.size(); ++i) {
				linkSelectionWriter.append("," + embeddedSequence.get(i));
				nodePlacementWriter
				    .append("," + nodePlacements.get(embeddedSequence.get(i)));
				System.out.print(embeddedSequence.get(i) + " ");
			}
			System.out.print("\n");
			linkSelectionWriter.append("\n");
			linkSelectionWriter.flush();
			nodePlacementWriter.append("\n");
			nodePlacementWriter.flush();

			ArrayList<Integer> embeddedPath = new ArrayList<Integer>();
			embeddedPath.add(f.getSource());
			ArrayList<Integer> linkSequence = new ArrayList<Integer>();
			linkSequence.add(E.size());
			// linkSequence.add(ingressToFirst);
			for (int i = 1; i < embeddedSequence.size(); ++i) {
				int vlindex = getVLinkIndex(
				    f.getChain().get(embeddedSequence.get(i - 1)),
				    f.getChain().get(embeddedSequence.get(i)), E);
				linkSequence.add(vlindex);
			}
			linkSequence.add(E.size() + 1);
			// System.out.println("Link sequence:");
			for (Integer linkIdx : linkSequence) {
				Iterator<Integer> it = linkEmbedding.keySet().iterator();
				Integer l = null;
				while (it.hasNext()) {
					l = it.next();
					if (l == linkIdx)
						break;
				}
				ArrayList<Integer> path = ComputePath(linkEmbedding.get(l),
				    G.getNodeCap().length);
				// System.out.println(path);
				if (path.size() > 0)
					embeddedPath.addAll(path.subList(1, path.size()));
			}
			// ArrayList<Integer> embeddedPath = ComputePath(embeddingLinks,
			// G.getNodeCap().length);
			linkPlacementWriter.append(Integer.toString(flowIdx));
			// System.out.println("Embedded path:");
			for (int i = 0; i < embeddedPath.size(); ++i) {
				linkPlacementWriter.append("," + embeddedPath.get(i));
				// System.out.print(embeddedPath.get(i) + " ");
			}
			// System.out.print("\n");
			linkPlacementWriter.append("\n");
			linkPlacementWriter.flush();
		} else {
			costWriter.append(flowIdx + ",-1\n");
			// System.out.println("No Solution Found!");
		}
		costWriter.close();
		nodePlacementWriter.close();
		linkPlacementWriter.close();
		linkSelectionWriter.close();
		durationWriter.close();
		emapWriter.close();
	}

	// This function computes the eulerian path from a set of links. This function
	// can be leveraged to figure out what chain has been embedded and also what
	// is the embedding path of a chain.
	ArrayList<Integer> ComputePath(ArrayList<Tuple> links, int numTotalNodes) {
		ArrayList<ArrayList<Integer>> adj = new ArrayList<ArrayList<Integer>>();
		ArrayList<Integer> path = new ArrayList<Integer>();
		HashMap<Integer, Integer> indegree = new HashMap<Integer, Integer>();
		if (links == null || links.size() <= 0)
			return path;
		// System.out.println("numTotalNodes = " + numTotalNodes);
		// System.out.println(links);
		for (int i = 0; i < numTotalNodes; ++i)
			adj.add(new ArrayList<Integer>());
		for (int i = 0; i < links.size(); ++i) {
			Tuple link = links.get(i);
			adj.get(link.getSource()).add(link.getDestination());
			if (!indegree.containsKey(link.getDestination()))
				indegree.put(link.getDestination(), 0);
			if (!indegree.containsKey(link.getSource()))
				indegree.put(link.getSource(), 0);
			int prevInDeg = indegree.get(link.getDestination());
			indegree.put(link.getDestination(), prevInDeg + 1);
		}
		int source = -1;
		for (Integer key : indegree.keySet()) {
			if (indegree.get(key) == 0) {
				source = key;
				break;
			}
		}

		if (source == -1)
			return path;

		Stack<Integer> s = new Stack<Integer>();
		int currentNode = source;
		while (true) {
			if (adj.get(currentNode).isEmpty()) {
				path.add(currentNode);
				if (!s.empty()) {
					currentNode = s.pop();
				} else
					break;
			} else {
				s.push(currentNode);
				int neighbor = adj.get(currentNode)
				    .get(adj.get(currentNode).size() - 1);
				adj.get(currentNode).remove(adj.get(currentNode).size() - 1);
				currentNode = neighbor;
			}
		}
		Collections.reverse(path);
		return path;
	}

	public boolean isContain(ArrayList<Tuple> E, int srcType, int dstType) {
		for (int e = 0; e < E.size(); e++) {
			if ((E.get(e).getSource() == srcType)
			    && (E.get(e).getDestination() == dstType))
				return true;
		}
		return false;
	}

	public IloCplex buildILP(Graph G, int[][] M, Flow f, ArrayList<Tuple> E,
	    int[] mbSpecs) throws IloException {
		// Parameters
		int numNFs = f.getChain().size(); // Number of Network Functions in f's
		                                  // chain
		int numSubstrateNodes = G.getNodeCap().length; // Number of Physical Nodes
		                                               // in the Substrate Network

		// Matrix of Substrate Links
		int[][] isSubstrateLink = new int[numSubstrateNodes][numSubstrateNodes];
		for (int i = 0; i < G.getAdjList().length; i++) {
			for (int j = 0; j < G.getAllEndPoints(i).size(); j++) {
				isSubstrateLink[i][G.getAllEndPoints(i).get(j).getNodeId()] = 1;
			}
		}
		// For Testing Purpose - Print Substrate Link Matrix
		// System.out.println("Substrate Links Matrix");
		// for (int i = 0; i < G.getAdjList().length; i++) {
		// for (int j = 0; j < G.getAdjList().length; j++) {
		// System.out.print(isSubstrateLink[i][j] + ",");
		// }
		// System.out.println();
		// }
		// System.out.println();

		// Omega is populated by NF index and not NF type
		int[][] Omega = new int[numNFs][numNFs]; // Omega = C || !C ^ M ^ E
		for (int i = 0; i < f.getChain().size() - 1; i++) {
			for (int j = i + 1; j < f.getChain().size(); j++)
				Omega[i][j] = 1;
		}

		for (int i = 0; i < E.size(); i++) {
			System.out
			    .println(E.get(i).getSource() + "," + E.get(i).getDestination());
			if ((M[E.get(i).getSource()][E.get(i).getDestination()]) == 1) {
				int u = getIndexNF(f, E.get(i).getSource());
				int v = getIndexNF(f, E.get(i).getDestination());
				System.out.println(E.get(i).getSource() + "/" + u + "::"
				    + E.get(i).getDestination() + "/" + v);
				Omega[u][v] = 1;
			}
		}

		// // Print Omega for Testing
		// System.out.println("Omega");
		// System.out.print(" ");
		// for (int i = 0; i < Omega.length; i++)
		// System.out.print(i + " ");
		// System.out.println();
		// for (int i = 0; i < Omega.length; i++) {
		// System.out.print(i + " ");
		// for (int j = 0; j < Omega[i].length; j++) {
		// System.out.print(Omega[i][j] + ", ");
		// }
		// System.out.println();
		// }

		// Mathematical Model
		IloCplex model = new IloCplex();

		// Decision Variables
		theta = new IloIntVar[numNFs][numSubstrateNodes]; // denotes the placement
		                                                  // of each NF in f
		o = new IloIntVar[numNFs][numSubstrateNodes]; // denotes the placement of
		                                              // each NF in f
		t = new IloIntVar[numNFs][numSubstrateNodes]; // denotes the placement of
		                                              // each NF in f
		x = new IloIntVar[E.size()][numSubstrateNodes];
		y = new IloIntVar[E.size()][numSubstrateNodes];
		delta = new IloIntVar[numNFs][numNFs];
		gamma = new IloIntVar[numNFs][numNFs][numNFs];
		for (int i = 0; i < numNFs; i++) {
			for (int j = 0; j < numSubstrateNodes; j++) {
				theta[i][j] = model.intVar(0, 1, "theta" + i + j);
				o[i][j] = model.intVar(0, 1, "o" + i + j);
				t[i][j] = model.intVar(0, 1, "t" + i + j);
			}
			for (int j = 0; j < numNFs; j++) {
				delta[i][j] = model.intVar(0, 1, "delta" + i + j);
				for (int k = 0; k < numNFs; k++) {
					gamma[i][j][k] = model.intVar(0, 1, "gamma" + i + j + k);
				}
			}
		}
		// denotes the routing of e.
		w = new IloIntVar[E.size() + 2][numSubstrateNodes][numSubstrateNodes];
		z = new IloIntVar[E.size()]; // indicates if link e is routed
		q = new IloIntVar[E.size()][numSubstrateNodes];
		for (int i = 0; i < E.size(); i++) {
			z[i] = model.intVar(0, 1, "z" + i);
			for (int j = 0; j < numSubstrateNodes; j++) {
				q[i][j] = model.intVar(0, 1, "q" + i + j);
				x[i][j] = model.intVar(0, 1, "x" + i + j);
				y[i][j] = model.intVar(0, 1, "y" + i + j);
				// for(int k=0;k<numSubstrateNodes;k++)
				// w[i][j][k] = model.intVar(0,1,"w"+i+j+k);//numVar(0.0,
				// Double.MAX_VALUE,"w"+i+j+k);
			}
		}

		for (int i = 0; i < E.size() + 2; i++) {
			for (int j = 0; j < numSubstrateNodes; j++) {
				for (int k = 0; k < numSubstrateNodes; k++)
					w[i][j][k] = model.intVar(0, 1, "w" + i + j + k);
			}
		}

		// Objective Function
		IloNumExpr objective = model.numExpr();
		for (int i = 0; i < w.length; i++) {
			for (int j = 0; j < numSubstrateNodes; j++) {
				for (int k = 0; k < numSubstrateNodes; k++) {
					if (isSubstrateLink[j][k] == 1)
						objective = model.sum(objective, w[i][j][k]);
				}
			}
		}
		model.addMinimize(objective);

		// Constraint # 1 - Each Network Function MUST be placed
		for (int i = 0; i < numNFs; i++) {
			IloNumExpr e = model.numExpr();
			for (int j = 0; j < numSubstrateNodes; j++) {
				e = model.sum(e, theta[i][j]);
			}
			model.addEq(e, 1, "NF " + i + "PlacementConstraint");
		}

		/*
		 * Constraint #2 and #3 - The source and destination of E must be placed
		 * where the corresponding MB type is placed
		 */

		for (int i = 0; i < E.size(); i++) {
			int srcIndex = getIndexNF(f, E.get(i).getSource());
			int dstIndex = getIndexNF(f, E.get(i).getDestination());

			for (int j = 0; j < numSubstrateNodes; j++) {
				model.addLe(x[i][j], theta[srcIndex][j],
				    "Source of E " + i + " Placement Constraint");
				model.addLe(y[i][j], theta[dstIndex][j],
				    "Destination of E " + i + " Placement Constraint");
			}
		}

		// Constraint #4 - Substrate Nodes Capacity Constraint
		for (int i = 0; i < numSubstrateNodes; i++) {
			IloNumExpr e = model.numExpr();
			for (int j = 0; j < f.getChain().size(); j++) {
				e = model.sum(e, model.prod(theta[j][i], mbSpecs[f.getChain().get(j)]));
			}
			model.addLe(e, G.getNodeCap()[i], "CapacityConstraints_Node" + i);
		}

		// Constraint #5 - Link Placement Constraint
		IloNumExpr LinksRouted = model.numExpr();
		for (int i = 0; i < E.size(); i++) {
			IloNumExpr e1 = model.numExpr();
			IloNumExpr e2 = model.numExpr();
			LinksRouted = model.sum(LinksRouted, z[i]);
			for (int j = 0; j < numSubstrateNodes; j++) {
				e1 = model.sum(e1, x[i][j]);
				e2 = model.sum(e2, y[i][j]);
			}
			model.addEq(model.diff(e1, e2), 0); // Either place both source and
			                                    // destination of a link or neither

			model.addLe(z[i], model.prod(0.5, model.sum(e1, e2)),
			    "LinkPlacementConstraint" + i);
		}
		model.addEq(LinksRouted, numNFs - 1); // Must Route Exactly |F-1| virtual
		                                      // links

		// Prevent loops in the virtual graph
		for (int i = 0; i < E.size(); i++) {
			for (int j = 0; j < E.size(); j++) {
				if (i == j)
					continue;
				else {
					if (E.get(i).getSource() == E.get(j).getDestination())
						if (E.get(i).getDestination() == E.get(j).getSource())
							model.addLe(model.sum(z[i], z[j]), 1, "BreakLoopsVG_" + i + j);
				}
			}
		}

		for (int i = 0; i < numNFs; i++) {
			IloNumExpr frst = model.numExpr();
			IloNumExpr last = model.numExpr();
			IloNumExpr sumO = model.numExpr();
			IloNumExpr sumT = model.numExpr();
			for (int k = 0; k < E.size(); k++) {
				if (E.get(k).getDestination() == f.getChain().get(i))
					frst = model.sum(frst, z[k]);

				if (E.get(k).getSource() == f.getChain().get(i))
					last = model.sum(last, z[k]);
			}
			for (int j = 0; j < numSubstrateNodes; j++) {
				model.addLe(o[i][j], theta[i][j], "FindFrstNF" + i + j);
				model.addLe(t[i][j], theta[i][j], "FindLastNF" + i + j);
				sumO = model.sum(sumO, o[i][j]);
				sumT = model.sum(sumT, t[i][j]);
			}
			model.addEq(sumO, model.diff(1, frst));
			model.addEq(sumT, model.diff(1, last));
		}

		// Constraint #6 - Link Routing Constraint
		for (int e = 0; e < E.size(); e++) {
			for (int i = 0; i < numSubstrateNodes; i++) {
				IloNumExpr e1 = model.numExpr();
				IloNumExpr e2 = model.numExpr();

				for (int j = 0; j < numSubstrateNodes; j++) {
					if (isSubstrateLink[i][j] == 1) {
						e1 = model.sum(e1, w[e][i][j]);
						e2 = model.sum(e2, w[e][j][i]);
						model.addLe(model.sum(w[e][i][j], w[e][j][i]), 1); // Prevent Loop
					}
				}
				model.addEq(model.diff(e1, e2), model.diff(x[e][i], y[e][i]),
				    "Routing Constraint " + e);
			}
		}

		// Route from First NF to Ingress Node
		for (int j = 0; j < numSubstrateNodes; j++) {
			IloNumExpr oSum = model.numExpr();

			for (int i = 0; i < f.getChain().size(); i++) {
				oSum = model.sum(oSum, o[i][j]);
			}
			IloNumExpr e1 = model.numExpr();
			IloNumExpr e2 = model.numExpr();

			for (int k = 0; k < numSubstrateNodes; k++) {
				if (isSubstrateLink[j][k] == 1) {
					e1 = model.sum(e1, w[E.size()][j][k]);
					e2 = model.sum(e2, w[E.size()][k][j]);
					model.addLe(model.sum(w[E.size()][j][k], w[E.size()][k][j]), 1); // Prevent
					                                                                 // Loop
				}
			}
			if (j == f.getSource())
				model.addEq(model.diff(e1, e2), 1, "Routing from Ingress" + j);
			else
				model.addEq(model.diff(e1, e2), model.prod(-1, oSum),
				    "Routing to First NF" + j);
		}

		// Route from Last NF to Egress Node
		for (int j = 0; j < numSubstrateNodes; j++) {
			IloNumExpr tSum = model.numExpr();

			for (int i = 0; i < f.getChain().size(); i++) {
				tSum = model.sum(tSum, t[i][j]);
			}
			IloNumExpr e1 = model.numExpr();
			IloNumExpr e2 = model.numExpr();

			for (int k = 0; k < numSubstrateNodes; k++) {
				if (isSubstrateLink[j][k] == 1) {
					e1 = model.sum(e1, w[E.size() + 1][j][k]);
					e2 = model.sum(e2, w[E.size() + 1][k][j]);
					model.addLe(model.sum(w[E.size() + 1][j][k], w[E.size() + 1][k][j]),
					    1); // Prevent Loop
				}
			}
			if (j == f.getDestination())
				model.addEq(model.diff(e1, e2), -1, "Routing to Egg" + j);
			else
				model.addEq(model.diff(e1, e2), model.prod(1, tSum),
				    "Routing from LastNF" + j);
		}

		// Constraints #7 & #8 - Any VNF type can have a single v. Link originated
		// from it or destined to it
		for (int i = 0; i < numNFs; i++) {
			IloNumExpr ingE = model.numExpr();
			IloNumExpr eggE = model.numExpr();
			for (int j = 0; j < E.size(); j++) {
				int sourceNF = E.get(j).getSource();
				int destinationNF = E.get(j).getDestination();

				if (f.getChain().get(i) == sourceNF)
					ingE = model.sum(ingE, z[j]);

				if (f.getChain().get(i) == destinationNF)
					eggE = model.sum(eggE, z[j]);
			}
			model.addLe(ingE, 1, "A single VLink originating from NF" + i);
			model.addLe(eggE, 1, "A single VLink destined to NF" + i);
		}

		// Constraint # 9 - Internal Switching Constraint
		for (int i = 0; i < numSubstrateNodes; i++) {
			IloNumExpr e = model.numExpr();
			for (int j = 0; j < E.size(); j++) {
				model.addLe(q[j][i], x[j][i]);
				model.addLe(q[j][i], y[j][i]);
				model.addGe(q[j][i], model.diff(model.sum(x[j][i], y[j][i]), 1));
				e = model.sum(e, model.prod(q[j][i], f.getBw()));
			}
			model.addLe(e, G.getInterNodeSwitchingCap()[i],
			    "InternalSwitchingCapacity_" + i);
		}

		// Constraint # 10 - Link Capacity Constraint
		for (int j = 0; j < numSubstrateNodes; j++) {
			for (int k = j; k < numSubstrateNodes; k++) {
				if (isSubstrateLink[j][k] == 0)
					continue;

				IloNumExpr e = model.numExpr();
				for (int i = 0; i < w.length; i++) {
					e = model.sum(e,
					    model.prod(model.sum(w[i][j][k], w[i][k][j]), f.getBw()));
				}
				model.addLe(e, G.getBW(j, k), "LinkCapacity" + j + k);
			}
		}

		// Constraint # 11 - Indicate the order of NFs in the chain
		for (int i = 0; i < numNFs; i++) {
			for (int j = 0; j < numNFs; j++) {
				int index = getVLinkIndex(f.getChain().get(i), f.getChain().get(j), E);

				if (j != i) {
					for (int k = 0; k < numNFs; k++) {
						if ((k != j) && (k != i)) {
							// expr = model.sum(expr,delta[i][k]);
							model.addLe(gamma[i][k][j], delta[i][k]);
							model.addLe(gamma[i][k][j], delta[k][j]);
							model.addGe(gamma[i][k][j],
							    model.diff(model.sum(delta[i][k], delta[k][j]), 1));
							// expr = model.sum(expr,gamma[i][k][j]);
							if (index == -1)
								model.addGe(delta[i][j], gamma[i][k][j]);
							else
								model.addGe(delta[i][j], model.sum(z[index], gamma[i][k][j]));
						}
					}
				}
			}
		}
		// Constraint # 13 - Do not violate any invariants
		for (int i = 0; i < numNFs; i++) {
			for (int j = 0; j < numNFs; j++) {
				model.addLe(delta[i][j], Omega[i][j]);
			}
		}
		return model;
	}

	public int getIndexNF(Flow f, int type) {
		int index = -1;
		for (int i = 0; i < f.getChain().size(); i++) {
			if (f.getChain().get(i) == type)
				index = i;
		}
		return index;
	}

	public int getVLinkIndex(int srcType, int dstType, ArrayList<Tuple> E) {

		for (int i = 0; i < E.size(); i++) {
			if (E.get(i).getSource() == srcType
			    && E.get(i).getDestination() == dstType)
				return i;
		}
		return -1;
	}

}
