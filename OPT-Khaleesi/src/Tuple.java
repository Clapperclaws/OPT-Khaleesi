
/* Tuple represents a link; i.e., the index of the source node and destination node of a link*/
public class Tuple {
	
	private int source; // Index of the link's source node
	private int destination; //Index of the link's destination node
	

	//Default Constructor
	public Tuple(){
		source = -1;
		destination = -1;
	}
	
	//Initializing Constructor
	public Tuple(int source, int destination){
		this.source = source;
		this.destination = destination;
	}

	//Return the index of the source node
	public int getSource() {
		return source;
	}
	
	//Set the index of the source node
	public void setSource(int source) {
		this.source = source;
	}
	
	//Return the index of the destination node
	public int getDestination() {
		return destination;
	}
	
	//Set the index of the destination node
	public void setDestination(int destination) {
		this.destination = destination;
	}
	
	//Print the tuple
	public String toString(){
		return "("+source+","+destination+")";
	}
	
	public int compareTo(Tuple t) {
		if (source != t.source) return source - t.source;
		return destination - t.destination;
	}
}
