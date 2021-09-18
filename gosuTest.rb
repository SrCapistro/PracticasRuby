require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Lorito pepe"
    @player = Player.new(self)
  end
  
  def draw
    @player.draw
  end
  
  def update
    if button_down? Gosu::KbRight
      @player.move_right
    elsif button_down? Gosu::KbLeft
      @player.move_left
    elsif button_down? Gosu::KbUp
      @player.move_up
    elsif button_down? Gosu::KbDown
      @player.move_down
    end
  end
end

class Player
  def initialize(window)
    @x = 0
    @y = 0
    @image = Gosu::Image.new(window,"pepe.png", true)
  end
  def draw()
    @image.draw(@x,@y,0)
  end
  def move_up()
    @y = @y -1
  end
  def move_down()
    @y = @y +1
  end
  def move_right()
    @x = @x +1
  end
  def move_left()
    @x = @x -1
  end
end

window = GameWindow.new
window.show