function table_init(size, value)
  local output = {}

  for i=1, size do
    output[i] = value
  end

  return output
end

function table_find(array, callback)
  for i=1, #array do
    local item = array[i]

    if callback(item) then
      return item
    end
  end
end

function hashify(key, size)
  local hash_key = 0

  for i=1, #key do
    hash_key = hash_key + string.byte(key, i)
  end

  return (hash_key % size)
end

return {
  table_init = table_init,
  table_find = table_find,
  hashify = hashify
}
