local myStudents = {"Joe", "Jean", "Fred", "Cindy", "Mary"}

table.insert(myStudents, 2, "Guilherme")
print(table.concat(myStudents, ", "))
table.insert(myStudents, "Luciana")
print(table.concat(myStudents, ", "))

table.remove(myStudents, 2)
print(table.concat(myStudents, ", "))

-- Sorting
local function compareDecrising(a, b)
    return a > b
end
table.sort(myStudents, compareDecrising)
print(table.concat(myStudents, ", "))

table.sort(myStudents)
print(table.concat(myStudents, ", "))

local customer = {}
customer.name = "Joe"
customer.age = 33
customer.address = "123 Main St."

for k, v in pairs(customer) do
    print(k, v)
end
