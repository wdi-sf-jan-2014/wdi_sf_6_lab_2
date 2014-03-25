# we'll want to store all lines of text as key-value pairs
# the keys shall be the delimiters (or, the identifiers)
pages_with_questions = {}

# in order to concatenate multiple lines of text we ought to
# have a place to store them, so instantiate an empty string
lines_grabbed = ""

# we'll need to keep track of the key that we are on
key = ""

# open up the file
File.open("story.txt", "r") do |infile|
  # go through the file till the end
  while (line = infile.gets)
    if line.index("~p")
      # when we match an identifier
      key = line.chomp # grab the key
      lines_grabbed = "" # reset current line set
    else
      # when not matching an identifier
      # we are on one of the lines between identifiers
      lines_grabbed += line # concatenate the current line
    end

    # assign to the current key the lines grabbed thus far
    # when on the key this is empty
    # as we go through the current section between
    # identifiers, this is going to be updated with each line
    pages_with_questions[key] = lines_grabbed
  end
end

# we need to keep track of whether the user wants to keep
# making dem scrambled eggs! initially we assume that they do
continue_game = true

while continue_game
  # while the user wants to continue...

  # let's filter the hash for only the first page's data
    # match any key that includes ~p1

  # let's iterate over all the matched values
    # when we are on the 0th value, output without the index
    # otherwise output with the index

  # let's see which choice the user picks

  # let's figure out the next room to go to
  # by filtering our p1 data set down further
  # so that we may get the key of the user 
  # selected option
    # we filter by checking against the key containing
    # the user's selected choice number
  # at the end let's grab the key, and chop off the last
  # two characters. that is the next page. presto

  # now output the next room's text. voila.

  # ask the user if they want to resume this
  puts "Do you want to try another? (y/n)"

  # if they say "y", continue game is true, otherwise false
  continue_game = gets.chomp.downcase == "y"
end
