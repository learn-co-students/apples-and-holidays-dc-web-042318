require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:

#:winter => {
#:christmas => ["Lights", "Wreath"],
#:new_years => ["Party Hats"]
#},
#:summer => {
#:fourth_of_july => ["Fireworks", "BBQ"]
#},
#:fall => {
#:thanksgiving => ["Turkey"]
#},
#:spring => {
#:memorial_day => ["BBQ"]
#}
#}

  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
holiday_hash.collect do |season, data|
  if(season == :winter)
    data.collect do |holiday, decoration|
      decoration << supply
    end
  end
end
holiday_hash
end
 # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.collect do |season, data|
    if(season == :spring)
      data.collect do |holiday, item| 
        if(holiday == :memorial_day)
          item << supply
        end
      end 
    end 
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.collect do |k,v|
  if(k == season)
    holiday_hash[season][holiday_name] = supply_array
  end
end 
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
  holiday_hash.each do |season, data|
    if(season == :winter)
    data.each do |holiday, items|
      items.each do |item|
        arr << item.to_s
      end
    end
  end
end
arr
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
holiday_hash.each do |season, holiday|
  puts "#{season.to_s.capitalize}:"
  holiday.each do |holiday, item|
    if(holiday.to_s.include? ("_"))
    holiday = holiday.to_s.tr('_', ' ')  
  end
  puts "  #{holiday.to_s.split.map(&:capitalize).join(' ')}: #{item.join(", ")}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  new_array = []
holiday_hash.each do |season, data|
  data.each do |holiday, items|
    items.each do |item|
    if(item === "BBQ")
      new_array << holiday.to_s.split
    end 
  end
  end
end 
new_array.flatten!
new_array.map! {|item| item.to_sym}
new_array
end







