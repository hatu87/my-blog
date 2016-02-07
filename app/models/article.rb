class Article < ActiveRecord::Base
  has_many :comments
  has_many :tagging
  has_many :tags, :through => :tagging

  def tags_list
    if self.tag_list.blank?
      []
    else
      self.tag_list.split(',')
    end

  end

  def comments_count
    self.comments.count
  end

  def self.search(search)
    if search
      self.where('title like ?', "%#{search}%")
    else
      self.all
    end
  end

  def self.search_tag(tag)
    if tag
      self.where('tag_list like ?', "%#{tag}%")
    else
      self.all
    end
  end
end
