# Write Regex for email phone_number IP URL
# Read about each_with_index, map(), with_index, select, collect
def regex_matcher(string, type)
  return false if string.nil?()
  case type
  when "email"
    string.match(/^\w+@\w+\.com$/)
  when "mobile"
    string.match(/^\d{10}$/)
  when "ip"
    valid_part_count = 0
    ip_array = string.split(".")
    ip_array.each do |part|
      if (part.match(/^\d{1,3}$/) and part.to_i <= 255 and part.to_i >= 0)
        valid_part_count += 1
      end
    end
    if valid_part_count == 4
      return true
    else
      return false
    end
  when "URL"
    string.match(/[(http)(https)]:\/\/(www.)?\w+\.\w+/)
  end
end

regex_matcher("rohit@joshi.com", "email")
regex_matcher("8554801616", "mobile")
regex_matcher("192.168.1.1", "ip")
regex_matcher("https://www.google.com", "URL")

if(regex_matcher("rohit@joshi.com", "email"))
  puts true
else
  puts false
end
