class Article < ActiveRecord::Base
  has_many :comments
  def self.search(search)
    if search
      self.where('title like ?', "%#{search}%")
    else
      self.all
    end
  end
end
