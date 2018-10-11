gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local font = resource.load_font "BebasKai.ttf"
local text = "Hello World"

util.json_watch("config.json", function(config)
    -- called each time the configuration is changed. 'config'
    -- contains new current configuration values set by the user.

    text = config.text -- assign configuration 'text' value to 'text' variable
end)

function node.render()
    gl.clear(0,0,0,1)
    font:write(250, 300, text, 72, 0.5,0.5,0.5,1) -- use the CONFIG value
end