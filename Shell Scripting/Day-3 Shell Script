🚀 Shell Scripting — Day 03
🔁 Loops in Bash Scripting

Loops help automate repetitive tasks in Linux.
DevOps Engineers use loops daily for automation, monitoring, deployments, backups, and server management.

📌 What are Loops?

Loops repeat commands multiple times automatically.

Instead of writing the same command again and again, loops execute it repeatedly.

🔥 Why Loops are Important in DevOps?

Loops are used for:

📂 Creating multiple files
🖥️ Monitoring servers
📦 Backup automation
☸️ Kubernetes operations
🌐 Health checks
🚀 Deployment automation
🔁 1. for Loop
📌 Definition

for loop repeats commands for a list of values.

🛠️ Syntax
for variable in values
do
    commands
done
✅ Example 1 — Print Numbers
#!/bin/bash

for i in 1 2 3 4 5
do
    echo "Number: $i"
done
▶️ Output
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
📂 Example 2 — Create Multiple Files
#!/bin/bash

for i in 1 2 3
do
    touch file$i.txt
done
📖 What This Does?

Creates:

file1.txt
file2.txt
file3.txt
🔁 2. Range-Based Loop
📌 Syntax
for i in {1..5}
do
    commands
done
✅ Example
#!/bin/bash

for i in {1..5}
do
    echo "DevOps"
done
🔄 3. while Loop
📌 Definition

while loop runs until condition becomes false.

🛠️ Syntax
while [ condition ]
do
    commands
done
✅ Example
#!/bin/bash

count=1

while [ $count -le 5 ]
do
    echo "Count: $count"

    count=$((count + 1))
done
▶️ Output
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
🧠 Understanding Increment
Example
count=$((count + 1))

📖 Increases variable value by 1.

♾️ 4. Infinite Loop
📌 Definition

Runs forever until manually stopped.

🛠️ Example
#!/bin/bash

while true
do
    echo "Monitoring Server..."
    sleep 2
done
📖 Understanding sleep
Command	Purpose
sleep 2	Waits 2 seconds
🔴 Stop Infinite Loop

Press:

CTRL + C
⚙️ Real DevOps Example
📊 Server Monitoring Script
#!/bin/bash

while true
do
    date

    free -h

    sleep 5
done
📖 What This Script Does?

✅ Shows current time
✅ Displays memory usage
✅ Runs every 5 seconds

Used in:

monitoring
troubleshooting
production systems
📂 Backup Automation Example
#!/bin/bash

for file in *.txt
do
    cp $file backup/
done
📖 What This Does?

Copies all .txt files into backup folder automatically.

🧪 Hands-On Practice
Create Script
touch loop.sh
Edit Script
nano loop.sh
Add Code
#!/bin/bash

for i in {1..10}
do
    echo "Welcome DevOps Engineer"
done
Give Permission
chmod +x loop.sh
Run Script
./loop.sh
🎯 Important Commands Summary
Command	Purpose
for	Repeat commands
while	Loop with condition
done	End loop
sleep	Delay execution
💡 Key Learnings

✅ Loops automate repetitive tasks
✅ for loop works with lists/ranges
✅ while loop works with conditions
✅ Infinite loops are useful in monitoring
✅ Loops are heavily used in DevOps automation
