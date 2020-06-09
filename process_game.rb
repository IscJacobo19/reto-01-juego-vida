require_relative 'cell.rb'
require_relative 'rules.rb'
class Process_game
  #Metodo para hacer el proceso del juego de la vida, usando un arreglo definido por el programador
  def gameprocess(board)
    cell_Board = Cell.new
    cell_Board.show_board(board)
    board_new = cell_Board.run_iteration(board)
    cell_Board.show_board(board_new)
    (0..5).each do |iteration|
      board_new = cell_Board.run_iteration(board_new)
      cell_Board.show_board(board_new)
    end
    return board_new
  end
  #Metodo para hacer el proceso del juego de la vida, usando un arreglo con valor aleatorio
  def gameprocessAleat(size_board)
    cell_Board = Cell.new
    board= cell_Board.bouild_board(size_board)
    cell_Board.show_board(board)
    board_new = cell_Board.run_iterationAleat(board)
    cell_Board.show_board(board_new)
    (0..5).each do |iteration|
      board_new = cell_Board.run_iterationAleat(board_new)
      cell_Board.show_board(board_new)
    end
  end
end
