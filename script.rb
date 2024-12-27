#create a hash with key equal to buy-sell and 
#value is an array of the days
def stock_picker(days)
  output=days.each_with_index.reduce(Hash.new{Array.new}) do |hash, (first_day, index)|
    days.each_with_index do |sec_day, sec_index|
      if sec_index>index
        gain=sec_day-first_day
        hash[gain]=[index, sec_index]
      end
    hash
    end
    hash
  end
  largest=output.keys.max
  puts "Days #{output[largest]} for $#{days[(output[largest])[1]]}-$#{days[(output[largest])[0]]}==$#{largest}"
end

stock_picker([17,3,6,9,15,8,6,1,10])
