pages_with_questions = {}

lines_grabbed = ""
key = ""

File.open("story.txt", "r") do |infile|
  while (line = infile.gets)
    if line.index("~p")
      key = line.chomp
      lines_grabbed = ""
    else
      lines_grabbed += line
    end
    pages_with_questions[key] = lines_grabbed
  end
end

continue_game = true

while continue_game
  p1 = pages_with_questions.select do |k,v|
    k.index("~p1")
  end

  p1.values.each_with_index do |v,i| 
    puts i == 0 ? "#{v}" : "#{i}) #{v}"
  end

  user_input = gets.chomp.to_i

  next_room = p1.select do |k,v|
    k.include? "~p1:c#{user_input}"
  end.keys[0].slice(-2,2)

  puts pages_with_questions["~#{next_room}"]

  puts "Do you want to try another? (y/n)"

  continue_game = gets.chomp.downcase == "y"
end