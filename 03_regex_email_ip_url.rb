# Write Regex for email phone_number IP URL
# Read about each_with_index, map(), with_index, select, collect

email = "rohit@joshi.com"
mobile = "8554801616"

if email.match(/^\w+@\w+\.com$/)
  puts "valid email" 
else 
  puts "invalid email"
end

if mobile.match(/^\d{10}$/)
  puts "valid mobile" 
else 
  puts "invalid mobile"
end

def ip_matcher(ip)
  valid_part_count = 0
  ip_array = ip.split(".")

  ip_array.each do |part|
    if (part.match(/^\d{1,3}$/) and part.to_i <= 255 and part.to_i >= 0)
      valid_part_count += 1
    else 
      return "Invalid IP"
    end
  end

  if valid_part_count == 4
    return "valid IP"
  else
    return "invalid IP"
  end
end

puts ip_matcher("13.25.1.255")

def url_matcher(url)
  if url.match(/[(http)(https)]:\/\/(www.)?\w+\.\w+/)
    puts "valid URL" 
  else 
    puts "invalid URL"
  end
end

url_matcher("https://www.google.com")