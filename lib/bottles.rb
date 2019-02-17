class Bottles 
  def verse(bottle)
    case bottle
    when 0
    <<-VERSE 
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
    VERSE
    when 1
    <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    else
    <<-VERSE
#{bottle} bottles of beer on the wall, #{bottle} bottles of beer.
Take one down and pass it around, #{bottle-1} bottle#{bottle > 2 ? 's' : ''} of beer on the wall.
    VERSE
    end
  end

  def verses(b1, b2)
    (b2..b1).to_a.reverse.map { |b|  verse(b) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
