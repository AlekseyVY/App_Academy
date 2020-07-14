load 'item.rb'

class List
    def initialize(label)
        @label = label
        @items = []
    end

    def label
        @label
    end

    def label=(new_label)
        @label = new_label
    end

    def add_item(title, deadline, description='')
        if @items << Item.new(title, deadline, description)
            return true
        else 
            return false
        end
    end

    def size
        @items.length
    end

    def valid_index?(index)
        if @items[index]
            return true
        else 
            return false
        end
    end

    def swap(index_1, index_2)
        if valid_index?(index_1) && valid_index?(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            return true
        else
            return false
        end
    end

    def [](index)
        if valid_index?(index)
            return @items[index]
        else
            return nil
        end
    end

    def priority
        @items[0]
    end

    def print
        p '-----------------------------------'
        p ' '.ljust(13) + @label + " ".ljust(13)
        p '-----------------------------------'
        p 'Idx | Item             | Deadline  '
        p '-----------------------------------'
        @items.each_with_index do |ele, idx|
            p idx.to_s.ljust(3) + " | " + ele.title.ljust(16) + " | " + ele.deadline
        end
        p '-----------------------------------'
    end

    def print_full_item(index)
        if valid_index?(index)
            p '-----------------------------------'
            p @items[index].title + " - " + @items[index].deadline
            p @items[index].description
            p '-----------------------------------'
        end
    end

    def print_priority
        p '-----------------------------------'
        p @items[0].title + " - " + @items[0].deadline
        p @items[0].description
        p '-----------------------------------'
    end

    def up(index, amount=1)
        if valid_index?(index)
            item = @items[index]
            idx = index
            while amount > 0 && valid_index?(idx - 1)
                idx = @items.index(item)
                if @items[0] == item
                    return true
                end
               @items[idx - 1] ,@items[idx] = @items[idx], @items[idx - 1]
               amount -= 1
            end
        end
    end

    def down(index, amount=1)
        if valid_index?(index)
            item = @items[index]
            idx = index
            while amount > 0 && valid_index?(idx + 1)
                idx = @items.index(item)
                if @items[@items.length - 1] == item
                    return true
                end
               @items[idx] ,@items[idx + 1] = @items[idx + 1], @items[idx]
               amount -= 1
            end
        end
    end
end



# my_list = List.new('Groceries')


# my_list.add_item('candy', '2019-10-31', '4 bags should be enough')
# my_list.add_item('cheese', '2019-10-25', 'Get American and Feta for good measure.')
# my_list.add_item('toothpaste', '2019-10-25')
# my_list.add_item('shampoo', '2019-10-24')

# my_list.print
# my_list.down(1, 654)
# my_list.print