Rails.application.routes.draw do
match('/', {:via => :get, :to => 'bikes#index'})
match('/locations/', {:via => :get, :to => 'locations#index'})
match('/locations/', {:via => :post, :to => 'locations#create'})
match('/locations/:id', {:via => :get, :to => 'locations#show'})
match(':id/new-bike/', {:via => :get, :to => 'bikes#new'})
match('/bikes/', {:via => :post, :to => 'bikes#create'})
match('/locations/:id', {:via => [:patch, :put], :to => 'locations#update'})
match('/bikes/:id', {:via => :get, :to => 'bikes#show'})
match('/edit/:id', {:via => :get, :to => 'bikes#edit'})
match('/bikes/:id', {:via => [:patch, :put], :to => 'bikes#update'})
match('/bikes/:id', {:via => :delete, :to => 'bikes#destroy'})

end
