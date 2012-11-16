windows_batch "change administrator password" do
  code <<-EOH
    echo changing administrator password
    net user administrator @Password02
  EOH
end