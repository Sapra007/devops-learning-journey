# 🌿 Git & GitHub — Day 06: git stash, git revert & SSH Keys

> Aaj seekha ki kaam beech mein kaise rokein, galat commits kaise undo karein, aur SSH keys se password-free GitHub connection kaise karein!

---

## 📌 Aaj Ka Topic Overview

- `git stash` — kaam beech mein temporarily side mein rakho
- `git revert` — commit safely undo karo
- `git reset` — commit aur changes undo karo
- SSH Keys — password-free GitHub connection set karo

---

## 🗃️ git stash — Kaam Beech Mein Rokna

Socho tum feature pe kaam kar rahe ho — aadha kaam hua hai. Suddenly urgent bug fix karna pad gaya! Ab na commit karna chahte (kaam adha hai), na changes delete karna chahte.

**Solution → `git stash`!**

```bash
# Aadha kaam hua — stash karo
git stash

# Ab branch switch karo, bug fix karo
git checkout main

# ...bug fix karo, commit karo...

# Wapas feature branch pe aao
git checkout feature-branch

# Apna aadha kaam wapas lao
git stash pop
```

### Stash Commands:

| Command | Kaam |
|---------|------|
| `git stash` | Changes temporarily save karo |
| `git stash pop` | Wapas lao aur stash delete karo |
| `git stash list` | Kitne stash hain dekho |
| `git stash drop` | Stash permanently delete karo |

> ✅ `git stash` real DevOps teams mein daily use hota hai — urgent kaam ke liye!

---

## ↩️ git revert — Safe Undo

Galat commit ho gayi jo already GitHub pe push ho chuki hai? `git revert` se safely undo karo — **history safe rehti hai!**

```bash
# Pehle log dekho — commit ID dhundo
git log --oneline

# Output:
# a1b2c3d Added wrong code
# f28fc4e Added feature.txt
# cf66004 first commit

# Galat commit revert karo
git revert a1b2c3d
```

### Kya Hoga:
```bash
# Git ek naya commit banega jo purani galti undo karega
# Revert commit message likhne ka editor khulega
# Ctrl+X → Y → Enter se save karo

# GitHub pe push karo
git push
```

> ✅ `git revert` **safe** hai — history delete nahi hoti, ek naya "undo commit" ban jaata hai!

---

## ⚠️ git reset — Hard Undo (Soch Ke Karo!)

`git reset` directly history badalta hai — committed changes wapas le aata hai.

```bash
# Soft reset — sirf commit hata do, changes rakho
git reset --soft HEAD~1

# Hard reset — commit aur changes dono hata do
git reset --hard HEAD~1
```

### Difference Samjho:

| Type | Commit Hata? | Changes Hata? | Kab Use Karein? |
|------|-------------|---------------|-----------------|
| `--soft` | ✅ Haan | ❌ Nahi (rakhe) | Commit message fix karna ho |
| `--hard` | ✅ Haan | ✅ Haan (delete!) | Sab kuch wapas chahiye |

> ⚠️ `--hard` sirf tab use karo jab 100% sure ho — changes wapas nahi aayenge!

---

## 🔑 SSH Keys — Password-Free GitHub Connection

Har baar `git push` pe password dalna boring aur slow hai! SSH key se **ek baar setup karo, phir kabhi password nahi maangega.**

### Step 1 — SSH Key Banao
```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
# Enter dabate raho — default settings theek hain
```

### Step 2 — Public Key Copy Karo
```bash
cat ~/.ssh/id_ed25519.pub
# Output: ssh-ed25519 AAAAC3Nza... your-email@example.com
# Ye poora output copy karo
```

### Step 3 — GitHub Pe Add Karo
```
1. github.com kholo → Settings
2. "SSH and GPG Keys" click karo
3. "New SSH Key" click karo
4. Title likho: "My Laptop"
5. Key paste karo
6. "Add SSH Key" click karo
```

### Step 4 — Connection Test Karo
```bash
ssh -T git@github.com
# Output: Hi Sapra007! You've successfully authenticated!
```

### Step 5 — Remote URL SSH Pe Switch Karo
```bash
git remote set-url origin git@github.com:Sapra007/devops-learning-journey.git

# Verify karo
git remote -v
# Output:
# origin  git@github.com:Sapra007/devops-learning-journey.git (fetch)
# origin  git@github.com:Sapra007/devops-learning-journey.git (push)
```

> ✅ Ab `git push` karo — kabhi bhi password nahi maangega!

---

## 🎯 Commands Summary

| Command | Kaam |
|---------|------|
| `git stash` | Changes temporarily side mein rakho |
| `git stash pop` | Stash se changes wapas lao |
| `git stash list` | Saare stash dekho |
| `git revert <id>` | Commit safely undo karo |
| `git reset --soft HEAD~1` | Sirf commit hata do |
| `git reset --hard HEAD~1` | Commit + changes dono hata do |
| `ssh-keygen -t ed25519` | SSH key banao |
| `ssh -T git@github.com` | SSH connection test karo |

---

## 💡 Key Learnings

✅ `git stash` se aadha kaam side mein rakh ke urgent kaam kar sakte hain  
✅ `git stash pop` se wapas kaam resume hota hai  
✅ `git revert` safe undo hai — history intact rehti hai  
✅ `git reset --hard` dangerous hai — soch ke use karo  
✅ SSH keys se password-free GitHub connection hoti hai  
✅ Real DevOps teams mein SSH authentication standard practice hai  

---

## 📅 Next — Day 07
- Pull Requests (PR) — team ke saath code review
- Fork karna — doosron ka repo apne account pe lana
- Open Source mein contribute karna
- GitHub Issues — bugs aur tasks track karna
