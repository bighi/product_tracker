class Product < ApplicationRecord
  belongs_to :user

  validates :name,
    presence: true

  validates :price,
    presence: true,
    numericality: true

  validates :date_of_purchase,
    presence: true

  def price_per_day
    end_date = date_of_disuse || Date.today

    price.to_f / (end_date - date_of_purchase).to_i
  end

  def price_per_month
    price_per_day * 30
  end

end
