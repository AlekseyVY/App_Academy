# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length != 0
        self.max - self.min
    else
        return nil
    end
  end

  def average
    if self.length == 0 
        return nil
    end
    self.sum / (self.length * 1.0)
  end

  def median
     self.sort!
     if self.length == 0
        return nil
     end
    if self.length % 2 == 0
       return (self[(self.length / 2) - 1] + self[(self.length / 2)]) / 2.0
    else
       return self[(self.length / 2)]
    end
  end

  def counts
    hash = Hash.new(0)
    self.each { |ele| hash[ele] += 1}
    hash
  end

  def my_count(val)
    counter = 0
    self.each { |ele| counter += 1 if ele == val}
    counter
  end

  def my_index(val)
    i = 100
    found = false
    self.each_with_index do |ele, idx|
        if ele == val
            if i > idx
                i = idx
            end
            found = true
        end
    end
    if found == true
        return i
    else
        return nil
    end
  end

  def my_uniq
    hash = Hash.new(0)
    arr = []
    self.each { |ele| hash[ele] += 1}
    hash.each_key { |k| arr << k}
    arr
  end

  def my_transpose
    new_arr = []
    self.each_with_index do |ele, i|
        arr = []
        ele.each_with_index do |num, j|
            arr << self[j][i]
        end
        new_arr << arr
    end
    new_arr
  end
  
end
