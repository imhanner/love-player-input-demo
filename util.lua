function spaceship(lhs, rhs)
  if lhs and not rhs then
    return -1
  end

  if not lhs and rhs then
    return 1
  end

  return 0
end
