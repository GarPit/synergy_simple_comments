class SimpleComment < ActiveRecord::Base
  default_scope order("created_at DESC")
  attr_accessible :name, :email, :phone, :message
  validates :name, :phone, :presence => true
  validates :email, :format => /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i, :allow_blank =>true
end
