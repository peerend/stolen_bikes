Rails.application.routes.draw do
match('/', {:via => :get, :to => 'bikes#index'})
match('/locations/', {:via => :get, :to => 'locations#index'})
match('/locations/', {:via => :post, :to => 'locations#create'})
match('/:id', {:via => :get, :to => 'locations#show'})
match('/:id', {:via => :post, :to => 'bikes#create'})

end
