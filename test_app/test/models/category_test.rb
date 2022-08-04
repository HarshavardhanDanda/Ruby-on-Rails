require 'test_helper'

class CategoryTest < ActiveSupport::TestCase 

  #executes before every test
  def setup 
    @category= FactoryGirl.build(:category)
    #@category= FactoryGirl.create(:category, name: "Horror")
    #@categories= FactoryGirl.create_list(:category,10)
  end 

  test "category should be valid" do 
   #@category = Category.new(name: "Sports")
   #@category=Category.first
   assert_raises(Exception){
    raise Exception.new("Name not allowed")   if @category.valid?
   }
    
  end

  test "name should be present" do 
    @category.name=" "
    assert_not @category.valid?
  end

  test "name should be unique" do 
    @category.save 
    @category2=FactoryGirl.build(:category)
    assert_not @category2.valid?
  end

  test "name should not be too long" do 
    @category.name="a"*26 
    assert_not @category.valid?
  end

  test "name should not be too short" do 
    @category.name="aa"
    assert_not @category.valid?
  end




end