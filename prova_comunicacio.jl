struct EAXON
    id
    message
    EAXON(x) = new(x,"ACK")
end

function main_function()
    #println("hello")
    num_eaxon = num_eaxons()
    println("Vols crear",num_eaxon," eaxons")
    create_eaxons(num_eaxon)
end

#Create an empty array of EAXON struct
eaxons = []

#demano el número de eAXONs que vol crear
#=print("Quants eAXONs vols crear ");num_eaxon = parse(UInt8, readline())
println(num_eaxon)=#
#num_eaxon = 10

function num_eaxons()
    print("Quants eAXONs vols crear ")
    num_eaxon = parse(Int,readline())
    return num_eaxon
end

function create_eaxons(num_eaxon)
    for x in 1:num_eaxon
        push!(eaxons,EAXON(x))
    end
    println(eaxons)
end
