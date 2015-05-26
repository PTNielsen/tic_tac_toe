require "pry"

class TicTacToe

   attr_reader :board, :turn

      def initialize
          game = TicTacToe.new
          game.over? == false
          @turn = 0
          @board = {
                1 => 1, 2 => 2, 3 => 3, 
                4 => 4, 5 => 5, 6 => 6, 
                7 => 7, 8 => 8, 9 => 9
                }
      end

      def show_board
          puts "#{@board[1]}  |  #{@board[2]}  |  #{@board[3]}"
          puts "------------------"
          puts "#{@board[4]}  |  #{@board[5]}  |  #{@board[6]}"
          puts "------------------"
          puts "#{@board[7]}  |  #{@board[8]}  |  #{@board[9]}"
      end

  class Player
      def initialize
             @player1 = Player.new
             @player1.symbol = "X"
             @player2 = Player.new
             @player2.symbol = "O"
      end
  end

      def wins
            if @board[1..3].join == player1.symbol * 3
               return @player1.wins = true
            end
            if @board[1..3].join == player2.symbol * 3
               return @player2.wins = true
            end
            if @board[4..6].join == player1.symbol * 3
               return @player1.wins = true
            end
            if @board[4..6].join == player2.symbol * 3
               return @player2.wins = true
            end
            if @board[7..9].join == player1.symbol * 3
               return @player1.wins = true
            end
            if @board[7..9].join == player2.symbol * 3
               return @player2.wins = true
            end
            if @board[ [1], [4], [7] ].join == player1.symbol * 3
              return @player1.wins= true
            end
            if @board[ [1], [4], [7] ].join == player2.symbol * 3
              return @player2.wins = true
            end
            if @board[ [2], [5], [8] ].join == player1.symbol * 3
              return @player1.wins = true
            end
            if @board[ [2], [5], [8] ].join == player2.symbol * 3
              return @player2.wins = true
            end
            if @board[ [3], [6], [9] ].join == player1.symbol * 3
              return @player1.wins = true
            end
            if @board[ [3], [6], [9] ].join == player2.symbol * 3
              return @player2.wins = true
            end
            if @board[ [1], [5], [9] ].join == player1.symbol * 3
              return @player1.wins = true
            end
            if @board[ [1], [5], [9] ].join == player2.symbol * 3
              return @player2.wins = true
            end
            if @board[ [3], [5], [7] ].join == player1.symbol * 3
              return @player1.wins = true
            end
            if @board[ [3], [5], [7] ].join == player2.symbol * 3
              return @player2.wins = true
            end
      end

      class Player
          def initialize
             @player1 = Player.new
             @player1.symbol = "X"
             @player2 = Player.new
             @player2.symbol = "O"
          end
      end

      def over?
         if player1.wins == true
             "Player 1 Wins!"
           elsif player2.wins == true
             "Player 2 Wins!"
           else player1_wins != true && player2_wins != true && next_turn > 9
             "It's a draw!"
         end
      end

      puts "Let's play Tic Tac Toe!"

      until game.over
          puts "The board is: #{show_board}"
          @show_board.each do | square |
              if @turn.even?
                puts "#{@player1}, choose a square (1-9)!: "    #Prompt player for square choice
                choice1 = gets.chomp
                @turn += 1
                  if choice1 == square
                    @board[index] = @player1
                  end
              end

              if @turn.odd?
                puts "#{@player2}, choose a square (1-9)!: "
                choice2 = gets.chomp
                @turn += 1
                  if choice2 == square
                    @show_board[index] = @player2
                  end
              end
      end
  end
end
