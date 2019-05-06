mutable struct EAXON
    id
    group
    message
    EAXON(x,y) = new(x,y,"ACK")
end

#Create an empty array of EAXON struct
eaxons = []

#Assigno ID a cada un dels eAXONs
function create_eaxons(neaxon)
    for x in 1:neaxon
        #al final de l'array eaxons[], afegeixo els eaxons creats
        push!(eaxons,EAXON(x,0))
    end
    return eaxons
end

#assignar un grup a un dels eAXONS
function assign_group(ideaxon)
    idgroup = parse(Int,readline())#indico el grup que vol
    #busco l'eAXON en qüestió en funció de l'ID
    for x in 1:ideaxon
        if x == ideaxon
            eaxons[ideaxon].group = idgroup #assigno el valor del grup
        end
    end
    #println("Ara hi ha els següents eaxons ",eaxons)
    return idgroup
end
