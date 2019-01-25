struct ServerA
    id::Int32
    name::Int32
end

servidorA = ServerA(3,4)
println(ServerA(3,4))
servidorA2= servidorA
servidorA2.id=1
println(servidorA)
println(servidorA2)
