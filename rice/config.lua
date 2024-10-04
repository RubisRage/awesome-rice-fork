-- DEPENDENCIES (see below)

local core = require("core")


local config = {}

---@class Features
---@field screenshot_tools boolean?
---@field magnifier_tools boolean?
---@field torrent_widget boolean?
---@field weather_widget boolean?
---@field redshift_widget boolean?
---@field wallpaper_menu boolean?
config.features = {
    screenshot_tools = false,
    magnifier_tools = false,
    torrent_widget = false,
    weather_widget = false,
    redshift_widget = false,
    wallpaper_menu = true,
}

config.wm = {
    name = "awesome",
}

local terminal = "kitty"
local terminal_execute = terminal .. " "

config.apps = {
    calculator = "speedcrunch",
    mixer = terminal_execute .. "pulsemixer",
    bluetooth_control = terminal_execute .. "bluetoothctl",
    shell = "bash",
    terminal = terminal,
    editor = terminal_execute .. "nvim",
    browser = "firefox",
    private_browser = "firefox --private-window",
    file_manager = "dolphin",
    terminal_file_manager = terminal_execute .. "ranger",
}

config.actions = {
    qr_code_clipboard = "qrclip",
    show_launcher = "rofi -show",
    show_emoji_picker = core.path.config .. "/rofi/emoji-run.sh",
}

config.commands = {}

function config.commands.open(path)
    return "xdg-open \"" .. path .. "\""
end


local awful_utils = require("awful.util")
awful_utils.shell = config.apps.shell

return config
