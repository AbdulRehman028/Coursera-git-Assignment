Below is an example of a simple-interest.sh script that calculates simple interest based on user input for principal, rate of interest, and time.
#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    # Formula for simple interest: SI = (P * R * T) / 100
    local interest=$(( (principal * rate * time) / 100 ))
    echo "The Simple Interest is: $interest"
}

# User input for principal, rate of interest, and time
echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest (in %):"
read rate

echo "Enter the time (in years):"
read time

# Check if the input values are valid numbers
if [[ ! "$principal" =~ ^[0-9]+$ ]] || [[ ! "$rate" =~ ^[0-9]+$ ]] || [[ ! "$time" =~ ^[0-9]+$ ]]; then
    echo "Please enter valid numeric values for all fields."
    exit 1
fi

# Calculate and display the simple interest
calculate_simple_interest $principal $rate $time
How it works:
The script first prompts the user for the principal amount, the rate of interest, and the time period (in years).
It then calculates the simple interest using the formula:
Simple Interest
=
𝑃
×
𝑅
×
𝑇
100
Simple Interest= 
100
P×R×T
​
 
where P is the principal, R is the rate of interest, and T is the time.
Finally, it displays the result.
To use the script:
Save this script as simple-interest.sh.
Give it execute permission using:
bash
Copy code
chmod +x simple-interest.sh
Run the script:
bash
Copy code
./simple-interest.sh
The script will calculate and display the simple interest based on the user's inputs.
