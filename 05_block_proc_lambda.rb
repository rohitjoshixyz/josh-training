def my_each_method(element_array)
  for element in element_array
    yield(element)
  end
end

name_array = ["Rohit", "Ganesh", "Subhjit"]

my_each_method(name_array) do |name|
  puts name
end

def my_each_with_index_method(element_array)
  count = 0
  for element in element_array
    puts count += 1
    yield(element)
  end
end

my_each_with_index_method(name_array) do |name|
  puts name
end

# Use this as good coding practice
def explicit_block(&block)
  block.call # Same as yield
end

explicit_block() do 
  puts "Hello"
end

def explicit_block_with_params(full_name, &block)
  first_name = full_name[0]
  last_name = full_name[1]
  block.call(first_name, last_name)
end

full_name = ["Rohit", "Joshi"]

explicit_block_with_params(full_name) do |first_name, last_name|
  puts "#{first_name} #{last_name}"
end

# Lambda
print_name = -> (name) {puts name}
print_name.call("Rohit")

# Proc
print_number = Proc.new {|number| puts number}
print_number.call(45)

# Procs and Lambda have the ability to store the queried information (closure) 
# and hence are efficient Run the below function in IRB to see that it calls
# the get_short_name funciton only once and keeps all local variables in scope 

def get_short_name
  query = {
    "India" => "IND",
    "Pakistan" => "PAK",
    "Australia" => "AUS"
  }
  -> (country) { puts query[country] }
end

short_name = get_short_name # Will store last line Lambda

short_name.call("India")
short_name.call("Australia")
