require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test " a user should enter a first name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:first_name].empty?
  end
  
  test " a user should enter a last name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:last_name].empty?
  end
  
  test " a user should enter a profile name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:profile_name].empty?
  end
  
  test "user shoudl have unique profile name" do
  	user = User.new
  	user.id = 3
  	user.email = "neuziln@gmail.com"
  	user.profile_name = "neuziln"
  	user.first_name = "Nathan"
  	user.last_name = "Neuzil"
  	user.password = "nathan18"
  	user.password_confirmation = "nathan18"
  	puts user.errors.inspect
  end
  
  test " profile name shoudl have no spaces
	  user = User.newuser.profile_name = "my Profile with spaces"
	  assert !user.save
	  assert !user.errors[:profile_name].empty?
	  assert user.errors[:profile_name].include?("must be formated correctly.")
	end
end
