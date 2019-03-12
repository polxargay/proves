mutable struct Nodes_1
    id
    ack
end
nodes = []
#println(x)
for i in 1:10
    push!(nodes,i)
end
println(nodes)
#node = Nodes_1([1,2],"Hello")
#=node = Nodes_1(1,"ACK")
println(typeof(node))
fieldnames(typeof(node))
node.id
node.ack

append!(node.id, 4)=#
