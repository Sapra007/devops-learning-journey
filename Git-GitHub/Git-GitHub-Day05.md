# 🌿 Git & GitHub — Day 05: git pull & Merge Conflicts

> Aaj seekha real DevOps workflow — GitHub se latest code kaise laate hain aur jab 2 log same file edit karen toh conflict kaise resolve karte hain!

---

## 📌 Aaj Ka Topic Overview

- `git pull` — GitHub se latest code lao
- Merge conflict kya hota hai
- Conflict kaise resolve karte hain

---

## 📥 git pull Kya Hai?

Socho tumhari team ka koi aur developer GitHub pe code update kar deta hai — tumhare local machine pe wo changes nahi hain!

`git pull` se tum GitHub ka latest code apne computer pe la sakte ho!

```
GitHub (latest code) → git pull → Tumhara Computer
```

### Example:
```bash
git pull
```

---

## 🔥 Merge Conflict Kya Hota Hai?

Jab **2 log same file ki same line** alag alag edit karte hain — Git confuse ho jaata hai ki kiska change rakhe!

```
Tumhara local change  ←→  GitHub ka change
         ↓
    CONFLICT! 😱
```

---

## ⚙️ Merge Strategy Set Karo

```bash
git config pull.rebase false
```

> Ye ek baar set karo — hamesha merge strategy use hogi!

---

## 💥 Conflict Kaise Dikhta Hai

```bash
nano feature.txt
```

### Conflict Markers:
```
<<<<<<< HEAD
This is Local version
=======
This is a git version.
>>>>>>> fcb890c0bd495cecb60a9efc3726c58aebed4d1c
```

### Samjho:

| Part | Matlab |
|------|--------|
| `<<<<<<< HEAD` | Tumhara local change |
| `=======` | Divider line |
| `>>>>>>> origin/main` | GitHub ka change |

---

## ✅ Conflict Resolve Karo

### Step 1 — File kholo
```bash
nano feature.txt
```

### Step 2 — Conflict markers hata do
Ye saari lines delete karo:
- `<<<<<<< HEAD`
- `=======`
- `>>>>>>> fcb890c0...`

### Step 3 — Clean content rakho
```
This is Local and GitHub version combined.
This is my Temporary repo.
```

### Step 4 — Save karo
`Ctrl+X` → `Y` → `Enter`

### Step 5 — Commit aur Push karo
```bash
git add .
git commit -m "Resolved merge conflict in feature.txt"
git push
```

---

## 🎯 Commands Summary

| Command | Kaam |
|---------|------|
| `git pull` | GitHub se latest code lao |
| `git config pull.rebase false` | Merge strategy set karo |
| `nano <file>` | Conflict fix karo |
| `git add .` | Resolved file stage karo |
| `git commit` | Conflict resolve commit karo |
| `git push` | GitHub pe push karo |

---

## 💡 Key Learnings

✅ `git pull` se GitHub ka latest code aata hai  
✅ Merge conflict tab hota hai jab 2 log same line edit karte hain  
✅ Conflict markers `<<<<<<<`, `=======`, `>>>>>>>` dikhte hain  
✅ Manually fix karke commit karo — conflict resolve!  
✅ Ye skill real DevOps jobs mein daily use hoti hai  

---

## 🏆 Git & GitHub Course Complete!

| Din | Topic | Status |
|-----|-------|--------|
| Day 1 | Git Setup & First Commit | ✅ |
| Day 2 | git diff, restore, gitignore | ✅ |
| Day 3 | GitHub Push & Clone | ✅ |
| Day 4 | Branching & Merging | ✅ |
| Day 5 | git pull & Merge Conflicts | ✅ |

---

## 📅 Next Steps
- Docker seekhna shuru karo
- AWS EC2 & S3 hands-on practice
- Internship apply karna shuru karo — Internshala & LinkedIn!
