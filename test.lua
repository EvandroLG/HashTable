local test = require 'simple_test'
local HashTable = require 'hash_table'

test('hash', function(a)
  local table = HashTable()
  table.set('name', 'Evandro')
  table.set('age', 34)

  a.equal(table.get('name'), 'Evandro')
  a.equal(table.get('age'), 34)
end)
