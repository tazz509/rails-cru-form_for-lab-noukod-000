class Artist < ActiveRecord::Base
  has_many :songs

  def slug
    name.gsub(" ", "-").downcase
  end

  def find_by_slug slug
    self.all.find{ |instance| instance.slug == slug }
  end
end
