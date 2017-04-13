require 'pry'





## code

def get_first_name_of_season_winner(data, season)
  # code here
  #had trouble getting this to pass. I copied a snipet of data so I could get familiar with the Structure
  # there I realized that some of the keys were symbols, but here they seem not be symbols
  # also, in my original block I compared if the key was status, and the value was winner,
  # here just tinkering and playing I just tried status and the correct names were coming up
  # I do not understand how this works though
  # I think maybe since the only statuses that have a value are winner?
 name = []
 data.each do |season_number, season_data|
  if season_number == season
 season_data.each do |contestant_data|
 contestant_data.each do |key, value|
   if key = "status"
   name.push(value)
   end
  end
  end
  end
  end
  name_s = name.join()
  name_first_and_last = name_s.split(" ")
  return name_first_and_last[0]
end



def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, season_data|
  season_data.each do |contestant_data|
  contestant_data.each do |key, value|
   if key == "occupation" && value == occupation
  contestant_data.each do |key, value|
    if key == "name"
      return value
    end
  end
  end
  end
  end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.each do |season_number, season_data|
  season_data.each do |contestant_data|
  contestant_data.each do |key, value|
   if key == "hometown" && value == hometown
      hometown_count += 1
   end
  end
  end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, season_data|
  season_data.each do |contestant_data|
  contestant_data.each do |key, value|
   if key == "hometown" && value == hometown
     contestant_data.each do |key, value|
   if key == "occupation"
      return value
   end
   end
  end
  end
  end
  end
end

def get_average_age_for_season(data, season)
  # code here
  average_age = []
  data.each do |season_number, season_data|
   if season_number == season
  season_data.each do |contestant_data|
  contestant_data.each do |key, value|
   if key == "age"
      average_age.push(value.to_i)
   end
   end
  end
  end
  end
  total_age_sum = 0
  average_age.each do |age|
    total_age_sum += age
  end
  average_age_is = total_age_sum.fdiv(average_age.length).round
  return average_age_is
end
