struct Nodes_1
    id
    ack
end
#create an empty array to save all the nodes created
nodes_array = []

#create the constructor for the nodes
Nodes_1(x) = Nodes_1(x,"hola")

#fill the array with all the necessary nodes
for i in 1:10
    push!(nodes_array,Nodes_1(i))
end
println(nodes_array[1])
