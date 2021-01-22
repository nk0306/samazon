class Category < ApplicationRecord
    has_many :products
    
    scope :major_list, -> { pluck(:major_category_name).uniq }
     scope :request_category, -> (category) { find(category.to_i) }
end
