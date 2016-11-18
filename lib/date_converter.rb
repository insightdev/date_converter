require "date_converter/version"

module DateConverter
  def self.verbal_date_to_numeric verbal,separator
    arr = verbal.split(/[\s,]/)
    month=case arr[0]
  when "January"
    1
  when "February"
    2
  when "March"
    3
  when "April"
    4
  when "May"
    5
  when "June"
    6
  when "July"
    7
  when "August"
    8
  when "September"
    9
  when "October"
    10
  when "November"
    11
  when "December"
    12
  end

  arr[0]=month

  # 11, "17","2016"

  arr.map { |e| e.to_i unless e.is_a? Integer }

  # 11, 17, 2016
  #
  arr[0], arr[1], = arr[1], arr[0]

  # 17, 11, 2016

  arr.delete_at(2)
  arr.join(separator)
end
end
