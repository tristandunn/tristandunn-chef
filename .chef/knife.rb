cookbook_path    ["cookbooks", "site-cookbooks"]
node_path        "nodes"
role_path        "roles"
data_bag_path    "data_bags"
ssl_verify_mode  :verify_peer
environment_path "environments"

knife[:berkshelf_path] = "cookbooks"
