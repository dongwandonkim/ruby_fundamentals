module AuthUser

  users = [
    { username: "admin", password: "admin" },
    { username: "user", password: "user" },
    { username: "guest", password: "guest" }
  ]

  def self.create_hash_digest password
    BCrypt::Password.create(password)
  end

  def self.verify_hash_digest password
    BCrypt::Password.new(password)
  end

  def self.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user|
      if user[:username] == username && verify_hash_digest(user[:password]) == password
        return user
      end
    end

    return "User credentials not found"
  end
end
