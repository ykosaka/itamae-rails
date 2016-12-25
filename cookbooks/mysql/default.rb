package 'http://dev.mysql.com/get/mysql57-community-release-el7-7.noarch.rpm' do
  not_if 'rpm -q mysql57-community-release-el7-7'
end

package 'mysql-community-server'

service 'mysqld' do
  action [:enable, :start]
end
