require 'test_helper'

class MakeTest < ActiveSupport::TestCase
    
  test "for empty name" do
      m = Make.create({:name => "", :country => ""})
      refute m.valid?
      refute m.save
      assert_equal({:name=>["can't be blank", "only allows letters"], :country=>["can't be blank", "only allows letters"]}, m.errors.messages)
  end

    test "for non-alphabetical name" do
        m = Make.create({:name => "343", :country => "234"})
        refute m.valid?
        refute m.save
        assert_equal({:name=>["only allows letters"], :country=>["only allows letters"]}, m.errors.messages)
    end
end
