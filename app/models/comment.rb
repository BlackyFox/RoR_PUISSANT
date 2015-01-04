# -*- coding: utf-8 -*-
class Comment < ActiveRecord::Base
  belongs_to :game
  validate :empty_or_not
  
  def empty_or_not
    errors.add(:user_name, 'Le nom est obligatoire') if user_name.empty?
    errors.add(:body, 'A quoi bon mettre un commentaire sans commentaire ?') if body.empty?
  end
end
