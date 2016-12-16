require 'connect_four'

describe Connect_Four do  
  
  game = Connect_Four.new
  describe ".new_board" do
    context "return board array" do
      it "returns the game board" do
        expect(game.board).to match_array([['X','X','X','X','X','X','X'],
                                                       ['X','X','X','X','X','X','X'],
                                                       ['X','X','X','X','X','X','X'],
                                                       ['X','X','X','X','X','X','X'],
                                                       ['X','X','X','X','X','X','X'],
                                                       ['X','X','X','X','X','X','X']])    
                                         
      end
    end
  end

  describe ".add_piece(column)" do
    context "update game board" do
      it "puts a piece in the given column" do
        expect(game.add_piece(1)).to match_array([['X','X','X','X','X','X','X'],
                                                                 ['X','X','X','X','X','X','X'],
                                                                 ['X','X','X','X','X','X','X'],
                                                                 ['X','X','X','X','X','X','X'],
                                                                 ['X','X','X','X','X','X','X'],
                                                                 ['B','X','X','X','X','X','X']])
          
      end
    end
  end

  describe ".next_turn" do
    context "change whose turn it is" do
      it "makes it white turn if black was last, or black turn if white was last" do
        expect(game.next_turn).to eql('Black')
        expect(game.next_turn).to eql('White')
      end
    end
  end

end