require 'bundler'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/event_creator'

=begin
jeremy = User.new("jeremy",35)
laura = User.new("laura",34)
my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts my_event.to_s
puts jeremy.name
puts laura.name
puts User.all
puts User.count
puts my_event.is_future?
puts my_event.postpone_24h
=end

class App
    EventCreator.new
end