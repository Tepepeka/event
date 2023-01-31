
require "pry"
require_relative 'event'
require_relative 'user'

class EventCreator 

    attr_accessor :name, :age, :start_date, :duration, :title, :attendees

    def initialize
        #init and create user
        @name = get_name
        @age = get_age
        create_user

        #init and create event
        @title = get_title
        @start_date = get_start
        @duration = get_duration
        @attendees = get_attendees
        create_event
    end

    def get_name
        puts "ur name?"
        print "> "
        return gets.chomp.to_s
    end

    def get_age
        puts "ur age?"
        print "> "
        return gets.chomp.to_i
    end

    def get_title
        puts "Event title?"
        print "> "
        return gets.chomp.to_s
    end

    def get_start
        puts "Event start date?"
        print "> "
        return gets.chomp.to_s
    end

    def get_duration
        puts "Event duration?"
        print "> "
        return gets.chomp.to_i
    end

    def get_attendees
        puts "number of attendees"
        print "> "
        number_attendees = gets.chomp.to_i
        event_attendees = []
        number_attendees.times do
            puts "Event attendee name?"
            print "> "
            event_attendees_name = gets.chomp.to_s
            event_attendees << event_attendees_name
        end
        return event_attendees
    end

    def create_user
        my_user = User.new(@name,@age)
        puts "======================================"
        puts "welcome #{@name} lets make an event!"
        puts "======================================"
    end

    def create_event
        my_event = Event.new(@start_date, @duration, @title, @attendees)
        puts "============================="
        puts "Resume of ur event @#{@name}!"
        puts "============================="
        my_event.to_s
    end

end

#binding.pry