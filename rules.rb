class Rules
    #Metodo para las reglas del juego
    def apply_rule(board, row, column)
        number_neighbors = calculate_neighbors(row, column, board)
        if(board[row][column] == 1)
            if(number_neighbors <= 1)
                nuevo_estado = 0;
            elsif (number_neighbors >= 4)
                nuevo_estado = 0;
            else
                nuevo_estado = 1;
            end
        else
            if(number_neighbors == 3)
                nuevo_estado = 1;
            else
                nuevo_estado = 0;
            end
        end
        return nuevo_estado;
    end
    #Metodo para saber cuantos vecinos tiene vivos cada celda
    def calculate_neighbors(row, column, board)
        neighbors = 0
        for i in (row-1..row+1)
            for j in (column-1..column+1)
                if i != row or j != column
                    if !(i < 0 or i >= board.length-1 or j < 0 or j > board.length-1)
                        if board[i][j] == 1
                            neighbors = neighbors + 1                    
                        end
                    end
                end
            end
        end 
        return neighbors   
    end
end
