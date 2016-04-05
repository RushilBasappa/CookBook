class Recipe < ActiveRecord::Base
  belongs_to :chef
  has_many :reviews

  validates :name, presence: true,length: {minimum: 2}
  validates :summary,presence: true,length: {minimum: 5}
  validates :procedure,presence: true,length: {minimum:10}

  mount_uploader :picture, PictureUploader

  def self.search(search_term)
    where('name LIKE ? OR name LIKE ? OR name LIKE ? OR name LIKE ?',
          "#{search_term}",
          "#{search_term} %",
          "% #{search_term} %",
          "% #{search_term}")
  end
end
