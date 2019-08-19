class User
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :date_of_birth, Date
  property :email, String
  property :email_confirmed, Boolean, default: false
  property :last_login, Time
  property :password, Text

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def login(password)
    return false unless password == self.password

    self.update(last_login: Time.now)
    true
  end
end

