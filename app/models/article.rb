class Article < ApplicationRecord
  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 200 }

  belongs_to :user

  has_many :article_categories
  has_many :categories, through: :article_categories

  def self.search(search)
    if search
      article = Article.find_by(title: search)
      if article
        self.where(id: article.id)
      else
        Article.all
      end
    else
      Article.all
    end
  end
end
