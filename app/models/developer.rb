class Developer < ActiveRecord::Base
  
  def self.search(query)
    search = "%#{query}%"
    find(:all, :conditions => ['name LIKE ? OR email LIKE ? OR observation LIKE ?', search, search, search])
  end
end
