require 'spec_helper'
describe Setting do
  it "update_value_for_key should create a record" do
    Setting.destroy_all
    Setting.count.should == 0

    Setting.update_value_for_key 'foo', 'bar'
    Setting.count.should == 1
  end

  it "value should be stored" do
  	Setting.destroy_all

  	Setting.value_for_key('foo').should be_nil

  	Setting.update_value_for_key 'foo', 'bar'
  	Setting.value_for_key('foo').should == 'bar'

  	Setting.update_value_for_key 'foo', 'blah'
  	Setting.value_for_key('foo').should == 'blah'

  	Setting.count.should == 1
  end
end