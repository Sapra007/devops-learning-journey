# 🌿 Git & GitHub — Day 01: Basics

> Git ek version control system hai jo hamare code ke har change ka record rakhta hai — jaise ek time machine! ⏰

---

## 📌 Git Kya Hai?

Git ek **Version Control System** hai.

- Tumhare har change ka record rakhta hai
- Purana version wapas la sakta hai
- Team ke saath code share karna aasaan banata hai

---

## 🔍 Git vs GitHub

| Git | GitHub |
|-----|--------|
| Tumhare computer pe hota hai | Internet pe hota hai |
| Changes track karta hai | Code store & share karta hai |
| Tool hai | Website hai |

---

## ⚙️ Git Setup

### Version Check
```bash
git --version
# Output: git version 2.34.1
```

### Name & Email Configure Karo
```bash
git config --global user.name "Anand Sapra"
git config --global user.email "anandsapra1204@gmail.com"
```

### Default Branch Main Set Karo
```bash
git config --global init.defaultBranch main
```

### Verify Karo
```bash
git config --list
```

---

## 📁 Pehli Git Repository Banana

```bash
# Folder banao
mkdir git-learning

# Folder mein jaao
cd git-learning

# Git initialize karo
git init
# Output: Initialized empty Git repository in /home/anand/git-learning/.git/
```

> `git init` folder ko Git repository bana deta hai — ab Git har change track karega!

---

## 📮 Git Ka Basic Flow — Post Office Analogy

| Step | Real Life | Git Command |
|------|-----------|-------------|
| 1️⃣ | Cheez pack karo | `git add` |
| 2️⃣ | Post office bhejo | `git commit` |
| 3️⃣ | Record ban gaya | History save! |

---

## 📝 Pehli File Banana & Commit Karna

### File Banao
```bash
touch hello.txt
echo "Hello, I am Anand Sapra - DevOps Learner" > hello.txt
cat hello.txt
```

### Staging Mein Daalo
```bash
git add hello.txt
```

### Status Check Karo
```bash
git status
# Output: Changes to be committed
```

### Commit Karo
```bash
git commit -m "Added hello.txt - my first git commit"
```

### History Dekho
```bash
git log
```

---

## 🎯 Commands Summary

| Command | Kaam |
|---------|------|
| `git init` | Naya repo banao |
| `git config` | Name & email set karo |
| `git add <file>` | File staging mein daalo |
| `git commit -m ""` | Change save karo with message |
| `git status` | Current state dekho |
| `git log` | Commit history dekho |

---

## 💡 Key Learnings

✅ Git ek time machine ki tarah kaam karta hai  
✅ `git init` se repo shuru hoti hai  
✅ `git add` se file stage hoti hai  
✅ `git commit` se change permanently save hota hai  
✅ Har commit ka ek unique ID hota hai  
✅ `git log` se poori history dekh sakte hain  

---

## 📅 Next — Day 02
- `git diff` — changes dekho commit se pehle
- Multiple files commit karna
- `.gitignore` — kaunsi files track na karein
