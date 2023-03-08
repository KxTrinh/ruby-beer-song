class BeerSong
  attr_reader :quantity
  def verse(quantity)
    @quantity = quantity
    "#{first_sentence}\n#{second_sentence}"
  end

  def verses(last_verse, first_verse)
    (first_verse..last_verse).map {|number| verse(number)}.reverse.join("\n")
  end

  def lyrics
    verses(99, 0)
  end
  def first_sentence
    "#{first_article} bottle#{plural} of beer on the wall, #{article} bottle#{plural} of beer."\
  end

  def second_sentence
    if quantity == 0
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take #{quantity == 1 ? 'it': 'one'} down and pass it around, #{no_more?} bottle#{'s' unless quantity == 2} of beer on the wall.\n"
    end
  end

  def plural
    quantity == 1 ? '' : 's'
  end

  def first_article
    (quantity != 0) ? quantity : 'No more'
  end

  def article
    (quantity != 0) ? quantity : 'no more'
  end

  def no_more?
    (quantity == 1) ? 'no more' : quantity - 1
  end
end

module BookKeeping
  VERSION = 2
end
