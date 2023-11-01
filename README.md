# focus-mode-settings

# DoNotDisturb Status Checker

## Overview

This Bash script created by Samstar777, checks the status of the DoNotDisturb feature on macOS using the `defaults` command. It then outputs the result in a specified format.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/do-not-disturb-checker.git
    ```

2. Navigate to the script directory:

    ```bash
    cd do-not-disturb-checker
    ```

3. Run the script:

    ```bash
    ./do_not_disturb_checker.sh
    ```

4. The script will display whether DoNotDisturb is enabled or disabled.

5. If script runs correctly when ran locally on a mac than create an Extension Attribute on a mac

6. Input Type "Script" and add the FocusModeSettings script and Save Extension Attribute

## Script Details

The script contains a function `readSettings` to read the focus modes settings from `com.apple.controlcenter`. It then checks if DoNotDisturb is enabled or disabled and outputs the result.

The `main` function calls `readSettings`, stores the result in a variable, and echoes the result in the desired format.

## Requirements

- macOS operating system

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- This script was created for educational and informational purposes.

