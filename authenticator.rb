users = [
  { username: "admin", password: "admin" },
  { username: "user", password: "user" },
  { username: "guest", password: "guest" }
]

def auth_user username, password, list_of_users
  list_of_users.each do |user|
    if user[:username] == username && user[:password] == password
      return user
    end
  end

  return "User credentials not found"
end


p 20.times {puts "-"}
counter = 3



while counter > 0
  puts "Press 'q' to quit or any other key to continue"
  input = gets.chomp

  break if input == "q"

  counter -= 1

  puts "Enter your username"
  username = gets.chomp

  puts "Enter your password"
  password = gets.chomp

  auth = auth_user(username, password, users)

  puts auth

end
