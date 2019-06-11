class Store < ActiveRecord::Base
    has_many :employees
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_or_equal_to: 0 }
    validate :apparel?

    def apparel?
        if (:womens_apparel == false) && (:mens_apparel == false)
            errors.add("The store must sell either men's or women's clothing")
        end
    end

end
