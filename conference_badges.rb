def badge_maker(names)
   "Hello, my name is #{names}."
end

def batch_badge_creator(names)
    names.map{|name| badge_maker(name)}
end

def assign_rooms(names)
    new_arr = []
    names.each_with_index do |name, room|
        new_arr << "Hello, #{name}! You'll be assigned to room #{room+1}!"
    end
    new_arr
end

def printer(attendees)
    batch_badge_creator(attendees).each {|badge| puts badge}
    assign_rooms(attendees).each{|rooms| puts rooms}
end 