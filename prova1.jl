function blocA(x)
    println(x)
end

function blocB(x)
    println(x)
end

function server(A,B)
    blocA(A)
    blocB(B)
end

server(30,40)
