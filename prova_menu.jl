mutable struct EAXON
    id
    group
    message
    EAXON(x,y) = new(x,y,"ACK")
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
            elseif (opc == 2)
                print("A quin eAXON vols assignarli el grup? ")
                ideaxon = parse(Int, readline())
                idgroup = assign_group(ideaxon)
                println("A l'eAXON ", ideaxon, " se li ha assignat el següent grup ", idgroup)
                return main_function()
            elseif (opc==3)
                print("Amb quin eAXON et vols comunicar? ")
                ideaxon = parse(Int,readline())
                print("Quantes simulacions vols fer? ")
                nsimulations = parse(Int, readline())
                for x in 1:nsimulations
                    message,ideaxon = communicate_eaxon(ideaxon)
                    println("eAXON with ID ", ideaxon, "answers with message: '",message,"'")
                end
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
        #al final de l'array eaxons[], afegeixo els eaxons creats
        push!(eaxons,EAXON(x,0))
    end
    return eaxons
end

#assignar un grup a un dels eAXONS
function assign_group(ideaxon)
    print("A quin grup el vols assignar? ")
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

#comunicar-se amb un eAXON
function communicate_eaxon(ideaxon)
#=demanar quantes simulacions es volen fer a cada un dels eAXONs (ex. enviar 1000
sol·licituds a cada un dels eAXONS)=#


######     INVESTIGAR COM POSAR UNA PROBABILITAT D'ERROR     ##########

    for x in 1:ideaxon
        if x == ideaxon
            eaxons[ideaxon].message = "missatge rebut"
            #println("eAXON with ID: ", eaxons[ideaxon].id, " answers with message: ",eaxons[ideaxon].message)
        end
    end
    return eaxons[ideaxon].message,ideaxon
end
