# currently not support ubuntu
case node['platform_family']
when 'rhel'
    if node[:authconfig_setup][:installpackages]
        package "ldap-auth-client"
        package "nscd"
    end

    bash "authconfig enable ldap" do
        code   "authconfig --enableldap  --update ; authconfig --enableldapauth --update"
        action :run
    end
end

