WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

CHANGE_POSITION = 200
rec_coordinate_x = 0
rec_coordinate_y = 0
points = 0


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
    if key == 'escape' then
        love.event.quit()
    end
   
   
end

function love.update(dt)
    if love.keyboard.isDown('d') then
        rec_coordinate_x = math.min(WINDOW_WIDTH - 200, rec_coordinate_x + CHANGE_POSITION * dt)
    end

    if love.keyboard.isDown('a') then
        rec_coordinate_x = math.max(0, rec_coordinate_x - CHANGE_POSITION * dt)
 
    end

    if love.keyboard.isDown('w') then
        rec_coordinate_y = math.max(0, rec_coordinate_y - CHANGE_POSITION * dt)
   
    end

    if love.keyboard.isDown('s') then
        rec_coordinate_y = math.min(WINDOW_HEIGHT - 200, rec_coordinate_y + CHANGE_POSITION * dt)
    
    end

    if love.keyboard.isDown('space') then
        points = points + 1 
    end

    if love.keyboard.isDown('z') then
        points = 0
    end



end

function love.draw()
   love.graphics.clear(70/255, 0/255, 255/255, 255/255)

    love.graphics.printf(
         points,
         0,
         WINDOW_HEIGHT/2,
         WINDOW_WIDTH,
         'center'

    )
    

    love.graphics.setColor(200/255, 0/255, 200/255, 255/255)
    love.graphics.rectangle('fill', rec_coordinate_x, rec_coordinate_y, 200,  200)
    
end
