require('rspec')
require('scrabble')

describe('scrabble') do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a word") do
    expect("cat".scrabble()).to(eq(5))
  end
  it("manages all uppercase entries") do
    expect("CAT".scrabble()).to(eq(5))
  end
  it("manages mixed case entries") do
    expect("CaT".scrabble()).to(eq(5))
  end
end
