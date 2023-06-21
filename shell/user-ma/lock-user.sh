read -p "Enter username: " username
read -p "Select lock or unlock the account?" action

if id "$username" >/dev/null 2>&1;
then
	case "$action" in
		lock)
			sudo usermod -L "$username"
			echo "User $username locked successfully"
			;;

		unlock)
			sudo usermod -U "$username"
			echo "User $username unlocked successfully"
			;;
		*)
			echo "Invalid action! Please specify proper action"
			;;
	esac
else
	echo " User $username doesn't exist"
fi	
