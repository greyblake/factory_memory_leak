require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "the memory leak" do
    10.times do |index|
      puts "\nIteration: #{index}"

      ObjectSpace.each_object(Array) do |array| if array.last.is_a?(FactoryGirl::Trait) && array.size > 1
          puts "Traits: #{array.size}"
          puts "Unique traits: #{array.uniq.size}"
        end
      end

      FactoryGirl.build(:user, :with_name)
    end
  end
end
