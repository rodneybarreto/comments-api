local lapis = require("lapis")
local config = require("lapis.config").get()

local headers = { 
  ["Access-Control-Allow-Origin"] = "*",
  ["Access-Control-Allow-Methods"] = "HEAD,GET,PUT,POST,PATCH,DELETE,OPTIONS"
}

local findCommentsByProductId = function(productId)
  local comments = {
    { productId = 1, comment = "Excelente para transportar meu cão. Estou satisfeito!", personName = "Bob" },
    { productId = 1, comment = "Essa caixa de transporte é bastante resistente. Vale a pena!!!", personName = "Teddy" },
    { productId = 2, comment = "Meu gatinho adorou! Vou comprar outras cores...", personName = "Bia" },
    { productId = 2, comment = "Preço muito bom.", personName = "Jullie" },
    { productId = 3, comment = "O tecido dessa caminha é muito macio, acho que vou dormir nela kkkk.", personName = "Jessy" }
  }
  local arr = {}
  
  for k, v in pairs(comments) do
    if v.productId == tonumber(productId) then
      table.insert(arr, v)
    end
  end
  return arr
end

local app = lapis.Application()

app:get("/comments/products/:id", function(self)
  local comments = findCommentsByProductId(self.params.id)
  return {
    headers = headers,
    json = comments
  }
end)

return app
