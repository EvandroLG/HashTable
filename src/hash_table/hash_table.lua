local utils = require('hash_table.utils')

function HashTable()
  local size = 1000
  local buckets = utils.table_init(size, {})

  return {
    set = function(key, value)
      local hash_key = utils.hashify(key, size)
      local item = buckets[hash_key]
      local found = utils.table_find(item, function(element)
        return element[1] == key
      end)

      if found then
        found[2] = value
      else
        table.insert(item, { key, value })
      end
    end,

    get = function(key)
      local hash_key = utils.hashify(key, size)
      local item = buckets[hash_key]
      local found = utils.table_find(item, function(element)
        return element[1] == key
      end)

      if found then
        return found[2]
      end
    end,
  }
end

return HashTable
