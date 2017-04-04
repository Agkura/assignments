class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @cups.each_index do |idx|
      @cups[idx] = place_stones unless idx == 6 ||  idx == 13
    end

    @store1 = name1
    @store2 = name2
    @current_player
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    [:stone] * 4
  end

  def valid_move?(start_pos)
    if start_pos == 6 || start_pos >= 13 || start_pos < 0
      raise "Invalid starting cup"
    elsif cups[start_pos].empty?
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    @current_player = current_player_name
    steps = cups[start_pos]
    cups[start_pos] = []
    index = start_pos
    until steps.empty?
      if index == 13
        index = 0
      else
        index += 1
      end
      if @current_player == @store1
        cups[index] << steps.pop unless index == 13
      else
        cups[index] << steps.pop unless index == 6
      end
    end
    render
    next_turn(index)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if @current_player == @store1 && ending_cup_idx == 6
      return :prompt
    elsif @current_player == @store2 && ending_cup_idx == 13
      return :prompt
    elsif cups[ending_cup_idx].length <= 1
      return :switch
    elsif cups[ending_cup_idx].length > 1
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    (0..6).all? { |int| cups[int].empty? } || (7..12).all? { |int| cups[int].empty? }
  end

  def winner
    return :draw if cups[6] == cups[13]
    winner = cups[6].count > cups[13].count ? @store1 : @store2
    return winner
  end
end
