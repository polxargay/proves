struct Nodes
    id::Int64
    ack::Any
end


function prov(num_nodes::Int64)
    no = Nodes[2]
    #size_t *ptr = malloc(num_nodes * sizeof(size_t))
    #=for x in 1:num_nodes
        #prt[x].id = 1
        #prt[x].ack = "ACK"
        no[x].id = 1
        no[x].ack = "ACK"
    end=#
    #=for x in 1:num_nodes
        no[x].id = 1
        #push!(no,(1,"ACK"))
        #println(no)
    end
    println(no)=#
end
prov(2)
