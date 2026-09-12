VERSION = "1.0.0"

local micro = import("micro")
local config = import("micro/config")


function init()
    config.MakeCommand("ruffjump", csvfmt, config.NoComplete)
end

-- usage: aligncsv [delimeter] [qualifier]
function csvfmt(bp, args)
    local buf = bp.Buf

    local delim = ','
    if args ~= nil and args[1] ~= nil and args[1] ~= '' then
        delim = args[1]
    end

    local qualifier = nil
    if args ~= nil and args[2] ~= nil and args[2] ~= '' then
        qualifier = args[2]
    end

    bp.Save()

    if buf.Path == nil or buf.Path == '' then
        micro.InfoBar():Error("aligncsv: save this buffer to a file first")
    end

    local cmd = string.format('align -f "%s" -o "%s" -s "%s"', buf.Path, buf.Path, delim)
    if qualifier ~= nil then
        cmd = cmd .. string.format(' -q "%s"', qualifier)
    end

    local _, err = shell.RunCommand(cmd)
    if err ~= nil then
        micro.InfoBar:Error("aligncsv: " .. tostring(err) .. " (is the align binary on your PATH?)")
        return
    end

    buf.ReOpen()
    micro.InfoBar():Message("aligncsv: aligned on '" .. delim .. "'")
end
