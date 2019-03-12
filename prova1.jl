struct Nodes
    id::Int64
    ack::Any
end


function prov(num_nodes::Int64)
    #Crear un vector amb el número de nodes que necessitem
    nodes = Array(Int64,1)
    println(nodes)
    #=for x in 1:num_nodes
        push!(nodes,x)
    end
    println(nodes[])

    #Crear el vector de nodes com un vector d'structs Nodes
    for x in 1:num_nodes
        nodes[i] = Nodes(i,"ACK")
    end=#
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
