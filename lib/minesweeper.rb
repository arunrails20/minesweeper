require_relative "minesweeper/version"
require_relative "layout"
require_relative "minefield"

 
layout = Layout.new(3, [[0,0],[1,2],[2,1]] )

#minefield = Minefield.new({selection: "open", position: [0,3]}, layout)
minefield = Minefield.new([{selection: "open", position: [0,1]} , 
                           {selection: "open", position: [0,2]},
                           {selection: "open", position: [1,0]},
                           {selection: "open", position: [1,1]},
                           {selection: "open", position: [2,0]},
                           {selection: "open", position: [2,2]},
                           {selection: "flag", position: [0,0]}, 
                           {selection: "flag", position: [1,2]}, 
                           {selection: "flag", position: [2,1]},], 
                          layout)

p minefield.display
