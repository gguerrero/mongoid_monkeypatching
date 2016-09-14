require 'rspec_helper'

describe Mongoid::Criteria do

  before(:each) do
    5.times { |i| Foo.create!(bar: "BAR_#{i}", baz: "BAZ") }
    @criteria = Foo.where(baz: "BAZ")
  end

  describe "'first' and 'last' method" do
    it "should order 'asc' ID by default when call" do
      expect(@criteria.scoped_first.scoped.options[:sort]).to eq({"_id"=>1})
      expect(@criteria.scoped_last.scoped.options[:sort]).to  eq({"_id"=>1})
    end

    it "should not apply default order if some other is applied to the scope" do
      expect(@criteria.desc(:created_at).scoped_first.scoped.options[:sort]).to eq({"created_at"=>-1})
      expect(@criteria.desc(:created_at).scoped_last.scoped.options[:sort]).to eq({"created_at"=>-1})
    end

    it "should not return last document as the first document of the collection" do
      expect(@criteria.first.id.to_s).not_to eql(@criteria.last.id.to_s)
    end
  end

end
