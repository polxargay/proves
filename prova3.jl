quadratic(a, sqr_term, b) = (-b + sqr_term) / 2a

# calculates x for 0 = a*x^2+b*x+c, arguments types can be defined in function definitions
function quadratic2(a::Float64, b::Float64, c::Float64)
    sqr_term = sqrt(b^2-4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)
    return r1, r2
end

function main(a::Float64, b::Float64, c::Float64)
    quad1, quad2 = quadratic2(a,b,c)

    println("result 1: ", quad1)
    println("result 2: ", quad2)
end
main(2.0, -2.0, -12.0)
