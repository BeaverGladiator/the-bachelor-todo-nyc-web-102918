require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |season_num, data|
    if season_num == season
      data.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"]
        end
      end
    end 
  end 

  winner_names = winner.split(" ")
  winner_names[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  
  data.each do |season, data|
    data.each do |contestant|
      if contestant["occupation"] == occupation
         name = contestant["name"]
      end
    end
  end 
  
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  
  data.each do |season, data|
    data.each do |contestant|
      if contestant["hometown"] == hometown
         counter += 1
      end
    end
  end 
  
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  
  data.each do |season, data|
    data.each do |contestant|
      if contestant["hometown"] == hometown
        occupation = contestant["occupation"]
        return occupation
      end
    end
  end 
  
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  age_total = 0
  average_age = 0
  
  # data.each do |season, data|
  #   data.each do |contestant|
  #   age_array << contestant["age"].to_i
  #   end
  # end 
  
  data.each do |season_num, data|
    if season_num == season
      data.each do |contestant|
        age_array << contestant["age"].to_i
      end
    end 
  end 
  
  binding.pry
  
  age_array.each do |age|
    binding.pry
    age_total += age 
  end 
  
  average_age = age_total / age_array.count

end
