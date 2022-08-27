require "bcrypt"
require_relative 'auth'

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = BCrypt::Password.create(password)
  end

  def check_password password
    @password == password
  end



  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  # def first_name
  #   @first_name
  # end

  # def last_name=(last_name)
  #   @last_name = last_name
  # end

  # def last_name
  #   @last_name
  # end

end

don = Student.new("Don", "Hernandez", "test@test.com", "don", "pass123")
# don.first_name = "Don"
# don.last_name = "Kim"
# don.email = "test5@test.com"
# don.username = "donkim"

p don.first_name
p don.last_name
p don.email
p don.username
p don.password

p don.check_password "pass123"

p don
