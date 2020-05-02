def foo
  p block_given?
end

foo

foo do
end
