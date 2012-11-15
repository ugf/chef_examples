service_name = 'aspnet_state'

service service_name do
  #provider Chef::Provider::Service::Windows
  action :start
end