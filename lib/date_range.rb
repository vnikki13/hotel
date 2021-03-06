require 'date'

module Hotel
  class DateRange
    attr_reader :arrive, :depart
    
    # parameters must be objects of class Date
    def initialize(arrive, depart)
      @arrive = arrive
      @depart = depart
    end

    def overlap?(start_date, leave_date)
      (self.arrive > start_date && self.arrive < leave_date) || 
      (self.depart > start_date && self.depart <= leave_date)
    end
  end
end
