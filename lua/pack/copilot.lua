local G = require('G')
local M = {}

function M.config()
    G.g.copilot_no_tab_map = true
    G.map({ {'i', '<Tab>', 'copilot#Accept("<Tab>")', {script = true, silent = true, expr = true}} })
end

function M.setup()
    -- do nothing
end

return M
