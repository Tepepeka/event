require "pry"
require "time"

class Event

    attr_accessor :start_date, :duration, :title, :attendees
  
    def initialize(start_date_to_save,duration_to_save,title_to_save,attendees_to_save)
        @start_date = Time.parse(start_date_to_save)
        @duration = duration_to_save
        @title = title_to_save
        @attendees = attendees_to_save
    end

    def postpone_24h
        return @start_date += (24*60*60)
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
        return @start_date < Time.now + (60*30)
    end

    def age_analysis
        attendees_age = []
        age_average = O

        @attendees.each do |attendees|
            attendees_age << attendees.age
            average = average + attendees_age
        end

        average = average / @attendees.length

        puts "attendees age :"
        puts attendees_age.join(", ")
        puts "average age = #{average}yrs!"
    end

    def to_s
        puts ">Title : #{@title}"
        puts ">Start date : #{@start_date}"
        puts ">Duration : #{@duration}min"
        print ">Attendees : "
        puts @attendees.join(", ")
    end

end

#binding.pry 