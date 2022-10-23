class GraphNode
    def initialize(val)
        @val = val
        @neighbors = Array.new
    end

    def add_neighbor(node)
        @neighbors << node
    end

end


def bfs(starting_node, target)
    queue = [starting_node]
    visited = Array.new

    until queue.empty?
        node = queue.shift
        if !visited.include?(node)
            return node.val if node.val == target
            visited << node
            queue += node.neighbors
        end
    end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]