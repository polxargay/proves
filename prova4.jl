struct Foo
  bar::Int32
  baz::Int32
end

foo = Foo(1,2)
println(foo)
foo2=foo
println(foo2)
foo2.bar=3
println(foo2)
