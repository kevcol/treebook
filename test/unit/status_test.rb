require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  test "that a status requires content" do
  status = Status.new
  assert !status.save
  assert !status.errors[:content].empty?
 end
 
 test "at least 2 letters long"
  status = Status.new
  status.content = "H"
  assert !status.save
  assert !status.errors[:content].empty?
end
