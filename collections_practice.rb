def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort { |a, b| b <=> a }
end

def sort_array_char_count(arr)
  arr.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(arr)
  new_arr = []
  hold_it = nil
  arr.each_with_index do |n, i|
    if i == 1
      hold_it = n
    elsif i == 2
      new_arr << n
      new_arr << hold_it
    else
      new_arr << n
    end
  end
  new_arr
end

def reverse_array(arr)
  new_arr = []
  arr.each do |n|
    new_arr.unshift(n)
  end
  new_arr
end

def find_a(arr)
  arr.map { |e| e if e[0].downcase == "a" }.compact
end

def kesha_maker(arr)
  arr.map do |n|
    n.split("").map.with_index { |l, i| i == 2 ? "$" : l }.join("")
  end
end

def sum_array(arr)
  arr.inject(0){ |sum, n| sum + n}
end

def add_s(arr)
  arr.map { |n| n != arr[1] ? n = n << "s" : n }
end
