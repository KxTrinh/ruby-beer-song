class BeerSong

  def verse(quantity)
    # if quantity == 99
    # "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n"
    # elsif quantity == 3
    # "3 bottles of beer on the wall, 3 bottles of beer.\nTake one down and pass it around, 2 bottles of beer on the wall.\n"
    # else
    # "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    # end

    if quantity >= 2
      "#{quantity} bottle#{quantity == 1? '' : 's'} of beer on the wall, #{quantity} bottle#{quantity == 1? '' : 's'} of beer.\n"\
      "Take #{quantity == 1? 'it': 'one'} down and pass it around, #{quantity == 1? 'no more' : '' }#{quantity - 1} bottle#{quantity - 1 == 1? '' : 's'} of beer on the wall.\n"
    else
      "#{quantity} bottle of beer on the wall, #{quantity} bottle of beer.\n"\
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    end
  end

  def single_bottle
    "1 bottle of beer on the wall, 1 bottle of beer on the wall.\n"\
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end
end