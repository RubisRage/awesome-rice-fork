local config = require("config")

local services = {
    screenshot = config.features.screenshot_tools and require("services.screenshot") or nil,
    volume = require("services.volume"),
    weather = config.features.weather_widget and require("services.weather") or nil,
    network = require("services.network"),
    torrent = config.features.torrent_widget and require("services.torrent") or nil,
    wallpaper = config.features.wallpaper_menu and require("services.wallpaper") or nil,
}

for _, service in pairs(services) do
    if type(service.watch) == "function" then
        service.watch()
    end
end

return services
