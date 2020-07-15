load 'list.rb'



class TodoBoard
    def initialize
        @lists = Hash.new
    end

    def ls
        p '----------------------'
        @lists.each do |k, v|
            p k.to_s + ": | " + v.to_s
        end
        p '----------------------'
    end

    def create_list(label)
        @lists[label] = List.new(label)
    end

    def showall
        @lists.each do |k, v|
            v.print
        end
    end

    def mktodo(label, item_title, item_deadline, item_discription='')
        val = @lists[label]
        val.add_item(item_title, item_deadline, item_discription)
    end

    def toggle(list_label, item_index)
        val = @lists[list_label]
        val.toggle_item(item_index)
    end

    def rm(list_label, item_index)
        val = @lists[list_label]
        val.remove_item(item_index)
    end

    def purge(list_label)
        val = @lists[list_label]
        val.purge
    end

    def up(list_label, item_index, optional_amount)
        val = @lists[list_label]
        val.up(item_index, optional_amount)
    end

    def down(list_label, item_index, optional_amount)
        val = @lists[list_label]
        val.down(item_index, optional_amount)
    end

    def swap(list_label, item_index_1, item_index_2)
        val = @lists[list_label]
        val.swap(item_index_1, item_index_2)
    end

    def sort(list_label)
        val = @lists[list_label]
        val.sort
    end

    def priority(list_label)
        val = @lists[list_label]
        val.print_priority
    end

    def print_board(list_label, optional_index=nil)
        val = @lists[list_label]
        if optional_index
            val.print_full_item(optional_index)
        else
            val.print
        end
    end

    def run
        print "\nEnter a command: "
        cmd, *args = gets.chomp.split(' ')

        case cmd
        when 'showall'
            showall
        when 'mklist'
            create_list(*args)
        when 'ls'
            ls
        when 'mktodo'
            mktodo(*args)
        when 'up'
            up(*args)
        when 'down'
            down(*args)
        when 'swap'
            swap(*args)
        when 'sort'
            sort
        when 'priority'
            priority(*args)
        when 'print'
            print_board(*args)
        when 'toggle'
            toggle(*args)
        when 'rm'
            rm(*args)
        when 'purge'
            purge(*args)
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized."
        end
        true
    end
end

#Uncomment to run from CMD (to exit press ctrl + c)
# b = TodoBoard.new

# while true
#     b.run
# end