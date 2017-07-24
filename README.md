# OPT-Khaleesi
1. ip.topo is the Substrate Network File
- First line represents <count of nodes, count of links>
- List of Nodes; every row of nodes contains <Node Index, Node Capacity, Internal Switching Capacity> 
- List of Links; every row of links contains <Link Index, Index of Origin Node, Index of Destination Node, Bw Capacity>

2. mb-demands represents the Middlebox Specs
- First line represents count of middleboxes
- List of middleboxes; every row contains <Mb Type, middlebox resource demands (in terms of CPU)>

3. mb-rcm is the re-order compatibility file
- Every row represents Mb type, followed by the list of Mb types this middlebox is re-order compatible with.

4. vn.topo represents the Flow; 
- It consists of <flow index, index of ingress node, index of egress node, bw demand, list of middlebox types that describe the chain>
