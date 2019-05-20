require_relative "piece.rb"
class Board
  def initialize
    @board = Array.new(8) { [] }
    @board.each_with_index do |row, idx|
      if idx == 0 || idx == 1 || idx == 6 || idx == 7
        (0..7).each do |pos|
          row << Piece.new
        end
      else
        (0..7).each do |pos|
          row << nil
        end
      end
    end
  end

  def move_piece(start_pos, end_pos)
    raise "start position out of bounds" unless start_pos.all? { |idx| idx >= 0 && idx <= 7 }
    raise "end position out of bounds" unless end_pos.all? { |idx| idx >= 0 && idx <= 7 }
    raise "no piece at start position" if @board[start_pos[0]][start_pos[1]].nil?
    raise "the piece can not move to end position" unless @board[end_pos[0]][end_pos[1]].nil?
    @board[end_pos[0]][end_pos[1]] = @board[start_pos[0]][start_pos[1]]
    @board[start_pos[0]][start_pos[1]] = nil
  end
end
