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
        if @items[index.to_i]
            return true
        else 
            return false
        end
    end

    def swap(idx_1, idx_2)
        index_1 = idx_1.to_i
        index_2 = idx_2.to_i
        if valid_index?(index_1) && valid_index?(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            return true
        else
            return false
        end
    end

    def [](index)
        if valid_index?(index)
            return @items[index.to_i]
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
            p @items[index.to_i].title + " - " + @items[index.to_i].deadline
            p @items[index.to_i].description
            p '-----------------------------------'
        end
    end

    def print_priority
        p '-----------------------------------'
        p @items[0].title + " - " + @items[0].deadline
        p @items[0].description
        p '-----------------------------------'
    end

    def up(i, a=1)
        amount = a.to_i
        index = i.to_i
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

    def down(i, a=1)
        amount = a.to_i
        index = i.to_i
        if valid_index?(index)
            item = @items[index]
            idx = index
            while amount.to_i > 0 && valid_index?(idx + 1)
                idx = @items.index(item)
                if @items[@items.length - 1] == item
                    return true
                end
               @items[idx] ,@items[idx + 1] = @items[idx + 1], @items[idx]
               amount -= 1
            end
        end
    end

    def sort
        @items.sort_by! {|obj| obj.deadline}
    end
end