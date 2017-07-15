class Layout
  attr_accessor :grid, :flag_positions

  def initialize(n,flag_positions)
    @grid = build_grid(n)
    @flag_positions = flag_positions
  end

  def build_grid(n)
    grid =[]
    for i in 1..n
      row = []
      for j in 1..n
        row.push("x")
      end
      grid.push(row)
    end
    grid
  end

end

p Layout.new(4, [[0,1],[1,1],[2,3]] )