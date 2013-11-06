FaqsPage::Engine.routes.draw do
  get '/:category', :controller => :faq_entries, :action => 'index'

  root :to => "faq_entries#index" , :as => :faqs
end
