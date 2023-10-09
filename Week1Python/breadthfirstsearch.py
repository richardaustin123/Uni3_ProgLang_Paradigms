def bfs(graph, node):
    visted = []
    queue = []

    visted.append(node)             # Add the root (top) node to the visted list
    queue.append(node)              # Add the root (top) node to the queue

    while queue:                    # Loop while the queue is not empty
        s = queue.pop(0)            # Remove the first element from the queue
        print(s, end = " ")         # Print the node

        for n in graph[s]:          # Iterate through the neighbours of the node (bottom left and right node connected to the current node)
            if n not in visted:     # If the neighbour has not been visted
                visted.append(n)    # Add the neighbour to the visted list
                queue.append(n)     # Add the neighbour to the queue

# Graph
#    A
#   / \
#  B   C
# / \   \
# D  E   F
graph = {
    'A': ['B', 'C'],
    'B': ['D', 'E'],
    'C': ['F'],
    'D': [],
    'E': ['F'],
    'F': []
}

