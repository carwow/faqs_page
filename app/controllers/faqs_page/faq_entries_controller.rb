module FaqsPage
  class FaqEntriesController < ::ApplicationController
    layout :get_category_template

    def index
      @category = FaqsPage::Category.where(:name => params[:category]).first


      if @category
        @faq_entries = FaqsPage::FaqEntry.where(:category_id => @category.id).order(:position)
      else
        @faq_entries = FaqsPage::FaqEntry.where(:category_id => nil).order(:position)
      end
    end

    private
    def get_category_template
      category_name = @category.try(:name) || 'default'
      FaqsPage.config.category_templates[category_name] || 'application'
    end
  end
end
