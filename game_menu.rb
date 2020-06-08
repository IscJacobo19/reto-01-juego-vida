require_relative 'process_game.rb'
require 'minitest/autorun'
initGame = Game.new
game = 0
#Inicializamos un while para crear un menú para el usuario, sin que el programa se cierre.
while game < 5
#Menu del game of live
    print"1.- Jugar con diagonal \n"
    print"2.- Jugar con cuadro \n"
    print"3.- jugar con linea recta \n"
    print"4.- jugar aleatorio \n"
    print"5+.- Salir del juego \n"
    print "¿QUE DESEAS HACER? \n"
    game = gets.chomp.to_i
    case game
        when 0 
            print"Vuelve a intentarlo\n"
        when 1
            print"JUEGO CON DIAGONAL\n"
            board =[[0,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,0]]
            initGame.gameprocess(board)
        when 2
            print"JUEGO CON UN CUADRO\n"
            board =[[0,0,0,0,0],[0,0,1,1,0],[0,0,1,1,0],[0,0,0,0,0],[0,0,0,0,0]]
            initGame.gameprocess(board)
        when 3
            print"JUEGO CON LINEA RECTA\n"
            board =[[0,0,0,0,0],[0,0,0,0,0],[0,1,1,1,0],[0,0,0,0,0],[0,0,0,0,0]]
            initGame.gameprocess(board)
        when 4
            print"JUEGO ALEATORIO\n"
            puts "Tamaño del tablero: "
            size_board = gets.chomp.to_i
            initGame.gameprocessAleat(size_board)
        when 5
            print"Gracias, vuelve pronto\n"
        when 6..10
            print "Numero no permitido salimos del juego\n"    
    end
end
class TestGameOfLive < Minitest::Test 
    def test_game
        initGame = Game.new
        assert_equal [[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0],[0,0,0,0,0]] ,initGame.gameprocess([[0,0,0,0,0],[0,1,0,0,0],[0,0,1,0,0],[0,0,0,1,0],[0,0,0,0,0]])
        assert_equal [[0,0,0,0,0],[0,0,1,1,0],[0,0,1,1,0],[0,0,0,0,0],[0,0,0,0,0]] ,initGame.gameprocess([[0,0,0,0,0],[0,0,1,1,0],[0,0,1,1,0],[0,0,0,0,0],[0,0,0,0,0]])
        assert_equal [[0,0,0,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,1,0,0],[0,0,0,0,0]] ,initGame.gameprocess([[0,0,0,0,0],[0,0,0,0,0],[0,1,1,1,0],[0,0,0,0,0],[0,0,0,0,0]])
    end
end
