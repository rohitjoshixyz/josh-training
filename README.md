# josh-training
This repository will hold the problem statements given to me by my mentor in the README. After implementing the solution in my feature branch I will send a PR to master and ask my mentor to review it.

---

### 1. Exponentor: 
Write a lambda that will calculate base^expo1^expo2^expo3 in different ways. Try to do that in a single lambda function

### 2. Assignment for git  

Task after adding atleast 7 points in a BioData file:
1. Create a new branch and create a new file containing details about basic git and vi commands.
2. Also create another file containing details about following git commands:
  - git reset
  - gir revert
  - git cherry-pick
  - git rebase
  - difference between merge and      rebase
3. Push the two new files on your branch. Raise PR (Pull Request) against the master branch.
4. Design a database schema for any application of your choice. For example: BookMyShow application, FoodDelivery application etc.
5. You can write details about the schema in a seperate file and branch and raise it's PR as well.

### 3. File Compression Assignment for regex, ruby hashes
1. A File compression algorithm generates following imperfect compression string
- x1a5b123b9c10c7c4d15x14a12 <-- Imperfect compression string
- a17b132c21d15x15 <-- Perfect compression string

Generate perfect compression string by accepting Imperfect compression string. Perfect string contains unique sorted characters whose number of occurences are summed up.

2. Write regex to match with valid mobile number, email, IP address and URL for practice

### 4. Library System Assignment for Classes and Objects in Ruby
Design a library management system that has the following constraints:
  1. One Member can borrow only one book at a time.
  2. There is only one copy of each book in the library.
  
 You should include classes like `Book`, `Member`, `Library` and implement basic functionality of `borrow_book()`, `return_book()`, `check_library_status()`.

Read [RubyDocs](https://ruby-doc.org/stdlib-2.7.0/), [Ruby Style Guide](https://github.com/rubocop-hq/ruby-style-guide) and about `self` keyword usage in different scopes. Also read about `mutablity` in Ruby

### 5. Blocks, Procs and Lambdas
The Assignment 1: [Exponentor](https://github.com/rohitjoshixyz/josh-training/blob/master/01_exponentor.rb) is an example of using lambda.

Demonstrate the use of Blocks, Procs and Lambdas in Ruby.

Read more about [Blocks, Procs and Lambdas](https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/)

### 6. Modules in Ruby - Real estate management

Design a Property management system through which we can buy, rent a property or book a hotel room. Use `modules` for the same.

`include` will include all methods defined in it as instance methods

`extend` will include all methods as class methods

`prepend` will include and give priority to the included methods in method lookup

Modules have special class methods called `hooks` that are invoked at certain events such as `include`, `extend`, `prepend` named as `self.included(base)` which accept one parameter `base` that contains the class name that includes that particular module.

Multiple methods with same name or a specific module method can be resolve using scope resolution operator `::` such as `Walk::Human`where `Walk` is the module name and `Human` is the method name

### 7. Inheritance in Ruby - Bank Management System

Develop a Banking System in which customer can open his/her account. Use `inheritance` and `modules`

  1. The account has the functionality of `deposit()`, `withdraw()` and `get_balance`. 
     The account is identified by `account_number`
  2. There are two kinds of account; `CurrentAccount` and `SavingsAccount`.
  3. Each kind of accounts will have different `rate of interest`.
  4. Accept `month` from user and show total amount.
