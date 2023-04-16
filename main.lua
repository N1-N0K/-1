Class = require 'class'

-- gamemode: play, pause
WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720
circle_x = WINDOW_WIDTH/2
circle_Y = WINDOW_HEIGHT/2
move = 200
t = true

require 'player'

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
       
        fullscreen = false,
        resizable = false,
        vsync = true

        })

        player1 = player(10, 100, 100, 100)
        player2 = player(1100, 100, 100, 100)

    new_font = love.graphics.newFont('font.ttf', 72 )
    love.graphics.setFont(new_font)

end

function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
    if key == 'space' then
      player1.x = math.min()
    end

end

function love.update(dt)
    if (t == true) then
        circle_x = math.max(20, circle_x - move *dt)
    end
    
    if circle_x == 20 then
        t = false
    end

    if t == false then
        circle_x = math.min(WINDOW_WIDTH - 20, circle_x + move *dt)
    end

    if circle_x == WINDOW_WIDTH - 20 then
        t = true
    end


    if love.keyboard.isDown('d') then
        player1.x = math.min(WINDOW_WIDTH - 100,  player1.x  + move * dt)
    end

    if love.keyboard.isDown('a') then
        player1.x = math.max(0, player1.x - move * dt)
 
    end

    if love.keyboard.isDown('w') then
       player1.y = math.max(0, player1.y - move * dt)
   
    end

    if love.keyboard.isDown('s') then
       player1.y = math.min(WINDOW_HEIGHT - 100, player1.y + move * dt)
    
    end


    if love.keyboard.isDown('right') then
        player2.x = math.min(WINDOW_WIDTH - 100,  player2.x  + move * dt)
    end

    if love.keyboard.isDown('left') then
        player2.x = math.max(0, player2.x - move * dt)
 
    end

    if love.keyboard.isDown('up') then
       player2.y = math.max(0, player2.y - move * dt)
   
    end

    if love.keyboard.isDown('down') then
       player2.y = math.min(WINDOW_HEIGHT - 100, player2.y + move * dt)
    
    end

end


function love.draw()
   love.graphics.clear(70/255, 0/255, 255/255, 255/255)

   player1:render()
   player2:render()

   love.graphics.circle("fill", circle_x, circle_Y, 20)
end
