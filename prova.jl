struct EAXON
    id
    message
    EAXON(x) = new(x,"ACK")
end

#Create an empty array of EAXON struct
eaxons = []

function main_function()

    neaxon = num_eaxons()
    println("\nHas creat ",neaxon," eaxons\n") #prova de debug
    eaxons_array = create_eaxons(neaxon)
    println("\nS'han creat els següents eAXONs: ",eaxons_array)
    println(eaxons_array[1].id)    
end

#Creo el número d'eAXONs necessaris
function num_eaxons()
    print("Quants eAXONs vols crear ")
    #la funció readline() retorna un String, per tant cal parsejar-lo com a Int
    neaxon = parse(Int,readline())
    return neaxon
end

#Assigno ID a cada un dels eAXONs
function create_eaxons(neaxon)
    for x in 1:neaxon
        push!(eaxons,EAXON(x))
    end
    return eaxons
end
