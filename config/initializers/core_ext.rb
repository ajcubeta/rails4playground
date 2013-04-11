module Enumerable
  def dups
    inject({}) {|h,v| h[v]=h[v].to_i+1; h}.reject{|k,v| v==1}.keys
  end
end

class DateTime
  def to_fm
    self.strftime("%m/%d/%Y %H:%M:%S")
  end
end

class Date
  # "Mar 11" for March 2011
  def to_work_month
    self.strftime("%b %y")
  end

  # check is date is on a weekday
  def weekday?
    self.wday.between?(1,5)
  end

  # Return an array of months
  # Set invert to true to reverse the array (earlier date - current date)
  def all_months_ago(no_of_months, invert = false)
    months_to_date = []
    ctr = 0
    (0..no_of_months).each do |m|
      months_to_date << self.months_ago(m)
    end
    invert ? months_to_date : months_to_date.reverse
  end

  # Return an array of dates that from the value of the reference date, skips each month and ends on the end_date specified
  def months_to_date(end_date)
    date_loop = self
    last_date = end_date
    dates = []
    begin
      dates << date_loop
      if date_loop.next_month.beginning_of_month > last_date.beginning_of_month
        date_loop = last_date.tomorrow
      elsif date_loop.next_month.beginning_of_month == last_date.beginning_of_month
        date_loop = last_date
      else
        date_loop = date_loop.next_month
      end
    end while last_date >= date_loop
    dates
  end

  def all_months_of_year
    dates = []
    (1..12).each do |month|
      dates << Date.new(self.year, month)
    end
    dates
  end

  def self.all_months_of_year(year)
    new(year,1,1).all_months_of_year
  end

  def self.new_quarter_range(year, quarter)
    case quarter
      when 1
        Date.new(year,1,1)..Date.new(year,3,31)
      when 2
        Date.new(year,4,1)..Date.new(year,6,30)
      when 3
        Date.new(year,7,1)..Date.new(year,9,30)
      when 4
        Date.new(year,10,1)..Date.new(year,12,31)
    end
  end

  def quarter
    case self.month
      when 1,2,3
        1
      when 4,5,6
        2
      when 7,8,9
        3
      when 10,11,12
        4
    end
  end
end

class Time
  # Make the date compatible to FileMaker
  def to_fm
    self.strftime('%m/%d/%Y')
  end

  def to_fm_time
    self.strftime("%I:%M:%S %p")

  end
end

class Numeric
  def negative?
    if self.to_s =~ /^-(\d+).?(\d+)?$/
      true
    elsif self.to_s =~ /^(\d+).?(\d+)?$/
      false
    end
  end
end

module Variance
  def mean
    (sum.to_f / size.to_f)
  end

  def variance
    m = mean
    sum { |i| (i - m)**2 } / size
  end

  def standard_deviation
    Math.sqrt(variance)
  end

  def progressive_mean
    container = []
    values = self

    begin
      container << values.mean
      values.pop
    end while !values.empty?

    container.reverse
  end
end

Array.send :include, Variance
