require 'sinatra'

get('/') do
  erb(:home)
end

get('/rock') do
  plays = ["rock", "paper", "scissors"]
  our_play = plays.sample
  their_play = plays.sample

  @our_readout = "We played #{our_play}!"
  @their_readout = "They played #{their_play}!"

  if their_play == "rock"
    @outcome = "We tied!"
  elsif their_play == "paper"
    @outcome = "We lost!"
  else 
    @outcome = "We won!"
  end

  erb(:rock)

end

get('/paper') do
  plays = ["rock", "paper", "scissors"]
  our_play = plays.sample
  their_play = plays.sample

  @our_readout = "We played #{our_play}!"
  @their_readout = "They played #{their_play}!"

  if their_play == "rock"
    @outcome = "We won!"
  elsif their_play == "paper"
    @outcome = "We tied!"
  else 
    @outcome = "We lost!"
  end

  erb(:paper)

end

get('/scissors') do
  plays = ["rock", "paper", "scissors"]
  our_play = plays.sample
  their_play = plays.sample

  @our_readout = "We played #{our_play}!"
  @their_readout = "They played #{their_play}!"

  if their_play == "rock"
    @outcome = "We lost!"
  elsif their_play == "paper"
    @outcome = "We won!"
  else 
    @outcome = "We tied!"
  end

  erb(:scissors)

end



# if our_play == "Rock"
#   if their_play == "Rock"
#     @outcome = "We tied!"
#   elsif their_play == "Paper"
#     @outcome = "We lost!"
#   else 
#     @outcome = "We won!"
#   end
# elsif our_play == "Paper"
#   if their_play == "Rock"
#     @outcome = "We won!"
#   elsif their_play == "Paper"
#     @outcome = "We tied!"
#   else 
#     @outcome = "We lost!"
#   end
# else
#   if their_play == "Rock"
#     @outcome = "We lost!"
#   elsif their_play == "Paper"
#     @outcome = "We won!"
#   else 
#     @outcome = "We tied!"
#   end
# end
