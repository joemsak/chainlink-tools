class Advertiser < ActiveRecord::Base
  default_scope order('position ASC')
  
  scope :active, where('ends >= ?', Date.today)
  scope :paid, where('paid = ?', true)
  
  scope :current, where('starts <= ? AND ends >= ?', Date.today, Date.today)
  scope :upcoming, where('starts > ?', Date.today)
  scope :archived, where('ends < ?', Date.today)
  scope :unpaid, where('paid = ?', false)
  
  validates :name, :website, :uniqueness => true
  validates :name, :website, :starts, :ends, :presence => true
  validates :website, :format => { :with => /^(http|https):\/\/[a-z0-9]+([-.]{1}[a-z0-9]+)*.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/, :message => 'is invalid, make sure it starts with http://' }
  
  validate :ends_after_start
  before_save :check_position
  
protected
  def ends_after_start
    errors.add(:ends, "date must be after `starts` date") if starts >= ends
  end
  
  def check_position
    self.position = Advertiser.maximum('position') + 1 if position.blank?
  end
end
