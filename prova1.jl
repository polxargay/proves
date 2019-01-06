function blocA(x)
    #println(x)
    y = "ACK"
    return y
end

function blocB(x)
    println(x)
end

function server(A,B)
    blocA(A)
    blocB(B)
    y="ACK"
    println(bloc(A))
end

server(30,40)
