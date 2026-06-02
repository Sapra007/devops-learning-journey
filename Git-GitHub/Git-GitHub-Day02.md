# 🌿 Git & GitHub — Day 02: Git Deep Dive

> Aaj seekha ki changes kaise dekhen, multiple files kaise handle karen, galtiyan kaise wapas karen, aur kuch files ko track hone se kaise roken!

---

## 📌 Aaj Ka Topic Overview

- `git diff` — changes dekho commit se pehle
- `git add .` — multiple files ek saath stage karo
- `git log --oneline` — clean history dekho
- `git restore` — galat change wapas karo
- `.gitignore` — kuch files track na karo

---

## 🔍 git diff — Changes Dekho

Commit se **pehle** kya badla — ye dekhne ke liye:

```bash
git diff
```

### Output Samjho:

```
-hello anand
+Hello, I am Anand Sapra - DevOps Learner
+I am learning Git & GitHub for DevOps
```

| Symbol | Matlab |
|--------|--------|
| `-` (Red) | Jo pehle tha — hata diya |
| `+` (Green) | Jo naya add kiya |

> ✅ Commit se pehle hamesha `git diff` karo — galti pakad sakte ho!

---

## 📂 Multiple Files Ek Saath Handle Karna

### Files Banao
```bash
touch file1.txt file2.txt
echo "This is file 1" > file1.txt
echo "This is file 2" > file2.txt
```

### Saari Files Ek Saath Stage Karo
```bash
git add .
```

> `.` (dot) ka matlab — **current folder ki saari files** ek saath staging mein daalo!

### Status Check Karo
```bash
git status
# Output:
# Changes to be committed:
#   new file: file1.txt
#   new file: file2.txt
```

### Commit Karo
```bash
git commit -m "Added file1.txt and file2.txt"
```

---

## 📋 git log --oneline — Clean History

```bash
git log --oneline
```

### Output:
```
19845d2 (HEAD -> master) Added file1.txt and file2.txt
7ac9c51 Updated hello.txt - added DevOps learning line
cf66004 first git commit
```

> `--oneline` se log ek line mein dikhta hai — bahut clean aur readable!

---

## ↩️ git restore — Galti Wapas Karo

Agar commit se **pehle** koi galat change kar diya toh:

```bash
# Galat change karo
echo "Ye galat hai" >> hello.txt

# Wapas restore karo
git restore hello.txt

# Verify karo — galat line gayab!
cat hello.txt
```

> ✅ `git restore` bahut kaam aata hai — commit se pehle galti wapas karne ke liye!

---

## 🙈 .gitignore — Files Ko Track Hone Se Rokho

Kuch files hoti hain jo hum Git mein track **nahi karna chahte:**
- Passwords & secrets
- Log files
- Personal config files

### .gitignore Kaise Banate Hain:

```bash
# Secret file banao
touch secret.txt
echo "mypassword123" > secret.txt

# .gitignore banao
touch .gitignore
echo "secret.txt" >> .gitignore

# Status check karo — secret.txt nahi dikhega!
git status
```

> ✅ `secret.txt` status mein nahi dikhega — Git ne ignore kar diya!

---

## 🎯 Commands Summary

| Command | Kaam |
|---------|------|
| `git diff` | Commit se pehle changes dekho |
| `git add .` | Saari files ek saath stage karo |
| `git log --oneline` | Clean short history dekho |
| `git restore <file>` | Galat change wapas karo |
| `.gitignore` | Files ko track hone se rokho |

---

## 💡 Key Learnings

✅ `git diff` se commit se pehle changes check karo  
✅ `git add .` se saari files ek saath stage hoti hain  
✅ `git log --oneline` se clean history dikhti hai  
✅ `git restore` se galat changes wapas ho jaate hain  
✅ `.gitignore` mein likhi files Git track nahi karta  
✅ Passwords aur secrets hamesha `.gitignore` mein daalo  

---

## 📅 Next — Day 03
- GitHub pe repo banana
- `git remote add` — local repo ko GitHub se connect karna
- `git push` — code GitHub pe bhejana
- `git clone` — GitHub se code download karna
