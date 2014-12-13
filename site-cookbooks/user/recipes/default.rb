user node[:user] do
  home    "/home/#{node[:user]}"
  supports manage_home: true
end

directory "/home/#{node[:user]}/.ssh" do
  mode  "0700"
  owner node[:user]
end

template "/home/#{node[:user]}/.ssh/authorized_keys" do
  mode   "0600"
  owner  node[:user]
  source "authorized_keys"
end
