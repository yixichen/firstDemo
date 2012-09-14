# -*- encoding : utf-8 -*-
class Blog < ActiveRecord::Base
  attr_accessible :content, :name, :title,:tags_attributes
  validates :name, :presence=>true
  validates :title,:presence=>true,:length =>{:minimum=>5}
  has_many :comments,:dependent => :destroy
  has_many :tags
  accepts_nested_attributes_for :tags,:allow_destroy =>:true,:reject_if => proc { |atters| atters.all? { |k,v| v.blank?  }}
end
