class Tutorial < ActiveRecord::Base
  attr_accessible :content, :name

  default_scope order('name')
end
