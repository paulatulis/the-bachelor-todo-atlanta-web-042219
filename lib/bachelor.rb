def get_first_name_of_season_winner(data, season)
  winner = " "
  data.each do |season_info, contestant_info|
    if season_info == season
  contestant_info.each do |x|
   if x["status"] == "Winner"
  winner = x["name"].split
  winner = winner[0]
end 
end 
end
end 
winner
end

def get_contestant_name(data, occupation)
  name_of_contestant = " "
  data.each do |season_info, contestant_info|
    contestant_info.each do |x|
    if x["occupation"] == occupation 
    name_of_contestant = x["name"]
    end 
    end 
    end 
    name_of_contestant
    end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_info, contestant_info|
    contestant_info.each do |x|
      x.each do |a, b|
    if b == hometown 
    counter += 1
end
end 
end 
end
counter
end 

def get_occupation(data, hometown)
  data.each do |season_info, contestant_info|
    contestant_info.each do |x|
      x.each do |a, b|
    if b == hometown
    return x["occupation"]
    end 
    end 
    end 
    end 
  end 
    

def get_average_age_for_season(data, season)
  contestant_ages = data[season].collect do |contestant|
    contestant["age"].to_i
  end
  summed_ages = contestant_ages.reduce(0) {|sum, age| sum += age}
  contestant_count =  contestant_ages.count.to_f
  (summed_ages/contestant_count).round
end
