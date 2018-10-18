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
      if contestant["hometown"] == occupation
         name = contestant["name"]
      end
    end
  end 
  
  counter
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
