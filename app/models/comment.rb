# -*- encoding : utf-8 -*-
class Comment < ActiveRecord::Base
  
  attr_accessible :body, :commenter,:blog

  belongs_to :blog
end
