class Board
  attr_accessor :cells

  def initialize
    cells_name = ["A1", "B1", "C1", "A2", "B2", "C2", "A3", "B3", "C3"]

    @cells = []
    for new_cell in (0..8)
      @cells.push(BoardCase.new(name=cells_name[new_cell]))
    end
  end

  def display
    puts "|A|B|C|"
    puts "|#{@cells[0].value}|#{@cells[1].value}|#{@cells[2].value}|"
    puts "|---|---|---|"
    puts "|#{@cells[3].value} | #{@cells[4].value} | #{@cells[5].value}|"
    puts "|---|---|---|"
    puts "|#{@cells[6].value} | #{@cells[7].value} | #{@cells[8].value}|"
  end

  def convert_to_i(cell)
    mapping = {"A1" => 0, "B1" => 1, "C1" => 2, "A2" => 3, "B2" => 4, "C2" => 5, "A3" => 6, "B3" => 7, "C3" => 8}
    cell_location = mapping[cell]
    return cell_location
  end
  
end

