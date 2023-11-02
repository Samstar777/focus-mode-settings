#!/bin/bash

loggedInUser=$(stat -f%Su /dev/console)

# Function to read the focus modes settings
readSettings() {
	local focusModes
	# Read the focus modes setting from com.apple.controlcenter
	focusModes=$(sudo -u "$loggedInUser" defaults read com.apple.controlcenter "NSStatusItem Visible FocusModes")
	
	# Check if DoNotDisturb is disabled (focusModes is 0)
	if [[ $focusModes -eq 0 ]]; then
		echo "DoNotDisturb is Disabled"
	else
		# DoNotDisturb is enabled (focusModes is not 0)
		echo "DoNotDisturb is Enabled"
	fi
}

# Main function
main() {
	# Call the readSettings function and store the result in the Result variable
	Result=$(readSettings)
	
	# Output the result in the desired format
	echo "<result>$Result</result>"
}

# Call the main function to execute the script
main
