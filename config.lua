local config = require("lapis.config")

config("development", {
  port = 8083
})

config("production", {
  port = 8083,
  code_cache = "on"
})