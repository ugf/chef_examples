chef_examples
=============

How to install chef:
http://wiki.opscode.com/display/chef/Installing+Chef+Client+on+Windows

1. run installer
  chef-client-latest.msi
2. verify install
  C:\opscode\chef\bin>chef-client --version

  you should see: Chef: 10.16.2

3. configure chef solo
 - create file C:\opscode\chef\bin\solo.rb with content:
   file_cache_path "/Projects/github/chef_examples"
   cookbook_path "/Projects/github/chef_examples/cookbooks"

  - create file C:\opscode\chef\bin\node.json with content:
    {
      "services": {
        "name": "aspnet_state"
      },
      "run_list": [ "recipe[services::restart]" ]
    }

4. execute chef solo
  C:\opscode\chef\bin>chef-solo -c solo.rb -j node.json
  you should see the recipe getting executed and the aspnet_state service restarted
