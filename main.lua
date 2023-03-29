WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720


function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
       
        fullscreen = false,
        resizable = false,
        vsync = true

        })

    new_font = love.graphics.newFont('font.ttf', 72 )
    love.graphics.setFont(new_font)

end

function love.keypressed(key)
    if key == 'x' then
        love.event.quit()
    end

end


function love.draw()
    love.graphics.clear(70/255, 0/255, 255/255, 255/255)
    love.graphics.setColor(255/255, 255/255, 255/255, 255/255)
    
    love.graphics.printf(
        'My first game',
         0,
         WINDOW_HEIGHT/2 - 200,
         WINDOW_WIDTH,
         'center'
    )

    love.graphics.setColor(200/255, 0/255, 200/255, 255/255)
    love.graphics.rectangle('fill', 0, WINDOW_HEIGHT/2, WINDOW_WIDTH,  10)
    
    love.graphics.setColor(255/255, 240/255, 0/255, 255/255)
    love.graphics.rectangle('fill', 100, WINDOW_HEIGHT/2 + 100, 200,  200)
    love.graphics.rectangle('fill', 1000, WINDOW_HEIGHT/2 + 100, 200,  200)

end