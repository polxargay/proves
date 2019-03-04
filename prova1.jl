struct Nodes
    id::Int64
    ack::Any
end


function prov(num_nodes::Int64)
no = Nodes[]
    for x in 1:num_nodes
        no[x] = Nodes(x,"ACK")
        #push!(no,(1,"ACK"))
        #println(no)
    end
    println(no)
end
prov(2)
