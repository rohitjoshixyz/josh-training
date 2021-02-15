class Listing
  attr_accessor :type
  def initialize(listing_type)
    @type = listing_type
    if listing_type == "Buy"
      Listing.include Buy
    elsif listing_type == "Rent"
      Listing.include Rent
    elsif listing_type == "Hotel"
      Listing.include Hotel
    else
      puts "Invalid property listing type"
    end
  end
end

module Common
  attr_accessor :title, :description, :pricing_scale, :price, :location
end

module Buy
    include Common
    attr_accessor :area_in_sq_ft
end

module Rent
    include Common
    attr_accessor :area_in_sq_ft

    def rent_calculator(duration_in_months)
      duration_in_months * price
    end
end

module Hotel
    include Common
    attr_accessor :room_type_multiplier

    def rent_calculator(duration_in_days)
      duration_in_days * price * room_type_multiplier
    end
end

module Documents
  module Government
    attr_accessor :aadhar, :pan
    def print_government_documents
      puts @aadhar
      puts @pan
    end
  end
  
  module Rental
    attr_accessor :rent_agreement
    def print_rental_documents
      puts @rent_agreement
    end
  end

  module Travel
    attr_accessor :passport, :visa
    def print_travel_documents
      puts @passport
      puts @visa
    end
  end
end

class Customer
  attr_accessor :name, :role

  def initialize(role, name)
    case role
    when "Owner"
      Customer.include(Documents::Government)
      @aadhar = "Aadhar Card"
      @pan = "PAN card"
    when "Tenant"
      Customer.include(Documents::Government)
      @aadhar = "Aadhar Card"
      @pan = "PAN card"
      Customer.include(Documents::Rental)
      @rent_agreement = "Rent Agreement"
    when "Guest"
      Customer.include(Documents::Government)
      @aadhar = "Aadhar Card"
      @pan = "PAN card"
      Customer.include(Documents::Travel)
      @passport = "Passport"
      @visa = "Visa"
    end
    @name = name
    @role = role
  end
end

class JoshRealty
  attr_accessor :property_list, :customer_list
  def initialize
    @property_list = []
    @customer_list = []
  end

  def add_property(type)
    if type == "Hotel" || type == "Buy" || type == "Rent"
      property_list.push(Listing.new(type))
    end
  end

  def add_customer(role,name)
    if role == "Owner" || role ==  "Tenant" || role == "Guest"
      customer_list.push(Customer.new(role,name))
    end
  end

  def show_property_list
    puts "---------------- Properties Available -------------------------"
    @property_list.each do |property|
      puts "Type of property: #{property.type}"
      puts "Title: #{property.title}"
      puts "Description: #{property.description}"
      puts "Price: #{property.price} | #{property.pricing_scale}"
      puts "Location: #{property.location}"
      puts "-------------------------------------------------------------"
    end
  end

  def show_customer_list
    puts "---------------- Customer List -------------------------"
    @customer_list.each do |customer|
      puts "Wants to become: #{customer.role}"
      puts "Name: #{customer.name}"
      
      puts "Documents required:"
      puts customer.aadhar
      puts customer.pan
      puts customer.rent_agreement if customer.role == "Tenant"
      puts "#{customer.passport}\n#{customer.visa}" if customer.role == "Guest"
      puts "-------------------------------------------------------------"
    end
  end

  def perform_transaction(listing, customer)
    # Out of scope of this assignment
  end
end

josh_realty = JoshRealty.new

# Adding Property listings
flat_in_kothrud = Listing.new("Buy")
flat_in_kothrud.title = "2BHK flat in Kothrud for Sale"
flat_in_kothrud.description = "Fully funrnished, West open, Reserved Parking, Lift, 24 hours
water and electricity supply"
flat_in_kothrud.pricing_scale = "One time payment"
flat_in_kothrud.price = 9500000
flat_in_kothrud.location = "Om Avishkar society, Near MIT college, Pune - 411038"

josh_realty.property_list.push(flat_in_kothrud)

flat_in_bavdhan = Listing.new("Rent")
flat_in_bavdhan.title = "1BHK flat to Rent"
flat_in_bavdhan.description = "Fully funrnished, East open, Reserved Parking, Lift, 24 hours
water and electricity supply"
flat_in_bavdhan.pricing_scale = "Rent per month. 2 months' rent as deposit"
flat_in_bavdhan.price = 10000
flat_in_bavdhan.location = "Pebbles Urbainia opposite Josh Software"

josh_realty.property_list.push(flat_in_bavdhan)

# Adding Customers
rohit = Customer.new("Owner","Rohit")
akshay = Customer.new("Tenant","Akshay")
josh_realty.customer_list.push(rohit)
josh_realty.customer_list.push(akshay)

# Printing listings and custiomers
josh_realty.show_property_list
josh_realty.show_customer_list

# In the above program, the Documents::Rental is getting included only for Akshay
# and rohit object does not have a property rent_agreement as he wants to own and
# so Documents::Rental is not included and initialized for that instance
