# 🌿 Git & GitHub — Day 04: Branching & Merging

> Aaj seekha Git ka sabse powerful concept — Branching! Alag branch pe kaam karo, main branch safe rakho, aur merge kar do jab ready ho!

---

## 📌 Aaj Ka Topic Overview

- Branching kya hai aur kyun use karte hain
- `git branch` — branches dekho aur banao
- `git checkout` — branch switch karo
- `git merge` — branches ko milao

---

## 🌿 Branching Kya Hai?

Socho tumhara ek **main project** hai. Tumhe naya feature banana hai — but seedha main mein changes nahi karna chahte kyunki:
- Kuch toot sakta hai ❌
- Team ka kaam rukk sakta hai ❌

Toh ek **alag branch** banate hain — wahan kaam karo, sab theek ho toh main mein merge kar do! ✅

### Real Life Example:
```
main branch    →  Live Website (production)
feature branch →  Naya feature bana rahe hain
```

---

## 📋 Branch Dekho

```bash
git branch
# Output: * main
```

> `*` ka matlab — abhi is branch pe ho!

---

## 🌱 Nayi Branch Banao

```bash
git branch feature-branch
```

**Verify karo:**
```bash
git branch
# Output:
# feature-branch
# * main
```

---

## 🔀 Branch Switch Karo

```bash
git checkout feature-branch
```

**Verify karo:**
```bash
git branch
# Output:
# * feature-branch
#   main
```

> ✅ `*` ab feature-branch pe hai — matlab switch ho gaye!

---

## 💻 Feature Branch Pe Kaam Karo

```bash
# Nayi file banao
touch feature.txt
echo "This is a new feature" > feature.txt

# Commit karo
git add .
git commit -m "Added feature.txt in feature-branch"

# Log dekho
git log --oneline
```

### Output:
```
d840073 (HEAD -> feature-branch) Added feature.txt in feature-branch
f28fc4e (main) first commit
```

> ✅ Dono branches alag alag hain — main safe hai!

---

## ✨ Branching Ka Magic

```bash
# Main pe wapas jaao
git checkout main

# feature.txt nahi dikhegi!
ls
```

> 🪄 `feature.txt` sirf `feature-branch` pe hai — `main` pe abhi tak nahi aayi!

---

## 🔗 Merge Karo

```bash
# Main branch pe rehte hue merge karo
git merge feature-branch

# Verify karo
ls
```

> ✅ Ab `feature.txt` main branch pe bhi aa gayi!

---

## 🎯 Commands Summary

| Command | Kaam |
|---------|------|
| `git branch` | Saari branches dekho |
| `git branch <name>` | Nayi branch banao |
| `git checkout <branch>` | Branch switch karo |
| `git merge <branch>` | Branch merge karo |

---

## 💡 Key Learnings

✅ Branch se main code safe rehta hai  
✅ Har naye feature ke liye alag branch banao  
✅ `git checkout` se branch switch hoti hai  
✅ `git merge` se branch ka kaam main mein aa jaata hai  
✅ Merge ke baad feature branch ki files main mein dikh jaati hain  

---

## 📅 Next — Day 05
- `git pull` — GitHub se latest code lao
- Merge conflicts — jab 2 log same file edit karen
- Conflict resolve karna
- Real DevOps Git workflow
