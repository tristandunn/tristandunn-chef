include_recipe "monit-ng::default"

monit_check "nginx" do
  stop     "/etc/init.d/nginx stop"
  start    "/etc/init.d/nginx start"
  check_id "/var/run/nginx.pid"
end

monit_check "sshd" do
  stop     "/etc/init.d/ssh stop"
  start    "/etc/init.d/ssh start"
  check_id "/var/run/sshd.pid"
end
