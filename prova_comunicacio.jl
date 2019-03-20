struct EAXON
    id
    message
    EAXON(x) = new(x,"ACK")
end

#Create an empty array of EAXON struct
eaxons = []

function main_function()
    #println("hello")
    opc = -1
    while opc!=5
        while (opc<1||opc>5)
            println("\n**********************************************************")
            println("\nSimulador per a microcontroladors injectables\n")
            println("**********************************************************\n")
            print("\n1 - Definir número d'eAXONs\n2 - Definir grup d'un eAXON\n3 - Comunicar-se amb un eAXON\n4 - Simular delay d'n transmissions\n5 - Sortir\nTria una opció: ")
            opc = parse(Int,readline())
            if (opc == 1)
                neaxon = num_eaxons()
                println("\nHas creat ",neaxon," eaxons\n") #prova de debug
                eaxons_array = create_eaxons(neaxon)
                println("\nS'han creat els següents eAXONs: ",eaxons_array)
                return main_function()
            elseif (opc == 5)
                #println("\n")
            else
                opc = -1
            end
        end
    end
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

function nueaxons(neaxons)
    println("neaxons")
end
