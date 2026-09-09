VERSION = "1.0.0"

local micro = import("micro")
local config = import("micro/config")


function init()
    config.MakeCommand("ruffjump", ruffjump, config.NoComplete)
end

function ruffjump()
    micro.InfoBar():Message("TESTING")
end
