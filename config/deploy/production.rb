set :stage, :production
set :rails_env, :production
set :deploy_to, "/home/deploy/shop_server"
server "ec2-34-213-240-110.us-west-2.compute.amazonaws.com", user: "deploy", roles: %w(web app db)