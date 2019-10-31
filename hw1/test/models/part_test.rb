require 'test_helper'

class PartTest < ActiveSupport::TestCase
    
    test "for empty name" do
        p = Part.create({:name => ""})
        refute p.valid?
        refute p.save
        assert_equal({:name=>["can't be blank", "only allows letters"]}, p.errors.messages)
    end

    test "for non-alphabetical name" do
        p = Part.create({:name => "343"})
        refute p.valid?
        refute p.save
        assert_equal({:name=>["only allows letters"]}, p.errors.messages)
    end
end
