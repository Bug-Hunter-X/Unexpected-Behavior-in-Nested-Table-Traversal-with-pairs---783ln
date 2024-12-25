local function foo(t)
  local function visit(t, path)
    for k, v in pairs(t) do
      local newPath = path .. "." .. tostring(k)
      if type(v) == "table" then
        visit(v, newPath)
      else
        print(newPath .. " = " .. tostring(v))
      end
    end
  end
  visit(t, "")
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)
-- Accessing nested values directly after the traversal:
print("Accessing directly: t.b.d.e = ", t.b.d.e)