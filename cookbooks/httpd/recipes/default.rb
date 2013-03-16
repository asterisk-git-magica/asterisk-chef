package "httpd"

service("httpd") do
  action [:enable, :start]
  supports {:restart=>false, :reload=>false, :status=>true}
  retries 0
  retry_delay 2
  service_name :httpd
  pattern :httpd
  startup_type :automatic
  cookbook_name :main
  recipe_name "default"
end
