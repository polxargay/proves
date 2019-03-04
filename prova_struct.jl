struct Nodes
    id::Int64
    ack::Any
end

node = Nodes(1,"Hello")
typeof(node)
fieldnames(typeof(node))
