struct EAXON
    id
    message
    EAXON(x) = new(x,"ACK")
end

#Create an empty array of EAXON struct
eaxons = []

function main_function()
    #println("hello")
    num_eaxon = num_eaxons()
    println("Vols crear ",num_eaxon," eaxons") #prova de debug
    eaxons_array = create_eaxons(num_eaxon)
    println(eaxons_array)
end

#Creo el número d'eAXONs necessaris
function num_eaxons()
    print("Quants eAXONs vols crear ")
    #la funció readline() retorna un String, per tant cal parsejar-lo com a Int
    num_eaxon = parse(Int,readline())
    return num_eaxon
end

#Assigno ID a cada un dels eAXONs
function create_eaxons(num_eaxon)
    for x in 1:num_eaxon
        push!(eaxons,EAXON(x))
    end
    return eaxons
end
