
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a,b|
        b <=> a
    end
end

def sort_array_char_count(array)
    array.sort do |a,b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    array.insert(1, array.delete_at(2))
    return array
end

def swap_elements_from_to(array, index, destination_index)
    array.insert(array[destination_index], array.delete_at(index))
end

def reverse_array(array)
    array.sort do |a,b|
        array.index(b) <=> array.index(a)
    end
end

def kesha_maker(array)
    new_array=[]
    array.each do |string|
        work_string = string.split("")
        work_string[2] = "$"
        new_array << work_string.join("")
    end
    new_array
end

def find_a(array)
    array.select do |string|
        string.start_with?("a")
    end
end

def sum_array(array)
    array.inject {|sum,n| sum + n}
end

def add_s(array) 
    array.each_with_index.collect do |element, index|  
        if index != 1 
            array[index] = "#{array[index]}s"
        else
            array[index] = array[index]
        end
    end
end
