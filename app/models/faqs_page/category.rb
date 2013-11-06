module FaqsPage
  class Category < ActiveRecord::Base
    has_many :faq_entries, :inverse_of => :category
  end
end
