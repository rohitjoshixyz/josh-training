class Member
  attr_accessor :name, :book_issued, :status

  def initialize(name)
    @name = name
    @status = "No book taken"
  end
end

class Book
  attr_accessor :name, :issued_to, :status

  def initialize(name)
    @name = name
    @status = "New Book"
  end

  def issue_to_member(member)
    if (@issued_to.nil?() || @status == "Available")
      if (member.status == "No book taken")
        member.status = "Book taken"
        @issued_to = member
        @status = "Not Available"
        puts "#{@name} issued to #{member.name}"
      else
        puts "Please return earlier borrowed book first"
      end
    else
      puts "Sorry, #{@name} is not available. Please try another book"
    end
  end

  def process_return(member)
    if (@issued_to.nil?())
      puts "Sorry, this book wasn't borrowed from the library"
      
    elsif (@issued_to.name != member.name || member.status == "Not taken" || @status == "Available")
      puts "Cannot process return. This book was not borrowed by you"
    else
      @status = "Available"
      @issued_to.status = "No book taken"
      puts "#{@name} returned by #{member.name}"
    end
  end
end

class Library
  attr_accessor :member_list, :book_list

  def initialize()
    @book_list = []
    @member_list = []
  end

  def populate_books(book_names)
    book_names.each_with_index do |book_name, i|
      @book_list[i] = Book.new(book_name)
    end
  end

  def populate_members(member_names)
    member_names.each_with_index do |member_name, i|
      @member_list[i] = Member.new(member_name)
    end
  end

  def print_members()
    @member_list.each_with_index { |member, i| puts (i+1).to_s + ". " + member.name}
  end

  def print_books()
    @book_list.each_with_index { |book, i| puts (i+1).to_s + ". " + book.name}
  end

  def show_library_status
    puts ""
    puts "Name of Book      Issue Status"
    puts "-----------------------------------------------"
    @book_list.each_with_index do |book, i|
      issue_status = (book.issued_to.nil?() || book.status == "Available" ? book.status : book.issued_to.name)
      puts (i + 1).to_s + ". " + book.name + "      " + issue_status
    end
  end
end

book_list = ["Harry Potter", "Wings of Fire", "Famous Five", "Secret Seven", "H. C. Verma"]
member_list = ["Rohit Joshi", "Akshay Birajdar", "Neha Vyas", "Akshay Kakade"]
vishwas_library = Library.new

vishwas_library.populate_books(book_list)
vishwas_library.populate_members(member_list)

vishwas_library.show_library_status()

choice = ""
while choice != "4"
  puts "------------Vishwas Library--------------"
  puts "1. Show library status"
  puts "2. Issue to member"
  puts "3. Process return"
  puts "4. Exit"
  puts "Enter your choice: "
  choice = gets.chomp

  case choice
  when "1"
    vishwas_library.show_library_status()
  when "2"
    puts "Enter member number who wants to borrow: "
    vishwas_library.print_members()
    member_number = gets.chomp.to_i - 1
    puts "Enter book number to be borrowed: "
    vishwas_library.print_books()
    book_number = gets.chomp.to_i - 1
    vishwas_library.book_list[book_number].issue_to_member(vishwas_library.member_list[member_number])
  when "3"
    puts "Enter member number who wants to return: "
    vishwas_library.print_members()
    member_number = gets.chomp.to_i - 1
    puts "Enter book number to be returned: "
    vishwas_library.print_books()
    book_number = gets.chomp.to_i - 1
    vishwas_library.book_list[book_number].process_return(vishwas_library.member_list[member_number])
  end
end
