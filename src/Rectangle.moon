class Rectangle
	new: (x, y, width, height) =>
		@x = x
		@y = y
		@width = width
		@height = height
	draw: =>
		love.graphics.rectangle "fill", @x, @y, @width, @height