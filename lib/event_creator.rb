
require "pry"
require_relative 'event'
require_relative 'user'

class EventCreator 

        puts "ur name?"
        print "> "
        user_name = gets.chomp.to_s

        puts "ur age?"
        print "> "
        user_age = gets.chomp.to_i

        my_user = User.new(user_name,user_age)

        puts "welcome #{user_name} lets make an event!"
   
        puts "Event title?"
        print "> "
        event_title = gets.chomp.to_s
   
        puts "Event start date?"
        print "> "
        event_start_date = gets.chomp.to_s
    
        puts "Event duration?"
        print "> "
        event_duration = gets.chomp.to_i

        puts "number of attendees"
        print "> "
        number_attendees = gets.chomp.to_i
        event_attendees = []
        number_attendees.times do
            puts "Event attendees name?"
            print "> "
            event_attendees_name = gets.chomp.to_s
            event_attendees << event_attendees_name
        end

    #def new_event(event_start_date, event_duration, event_title, event_attendees)
        my_event = Event.new(event_start_date, event_duration, event_title, event_attendees)
    #end
    
    puts my_event

end

#binding.pr
