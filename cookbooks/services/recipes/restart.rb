require 'chef/providers'

service node[:services][:name] do
  case node[:platform]
    when "windows"
      Chef::Provider::Service::Windows
  end
  action [:restart]
end