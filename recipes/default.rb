bash "authconfig enable ldap" do
    code   "authconfig --enableldap  --update ; authconfig --enableldapauth --update"
    action :run
end
