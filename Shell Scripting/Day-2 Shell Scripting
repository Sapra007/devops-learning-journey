🚀 Shell Scripting — Day 02
🔀 Conditional Statements in Bash

Conditional statements help scripts make decisions.
This is one of the most important concepts in automation and DevOps scripting.

📌 What are Conditions in Bash?

Conditions allow scripts to:

✅ check values
🔍 compare data
⚙️ make decisions
🚀 automate logic
🧠 Basic if Statement

📌 Syntax
if [ condition ]
then
    commands
fi

📖 Structure Explanation
| Keyword | Purpose           |
| ------- | ----------------- |
| `if`    | Starts condition  |
| `then`  | Executes commands |
| `fi`    | Ends condition    |

✅ Example 1 — Simple If Condition
#!/bin/bash

number=10

if [ $number -gt 5 ]
then
    echo "Number is greater than 5"
fi

▶️ Output
Number is greater than 5

🔍 Comparison Operators
| Operator | Meaning       |
| -------- | ------------- |
| `-eq`    | Equal         |
| `-ne`    | Not equal     |
| `-gt`    | Greater than  |
| `-lt`    | Less than     |
| `-ge`    | Greater/equal |
| `-le`    | Less/equal    |

🔀 if-else Statement
📌 Definition

Executes different commands based on condition result.

🛠️ Syntax
if [ condition ]
then
    commands
else
    commands
fi

✅ Example 2 — Voting Eligibility Checker
#!/bin/bash

age=20

if [ $age -ge 18 ]
then
    echo "Eligible for voting"
else
    echo "Not eligible"
fi

▶️ Output
Eligible for voting

⌨️ User Input with Conditions
Example
#!/bin/bash

echo "Enter your age"

read age

if [ $age -ge 18 ]
then
    echo "Adult"
else
    echo "Minor"
fi

▶️ Output
Enter your age
22
Adult


📂 File Existence Check
📌 Why Important?

DevOps Engineers often check:

config files
logs
backup files
deployment scripts

🧾 Example
#!/bin/bash

if [ -f notes.txt ]
then
    echo "File exists"
else
    echo "File not found"
fi

📖 File Condition Operator
| Operator | Meaning            |
| -------- | ------------------ |
| `-f`     | File exists        |
| `-d`     | Directory exists   |
| `-r`     | Read permission    |
| `-w`     | Write permission   |
| `-x`     | Execute permission |


📂 Directory Check Example
#!/bin/bash

if [ -d backup ]
then
    echo "Directory exists"
else
    echo "Directory not found"
fi

🔥 Nested If Statement
📌 Definition

An if statement inside another if.

🧾 Example
#!/bin/bash

age=25

if [ $age -ge 18 ]
then
    if [ $age -ge 21 ]
    then
        echo "Eligible for driving and voting"
    fi
fi


⚙️ Real DevOps Example
🌐 Service Status Checker
#!/bin/bash

if systemctl is-active --quiet nginx
then
    echo "Nginx is running"
else
    echo "Nginx is stopped"
fi

📖 Why This is Useful?
DevOps Engineers use such scripts for:

server monitoring
health checks
automation alerts
deployment verification


🧪 Hands-On Practice
Create Script
touch condition.sh

Edit Script
nano condition.sh

Add Code
#!/bin/bash

echo "Enter a number"

read number

if [ $number -gt 10 ]
then
    echo "Number is greater than 10"
else
    echo "Number is less than or equal to 10"
fi

Give Permission
chmod +x condition.sh

Run Script
./condition.sh

🎯 Important Commands Summary
| Command | Purpose             |
| ------- | ------------------- |
| `if`    | Start condition     |
| `then`  | Execute commands    |
| `else`  | Alternate execution |
| `fi`    | End condition       |
| `read`  | User input          |

💡 Key Learnings

✅ Conditions help automate decisions
✅ if-else controls script flow
✅ Comparison operators compare values
✅ File checks are important in DevOps
✅ Conditions are heavily used in automation scripts




