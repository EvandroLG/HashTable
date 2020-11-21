function table_init(size, value)
  local output = {}

  for i=1, size do
    output[i] = value
  end

  return output
end

function hashify(key)
  local hash_key = 0

  for i=1, #key do
    hash_key = hash_key + string.byte(key, i)
  end

  return hash_key
end

return {
  table_init = table_init,
  hashify = hashify
}
