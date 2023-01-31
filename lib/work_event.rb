require "pry"

class WorkEvent < Event

    attr_accessor :location

    def initialize(start_date_to_save,duration_to_save,title_to_save,attendees_to_save,location_to_save)
        @location = location_to_save
        
        super(start_date_to_save,duration_to_save,title_to_save,attendees_to_save)
    end

    def is_event_is_acceptable?
        if @attendees.count > 3 || @duration > 60
            puts "Event not good"
            return false
        else
            puts "Event OK."
            return true
        end
    end

end