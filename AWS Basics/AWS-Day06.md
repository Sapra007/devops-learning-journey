# ☁️ AWS Day 06 — S3 + EC2 Project

> **Date:** 05 June 2026
> **Topic:** S3 + EC2 Integration Project
> **Status:** ✅ Completed

---

## 🎯 Project Goal

EC2 server pe S3 se file download karna — dono services ko ek saath use karna!

---

## 🏗️ Project Architecture

```
Tumhara Laptop
     ↓ SSH
EC2 Server (devops-server)
     ↓ AWS CLI + IAM Role
S3 Bucket (anand-portfolio-2026)
     ↓ Download
index.html — EC2 pe aa gaya! ✅
```

---

## 🛠️ Aaj Kya Kiya (Hands-On)

### Step 1 — EC2 Start Kiya
- EC2 → devops-server → Start instance
- New Public IP: `13.201.73.237`

### Step 2 — SSH se Connect Kiya
```powershell
ssh -i "devops-key.pem" ec2-user@13.201.73.237
```

### Step 3 — AWS CLI Check Kiya
```bash
aws --version
# Output: aws-cli/2.33.15 Python/3.9.25 Linux/6.1.172...
```

### Step 4 — Pehli Koshish (Error Aayi)
```bash
aws s3 ls
# Error: Unable to locate credentials
```
**Kyun?** EC2 ko AWS account ka access nahi tha — IAM Role chahiye tha!

### Step 5 — IAM Role Banaya
- IAM → Roles → Create Role
- **Service:** EC2
- **Policy:** `AmazonS3ReadOnlyAccess`
- **Role Name:** `devops-ec2-s3-role`
- ✅ Successfully created

### Step 6 — Role EC2 se Attach Kiya
- EC2 → devops-server → Actions → Security → Modify IAM Role
- **Role:** `devops-ec2-s3-role`
- ✅ Successfully attached

### Step 7 — S3 Bucket List Kiya
```bash
aws s3 ls
# Output: 2026-06-05 04:27:53 anand-portfolio-2026 ✅
```

### Step 8 — S3 se File Download Ki
```bash
aws s3 cp s3://anand-portfolio-2026/index.html .
ls
# Output: index.html ✅
```

### Step 9 — File Content Read Kiya
```bash
cat index.html
# Output: Tumhara portfolio website ka HTML code! ✅
```

### Step 10 — EC2 Stop Kiya
```bash
exit
```
- EC2 → devops-server → Stop instance ✅

---

## 💡 Aaj Ka Sabse Bada Lesson

> **IAM Role** EC2 ko AWS services access karne deta hai —
> bina username/password ke, sirf role se! Yahi secure tarika hai! 🔐

---

## 📊 Is Project Mein Kya Use Kiya

| Service | Kaam |
|---------|------|
| EC2 | Linux server — jahan se kaam kiya |
| S3 | File storage — jahan se file aayi |
| IAM Role | EC2 ko S3 access diya |
| AWS CLI | Terminal se AWS control kiya |
| SSH | Laptop se EC2 mein ghuse |

---

## ⚠️ Important Lessons

- EC2 start hone ke baad **Public IP change** ho sakta hai — hamesha check karo
- IAM Role = EC2 ka **identity card** AWS services ke liye
- **Stop** karo instance jab use na ho — Free Tier bachao!
- `aws s3 cp` = S3 se file copy karna

---

## 🔗 Resources
- [AWS CLI S3 Commands](https://docs.aws.amazon.com/cli/latest/reference/s3/)
- [IAM Roles for EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html)

---

*👨‍💻 Anand Jagdishbhai Sapra*
*📧 anandsapra1204@gmail.com*
*🔗 [GitHub](https://github.com/Sapra007) | [LinkedIn](https://linkedin.com/in/anand-sapra)*
