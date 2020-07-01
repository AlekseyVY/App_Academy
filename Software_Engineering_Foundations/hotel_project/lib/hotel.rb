require_relative "room"

class Hotel
  
    def initialize(name, hash)
        @name = name
        @rooms = {}
        hash.each { |k, v| @rooms[k] = Room.new(v)}
    end

    def name
        new_name = @name.split(" ").map { |ele| ele.capitalize}
        new_name.join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(name)
        if @rooms.include?(name)
            return true
        else
            return false
        end
    end

    def check_in(person, room_name)
        if room_exists?(room_name)
            try =  @rooms[room_name].add_occupant(person)
        else
            puts 'sorry, room does not exist'
        end

        if try
            puts 'check in successful'
        else
            puts 'sorry, room is full'
        end
    end

    def has_vacancy?
        count = 0
        @rooms.each do |k, v|
            if !v.full?
                count += 1
            end
        end
        if count != 0
            return true
        else
            return false
        end
    end

    def list_rooms
        @rooms.each do |k, v|
            print k
            print v.available_space
            puts
        end
    end

end
