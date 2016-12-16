class Connect_Four  

  def initialize
    @board = Connect_Four.new_board
    @turn = 'Black'
  end 

  def self.new_board
    board = []
    6.times {board << Array.new(7,'X')}
    board
  end

  def next_turn
    @turn == 'Black' ? @turn = "White" : @turn = 'Black'
  end

  def add_piece(column)
    #validate    
    valid = true
    if valid
      done = false
      column = column - 1
      until(done)
        row = 0
        if @board[row][column] == 'X'
          if @turn == 'Black' 
            @board[row][column] = 'B'
          else
            @board[row][column] = 'W'
          end
          self.next_turn
          done = true
        end
        row = row + 1
      end
    end
    @board
  end

  attr_accessor :board

end