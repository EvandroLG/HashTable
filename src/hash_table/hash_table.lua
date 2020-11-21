local utils = require('hash_table.utils')

function HashTable()
  local size = 1000
  local buckets = utils.table_init(size, nil)

  return {
    set = function(key, value)
      local hash_key = utils.hashify(key)
      buckets[hash_key] = value
    end,

    get = function(key)
      local hash_key = utils.hashify(key)
      return buckets[hash_key]
    end,
  }
end

return HashTable
