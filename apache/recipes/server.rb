package 'httpd'

file '/var/www/html/index.html' do
  content "
<h1>Hello World from Chef CookBook</h1>\n
<h2>Hostname: #{node['hostname']}</h2>\n
<h2>IP: #{node['ipaddress']}</h2>\n
"
end

service 'httpd' do
  action [ :enable, :start]
end
