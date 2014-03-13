-- shariki

-- Use this function to perform your initial setup
function setup()
    print("Hello World!")
    print("Ура, шарики! cool шарики")    
    balloons = {}
    count = 0
    
    parameter.watch("#balloons")
    parameter.integer("maxBalloons", 1, 100, 30)
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)

    -- Do your drawing here
    for i,balloon in ipairs(balloons) do
        balloon:draw()
    end
end

-- create a color with specified
-- degree of randomness
function randomColor(spec)
    local r,g,b,a = 0, 0, 0, 255
    spec = spec or ""
    for c in spec:gmatch("%a") do
        if c == "r" then
            r = math.random(0, 255)
        elseif c == "g" then
            g = math.random(0, 255)
        elseif c == "b" then
            b = math.random(0, 255)
        elseif c == "a" then
            a = math.random(0, 255)
        end
    end
    return color(r, g, b, a)
end

function touched(touch)
    --if touch.state ~= BEGAN then
    --    return
    --end
    
    -- create a new balloon 
    radius = math.random(40, 200)
    strokeW = math.random(1, 20)
    mainColor = randomColor("rgba")
    strokeColor = randomColor("a")
    balloon = Balloon(touch.x, touch.y, mainColor, strokeColor, strokeW, radius)
    
    -- limit number of balloons   
    count = count >= maxBalloons and 1 or count + 1
    balloons[count] = balloon   
end

