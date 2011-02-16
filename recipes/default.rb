file "/etc/timezone" do
  content node.timezone.value
end

execute "Configure timezone" do
  command "dpkg-reconfigure -f noninteractive tzdata"
end
