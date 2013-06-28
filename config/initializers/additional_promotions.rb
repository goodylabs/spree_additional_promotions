module Spree
  class Promotion
    module Rules
      class ProductCount < Spree::PromotionRule
        preference :product_count_quantity_treshold, :decimal, :default => 100.00

        attr_accessible :preferred_product_count_quantity_treshold

        def eligible?(order, options = {})
        	puts "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ product_count_quantity_treshold"
          order.line_items.each { |item| return true if item.quantity >=  preferred_product_count_quantity_treshold  }
        end
      end

    end
  end
end

Rails.application.config.spree.promotions.rules <<  Spree::Promotion::Rules::ProductCount 
