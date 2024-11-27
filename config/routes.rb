Rails.application.routes.draw do
  resources :scanned_texts
  get 'main/index'
  get "up" => "rails/health#show", as: :rails_health_check
  get 'barcodes/scan', to: 'barcodes#scan'
  post 'barcodes/process', to: 'barcodes#process_barcode'

  root "main#index"
end
