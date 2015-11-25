# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holidays gem.
  #
  # Definitions loaded: data/ups.yaml
  #
  # To use the definitions in this file, load it right after you load the
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/ups'
  #
  # All the definitions are available at https://github.com/alexdunae/holidays
  module UPS # :nodoc:
    def self.defined_regions
      [:ups]
    end

    def self.holidays_by_month
      {
              1 => [{:mday => 1, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :name => "New Year's Day", :regions => [:ups]}],
      5 => [{:wday => 1, :week => -1, :name => "Memorial Day", :regions => [:ups]}],
      7 => [{:mday => 4, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :name => "Independence Day", :regions => [:ups]}],
      9 => [{:wday => 1, :week => 1, :name => "Labor Day", :regions => [:ups]}],
      11 => [{:wday => 4, :week => 4, :name => "Thanksgiving", :regions => [:ups]},
            {:function => lambda { |year| Holidays.day_after_thanksgiving(year) }, :function_id => "day_after_thanksgiving(year)", :name => "Day After Thanksgiving", :regions => [:ups]}],
      12 => [{:mday => 25, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :name => "Christmas Day", :regions => [:ups]},
            {:mday => 31, :name => "New Year's Eve", :regions => [:ups]}]
      }
    end
  end

def self.day_after_thanksgiving(year)
  Date.calculate_mday(year, 11, 4, 4) + 1
end



end

Holidays.merge_defs(Holidays::UPS.defined_regions, Holidays::UPS.holidays_by_month)
