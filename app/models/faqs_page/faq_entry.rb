module FaqsPage
  class FaqEntry < ActiveRecord::Base
    belongs_to :category, :inverse_of => :faq_entries, :class_name => 'FaqsPage::Category'
  end
end
