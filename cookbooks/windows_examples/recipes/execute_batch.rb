windows_batch "change administrator password" do
  code <<-EOH
    echo changing administrator password
    net user administrator #{node[:windows_examples][:administrator_password]}
    wmic UserAccount where "Name='administrator'" set PasswordExpires=false
  EOH
end