require "pry"
require "time"

class Event

    attr_accessor :start_date, :duration, :title, :attendees
  
    def initialize(start_date_to_save,duration_to_save,title_to_save,attendees_to_save)
        @start_date = Time.parse(start_date_to_save.to_s)
        @duration = duration_to_save.to_i
        @title = title_to_save.to_s
        @attendees = attendees_to_save.to_s
    end

    def postpone_24h
        return @start_date + (24*60*60)
    end

    def end_date
        return @start_date + (@duration*60)
    end

    def is_past?
        return @start_date < Time.now
    end

    def is_future?
        return !self.is_past?
    end

    def is_soon?
        return @start_date < Time.now + 60*30
    end

    def to_s
        puts ">Title : #{@title}"
        puts ">Start date : #{@start_date}"
        puts ">Duration : #{@duration} min"
        print ">Attendees : "
        puts @attendees
    end

end

#binding.pry 