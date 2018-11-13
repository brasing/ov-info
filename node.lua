gl.setup(NATIVE_WIDTH, NATIVE_HEIGHT)

local font = resource.load_font "BebasKai.ttf"
local text = "Hello World"
local white = resource.load_image("white.png")
local light_grey = resource.load_image("light_grey.png")

local row_height = 180

util.json_watch("config.json", function(config)
    -- called each time the configuration is changed. 'config'
    -- contains new current configuration values set by the user.

    text = config.text -- assign configuration 'text' value to 'text' variable
end)

function node.render()
    gl.clear(0,0,0,1)

    for i=0, HEIGHT - row_height, row_height do
        -- if i % (row_height * 2) == then
            white:draw(0, i, WIDTH, i + row_height)
        -- else
            -- light_grey:draw(0, i, WIDTH, i + row_height)
        -- end
    end

    font:write(250, 300, text, 72, 0,0,1,1) -- use the CONFIG value
end