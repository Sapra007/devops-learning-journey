# 🌿 Git & GitHub — Day 03: GitHub Se Connect Karo!

> Aaj seekha ki local Git repo ko GitHub se kaise connect karte hain, code kaise push karte hain, aur GitHub se code kaise download karte hain!

---

## 📌 Aaj Ka Topic Overview

- GitHub pe naya repo banana
- `git remote add` — local repo ko GitHub se connect karna
- `git push` — code GitHub pe bhejana
- `git clone` — GitHub se code download karna

---

## 🌐 GitHub Pe Naya Repo Banana

1. [github.com](https://github.com) kholo
2. **"New"** button click karo (green button)
3. Repository name likho: `git-learning`
4. **Public** select karo
5. ⚠️ README initialize mat karo — kuch bhi tick mat karo
6. **"Create repository"** click karo

---

## 🔗 Local Repo Ko GitHub Se Connect Karo

```bash
cd ~/git-learning

# GitHub se connect karo
git remote add origin https://github.com/Sapra007/git-learning.git

# Verify karo
git remote -v
```

### Output:
```
origin  https://github.com/Sapra007/git-learning.git (fetch)
origin  https://github.com/Sapra007/git-learning.git (push)
```

> ✅ `fetch` aur `push` dono dikh rahe hain — connection ho gaya!

---

## 🚀 Code GitHub Pe Push Karo

```bash
git push -u origin master
```

### Samjho:

| Part | Matlab |
|------|--------|
| `git push` | Code bhejo |
| `-u` | Pehli baar origin & master set karo |
| `origin` | GitHub ka naam |
| `master` | Branch ka naam |

> ✅ Aage se sirf `git push` likhna kaafi hoga!

---

## 📥 git clone — GitHub Se Code Download Karo

Kisi bhi GitHub repo ko apne computer pe laane ke liye:

```bash
# Nayi jagah jaao
cd ~
mkdir test-clone
cd test-clone

# Clone karo
git clone https://github.com/Sapra007/git-learning.git

# Verify karo
cd git-learning
ls
```

> ✅ Saari files aa jaayengi — `hello.txt`, `file1.txt`, `file2.txt`, `.gitignore`

---

## 🎯 Commands Summary

| Command | Kaam |
|---------|------|
| `git remote add origin <url>` | GitHub se connect karo |
| `git remote -v` | Connection verify karo |
| `git push -u origin master` | Pehli baar code push karo |
| `git push` | Aage code push karo |
| `git clone <url>` | GitHub se code download karo |

---

## 💡 Key Learnings

✅ `git remote add` se local repo GitHub se connect hoti hai  
✅ `git push` se code internet pe jaata hai  
✅ `-u` flag se pehli baar origin set hota hai  
✅ `git clone` se koi bhi repo download kar sakte hain  
✅ GitHub pe code live hone ke baad duniya mein koi bhi dekh sakta hai  

---

## 📅 Next — Day 04
- Branching — alag branch pe kaam karna
- `git branch` — branch banana
- `git checkout` — branch switch karna
- `git merge` — branches ko milana
