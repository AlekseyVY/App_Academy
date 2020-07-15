class Item
    attr_reader :title, :deadline, :description, :done

    def initialize(title, deadline, description)
        @title = title
        if Item.valid_date?(deadline)
            @deadline = deadline
        else
            raise 'Date is Invalid format!'
        end
        @description = description
        @done = false
    end

    def self.valid_date?(date_string)
        tmp = date_string.split('-')
        compare = []
        validity_count = 0
        if tmp[0].length == 4
            validity_count += 1
        end
        if tmp[1].to_i >= 1 && tmp[1].to_i <= 12
            validity_count += 1
        end
        if tmp[2].to_i >= 1 && tmp[2].to_i <= 31
            validity_count += 1
        end
        if validity_count == 3
            return true
        else
            return false
        end
    end

    def title=(new_title)
        @title = new_title
    end

    def deadline=(new_deadline)
        if Item.valid_date?(new_deadline)
            @deadline = new_deadline
        else
            raise 'Date is Invalid format!'
            return false
        end
    end

    def description=(new_description)
        @description = new_description
    end

    def toggle 
        if @done == false
            @done = true
        else
            @done = false
        end
    end
end