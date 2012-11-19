#windows_batch "change administrator password" do
#  code <<-EOH
#    net user administrator #{node[:windows_examples][:administrator_password]}
#    wmic UserAccount where "Name='administrator'" set PasswordExpires=false
#  EOH
#end

powershell "change administrator password" do
  script = <<-EOH
    write-output "changing password to: #{node[:windows_examples][:administrator_password]}"
    net user administrator #{node[:windows_examples][:administrator_password]}
    wmic UserAccount where "Name='administrator'" set PasswordExpires=false
  EOH
  source(script)
end
