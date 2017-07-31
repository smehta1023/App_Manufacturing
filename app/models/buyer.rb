class Buyer < ActiveRecord::Base

  belongs_to :user
  has_many :leads
  has_many :projects

end
