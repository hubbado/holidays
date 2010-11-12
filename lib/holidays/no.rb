# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/no.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/no'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module NO # :nodoc:
    DEFINED_REGIONS = [:no]

    HOLIDAYS_BY_MONTH = {
      0 => [{:function => lambda { |year| Holidays.easter(year)-49 }, :function_id => "easter(year)-49", :type => :informal, :name => "Fastelavn", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)-7 }, :function_id => "easter(year)-7", :name => "Palmesøndag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)-3 }, :function_id => "easter(year)-3", :name => "Skjærtorsdag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :name => "Langfredag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "1. påskedag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "2. påskedag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)+39 }, :function_id => "easter(year)+39", :name => "Kristi Himmelfartsdag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)+49 }, :function_id => "easter(year)+49", :name => "1. pinsedag", :regions => [:no]},
            {:function => lambda { |year| Holidays.easter(year)+50 }, :function_id => "easter(year)+50", :name => "2. pinsedag", :regions => [:no]}],
      1 => [{:mday => 1, :name => "Nyttårsdag", :regions => [:no]}],
      5 => [{:mday => 1, :name => "1. mai", :regions => [:no]},
            {:mday => 17, :name => "17. mai", :regions => [:no]}],
      12 => [{:mday => 24, :type => :informal, :name => "Julaften", :regions => [:no]},
            {:mday => 25, :name => "1. juledag", :regions => [:no]},
            {:mday => 26, :name => "2. juledag", :regions => [:no]},
            {:mday => 31, :type => :informal, :name => "Nyttårsaften", :regions => [:no]}]
    }
  end


end

Holidays.merge_defs(Holidays::NO::DEFINED_REGIONS, Holidays::NO::HOLIDAYS_BY_MONTH)