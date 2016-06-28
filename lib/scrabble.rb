require('pry')

class String
  define_method(:scrabble) do
    scores = {"A"=>1, "B"=>3, "C"=>3, "D"=>2, "E"=>1, "F"=>4, "G"=>2, "H"=>4, "I"=>1, "J"=>8, "K"=>5, "L"=>1, "M"=>3, "N"=>1, "O"=>1, "P"=>3, "Q"=>10, "R"=>1, "S"=>1, "T"=>1, "U"=>1, "V"=>4, "W"=>4, "X"=>8, "Y"=>4, "Z"=>10}
    score_letters = scores.keys()

    input_letters_upcase = self.upcase!()
    input_letters_array = input_letters_upcase.split(//)

    total_score = 0

    input_letters_array.each() do |input_letter|
      score_letters.each() do |letter|
        if input_letter.==(letter)
          score = scores.fetch(letter)
          total_score = total_score.+(score)
        end
      end
    end
    total_score
  end
end
