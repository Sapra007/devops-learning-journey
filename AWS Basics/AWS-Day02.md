# ☁️ AWS Day 02 — IAM (Identity & Access Management)

> **Date:** 05 June 2026
> **Topic:** IAM — Users, Roles & Policies
> **Status:** ✅ Completed

---

## 🧠 IAM Kya Hota Hai?

Socho tumhara ek **ghar (AWS Account)** hai:

| Concept | Real Life Example | AWS Mein |
|---------|------------------|----------|
| **Root User** | Ghar ka malik | Poora AWS account control |
| **IAM User** | Ghar ka kiraayedaar | Limited access wala user |
| **IAM Policy** | Rules ka kaagaz | Permissions define karna |
| **IAM Role** | Temporary ID card | Kuch time ke liye permission |

---

## 🛠️ Aaj Kya Kiya (Hands-On)

### Step 1 — IAM User Banaya
- AWS Console → IAM → Users → Create User
- Username: `devops-learner`
- Console access enable kiya
- Custom password set kiya

### Step 2 — Policy Attach Ki
- **"Attach policies directly"** select kiya
- Policy: `AmazonS3ReadOnlyAccess` ✅
- Yeh policy sirf S3 dekhne ki permission deti hai — delete/upload nahi

### Step 3 — Naye User se Login Kiya
- Incognito window mein Console sign-in URL use ki
- `devops-learner` se login kiya ✅

### Step 4 — Access Test Kiya
| Action | Result | Kyun? |
|--------|--------|-------|
| S3 bucket dekha | ✅ Kaam kiya | ReadOnly access hai |
| File download ki | ✅ Kaam kiya | ReadOnly access hai |
| File delete karne ki koshish | ❌ Button hi nahi dikha | Delete permission nahi hai |

---

## 💡 Aaj Ka Sabse Bada Lesson

> **ReadOnly access** mein AWS Delete button hi hide kar deta hai —
> galti se bhi kuch delete nahi ho sakta! Yahi hai IAM ki taakat. 🔐

---

## 📝 Important IAM Concepts

- **Least Privilege Principle** — sirf utni hi permission do jitni zaroorat ho
- **Root User** kabhi bhi daily use ke liye use mat karo
- **IAM Policy** = JSON document jo batata hai kya allow hai, kya deny hai
- Ek user ko multiple policies attach ho sakti hain

---

## 🔗 Resources
- [IAM Official Docs](https://docs.aws.amazon.com/iam)
- [IAM Policy List](https://docs.aws.amazon.com/aws-managed-policy/latest/reference/policy-list.html)

---

*👨‍💻 Anand Jagdishbhai Sapra*
*📧 anandsapra1204@gmail.com*
*🔗 [GitHub](https://github.com/Sapra007) | [LinkedIn](https://linkedin.com/in/anand-sapra)*
