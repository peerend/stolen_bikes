Rails.application.routes.draw do
match('/', {:via => :get, :to => 'bikes#index'})
match('/locations/', {:via => :get, :to => 'locations#index'})
match('/locations/', {:via => :post, :to => 'locations#create'})
match('/:id', {:via => :get, :to => 'locations#show'})
match('/locations/:id', {:via => [:patch, :put], :to => 'locations#update'})
match('/:id', {:via => :post, :to => 'bikes#create'})
match('/bikes/:id', {:via => :get, :to => 'bikes#show'})
match('/bikes/:id', {:via => [:patch, :put], :to => 'bikes#update'})
match('/bikes/:id', {:via => :delete, :to => 'bikes#destroy'})

end
