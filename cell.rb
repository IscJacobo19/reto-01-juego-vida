class Cell
  #Metodo para darle valores al arreglo aleatoriamente
  def bouild_board(size_baord)
    @size_baord=size_baord
    board = []
    (1..size_baord).each do |row|
      columns = []
      (1..size_baord).each do |column|
        cell = rand(2)
        columns.push cell
      end
      board.push columns
    end
    return board
  end
  #Metodo para mostrar tablero 
  def show_board(board)
    (0..board.length-1).each do |row|
    puts
      (0..board.length-1).each do |column|
	    unless board[row][column] == 0
	      print " ■ " #Con codigo ascii inserto la figura
		else
		  print " ° "
		end
	  end
    end
    puts
  end
  #Metodo para correr una iteracion en un arreglo definifo por el programador
  def run_iteration(board)
    rule = Rules.new
    board_new = [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]]
    (0..board.length-1).each do |row|
      (0..board.length-1).each do |column|
        board_new[row][column] = rule.apply_rule(board,row,column)
      end
    end      
    return board_new
  end
  #Metodo para correr una iteracion en un arreglo aleatorio
  def run_iterationAleat(board)
    rule = Rules.new
    board_new = board
    (0..board.length-1).each do |row|
      (0..board.length-1).each do |column|
        board_new[row][column] = rule.apply_rule(board,row,column)
      end
    end      
    return board_new
  end
end
