
--[[---------------------------------------]]--
--      impatient - improve startup time     --
--               Author: elai                --
--              License: GPLv3               --
--[[---------------------------------------]]--

-- Load impatient with a protected call
local status_ok, impatient = pcall(require, "impatient")
if not status_ok then
    return
end

-- View profiling data
impatient.enable_profile()
