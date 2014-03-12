Balloon = class()

function Balloon:init(x, y, mainColor, strokeColor, strokeW, radius)
    -- you can accept and set parameters here
    self.x = x
    self.y = y
    self.mainColor = mainColor
    self.strokeColor = strokeColor
    self.strokeW = strokeW
    self.radius = radius
end

function Balloon:draw()
    -- Codea does not automatically call this method
    stroke(self.strokeColor)
    fill(self.mainColor)
    strokeWidth(self.strokeW)
    ellipse(self.x, self.y, self.radius)
end

function Balloon:touched(touch)
    -- Codea does not automatically call this method
end
