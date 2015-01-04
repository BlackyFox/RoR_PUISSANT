class Game < ActiveRecord::Base
  has_many :comments
  mount_uploader :picture, PictureUploader
  validate :empty_or_not

  def empty_or_not
    errors.add(:name, 'Le titre est obligatoire') if name.empty?
  end
end
