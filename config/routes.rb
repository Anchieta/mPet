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
  map.resources :micros, :collection => {:back_to_new_partial => :post}
  map.resources :resenhas
  map.resources :tplogradouros
  map.resources :tvs
  map.resources :unidades
end
