Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '116296278932719', 'ede5f6627fecbbc72101b9d540cd9d10'
  provider :github, '48d4a611c4c8bb803184', '37d9c0d85d88df459bfcfc0658929ea09b9575b3',scope: 'user,repo,gist'
end
