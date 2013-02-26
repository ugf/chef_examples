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
      "run_list": [
        "recipe[services::restart]"
      ]
    }

4. execute chef solo
  c:\opscode\chef\bin>chef-solo -c solo.rb -j node.json
  you should see the recipe getting executed and the aspnet_state service restarted

How to execute chef from a url
http://wiki.opscode.com/display/chef/Chef+Solo

1. to create a tar file  run the following in the chef_examples folder:

  tar zcvf chef-solo.tar.gz cookbooks

2. to get to the tar based on a sha for a commit:

  https://github.com/ugf/chef_examples/blob/bda3981e7d468978e30d1c62d9c118642eb36b92/chef-solo.tar.gz

3. run chef using repo from a url

  - create file C:\opscode\chef\bin\solo.rb with content:
 
    file_cache_path "/var/chef-solo"
    cookbook_path "/var/chef-solo/cookbooks"
    json_attribs "http://s3.amazonaws.com/ugfinfrastructure/chef/node.json"
    recipe_url "http://s3.amazonaws.com/ugfinfrastructure/chef/chef-solo.tar.gz"

  - run chef-solo -c solo.rb
