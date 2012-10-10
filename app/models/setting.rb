class Setting < ActiveRecord::Base
  attr_accessible :key, :value

  def self.update_value_for_key(key, value)
  	entry = self.find_or_create_by_key(key)
  	entry.value = value
  	entry.save!
  end

  def self.value_for_key(key)
  	entry = self.find_by_key(key)
  	entry ? entry.value : nil
  end
end
