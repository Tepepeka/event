require "pry"

class User

    attr_accessor :name, :age
    @@user_count = 0
    @@all_users = []

    def initialize(name_to_save,age_to_save)
        @name = name_to_save.to_s
        @age = age_to_save.to_i
        @@all_users << @name
        @@user_count = @@user_count + 1
    end

    def self.all
        return @@all_users
    end

    def self.count
        return @@user_count
    end


    def self.find_by_name(name)
        @@all_users.each do |user|
            if user.name == name
                return user
            else
                return false
            end
        end
    end

end

#binding.pry