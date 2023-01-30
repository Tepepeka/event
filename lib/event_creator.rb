
require "pry"
require_relative 'event'
require_relative 'user'

class EventCreator 

        puts "Event title?"
        print "> "
        event_title = gets.chomp.to_s
   
        puts "Event start date?"
        print "> "
        event_start_date = gets.chomp.to_s
    
        puts "Event duration?"
        print "> "
        event_duration = gets.chomp.to_i
    
        puts "Event attendees?"
        print "> "
        event_attendees = gets.chomp.to_s
    
    #def new_event(event_start_date, event_duration, event_title, event_attendees)
        my_event = Event.new(event_start_date, event_duration, event_title, event_attendees)
    #end
    puts my_event

end

#binding.pr
