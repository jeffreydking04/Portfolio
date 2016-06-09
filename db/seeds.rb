if User.first.nil?
  jeffrey = User.new
  jeffrey.name = 'jeffrey'
  jeffrey.password = 'fuzzylumpkins'
  jeffrey.save!
end