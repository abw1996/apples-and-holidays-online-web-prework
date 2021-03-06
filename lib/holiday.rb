require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each { |actual_holiday , decor| decor << supply}
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each { |actual_holiday , decor| decor << supply}
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supplies = []
  holiday_hash.each do |season, holiday|
    if season == :winter 
      holiday.each { |holiday , supply| supplies += supply }
    end
  end
  supplies 
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
    season_edit = "#{season}:"
    puts season_edit.capitalize
    holiday.each { |actual_holiday, supplies|
    edert = "#{actual_holiday}: "
    if edert.include?("_")
      arri = edert.split("_")
      arri = arri.collect { |item| item.capitalize }
      edert = arri.join(" ")
    else edert = edert.capitalize
    end
    puts "  " + edert + supplies.join(", ")
      
    }
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array_of_holidays = []
  holiday_hash.each do |season , holiday|
    holiday.each do |actual_holiday , decor|
      if decor.include?("BBQ")
        array_of_holidays += [actual_holiday]
      end
    end
  end
  array_of_holidays
end







