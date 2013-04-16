Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '644356308913795', '8e5874ab7877617726a093de801013ba'
end