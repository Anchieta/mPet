ActionController::Routing::Routes.draw do |map|
  map.resources :acesso_unidades
  map.resources :acessos
  map.resources :atividade_unidades
  map.resources :atividades
  map.resources :bairro_micros
  map.resources :bairros
  map.resources :categorias
  map.resources :cidades
  map.resources :contatos
  map.resources :destaques
  map.resources :empresa_formapagtos
  map.resources :empresa_tvs
  map.resources :empresas
  map.resources :formapagtos
  map.resources :macros
  map.resources :micros
  map.resources :resenhas
  map.resources :tplogradouros
  map.resources :tvs
  map.resources :unidades
  
  map.connect '/path_macros/:id', :controller=>'macros', :action=>'show'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
