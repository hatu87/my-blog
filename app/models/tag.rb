class Tag < ActiveRecord::Base
    has_many :tagging
    has_many :articles, :through => :tagging
end
