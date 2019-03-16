struct EAXON
    id
    message
    EAXON(x) = new(x,"ACK")
end

#Create an empty array of EAXON struct
eaxons = []

for x in 1:10
    push!(eaxons,EAXON(x))
end
println(eaxons)
