class Minefield

  attr_accessor :options, :layout

  FLAG = "flag"
  OPEN = "open"

  def initialize(options, layout)
    @options = options
    @layout = layout
  end

  def assign
    options.each do |option|
      if !has_flag_positions? option[:position] && is_open?(option[:selection])
       layout.grid[option[:position][0]][option[:position][1]] = "0"
      else
        layout.grid[option[:position][0]][option[:position][1]] = "F"
      end
    end
  end

  def mine_assign option
    layout.flag_positions.each do |position|
      layout.grid[option[0]][option[1]] = "M"
    end
  end

  def display
    options.each do |option|

      if has_flag_positions? option[:position] && is_open?(option[:selection])
        mine_assign option[:position]
        puts "Oops, you stepped on  a mine! Game over" 
      else
        assign
        puts "you continue the Game"
      end


      puts layout.grid
    end
  end

  def has_flag_positions?(position)
    layout.flag_positions.include?( position )
  end

  def is_flag? (selection)
    selection == FLAG
  end

  def is_open? selection
    selection == OPEN
  end

end

