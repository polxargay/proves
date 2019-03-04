mutable struct Nodes_1
    id
    ack
end

node = Nodes_1([1,2],"Hello")
typeof(node)
fieldnames(typeof(node))
node.id
node.ack

append!(node.id, 4)
