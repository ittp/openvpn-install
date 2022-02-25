
functions() {
  # create user
  # curl -X POST https://api.ittps.ru/openvpn/create/user/$query
  # edit user
  # delete user

}

function init_menu() {

} 

# create_user username config
create_user() {
  local $username=$1, $config=$2
  echo "ovpn create user <username> <config>"
  
  
}

export JSON_MENU='[{"key": "a", "title": "add", function: "add" }, {"key": "e", "title": "edit", function: "" }]'
function users_menu() {
	echo "OpenVPN Users managment"
  	echo "####################################################"
	echo "   a) Add a new user"
  	echo "   e) Edit new user"
	echo "   2) Revoke existing user"
	echo "   3) Remove OpenVPN"
	echo "   4) Exit"
  
    echo "####################################################"

	until [[ $MENU_OPTION =~ ^[1-4]$ ]]; do
		read -rp "Select an option [1-4]: " MENU_OPTION
	done

	case $MENU_OPTION in
	1)
# 		newClient
		;;
	2)
# 		revokeClient
		;;
	3)
# 		removeOpenVPN
		;;
	4)
		exit 0
		;;
	esac
}
