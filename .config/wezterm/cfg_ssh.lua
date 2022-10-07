
local gssh_loaded, gssh = pcall(require, 'cfg_gssh')

ssh = {}

if gssh_loaded then
    ssh = gssh
end

return ssh