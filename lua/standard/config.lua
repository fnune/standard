local M = {}

local defaults = {}

M.opts = {}

---@param opts Options Set-up options
M.setup = function(opts)
  M.opts = vim.tbl_extend("force", defaults, opts or {})
end

return M
