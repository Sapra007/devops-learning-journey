# ☁️ AWS — Day 01: S3 Static Website Hosting

> AWS (Amazon Web Services) ek cloud platform hai jo internet pe servers, storage aur services provide karta hai — apna computer band karo, kaam chalta rahe! 🌐

---

## 📌 AWS Kya Hai?

AWS ek **Cloud Computing Platform** hai.

- Internet pe virtual servers aur storage milta hai
- Apna hardware kharidne ki zaroorat nahi
- Pay only for what you use
- Amazon ka product hai — duniya ka #1 cloud platform

---

## 🔍 Cloud vs Traditional Server

| Traditional Server | AWS Cloud |
|-------------------|-----------|
| Apna hardware kharidna padta hai | AWS ka hardware use karo |
| Ek jagah rakhna padta hai | Duniya bhar mein available |
| Expensive upfront cost | Pay as you go |
| Maintenance khud karni padti hai | AWS manage karta hai |

---

## ☁️ AWS S3 Kya Hai?

**S3 = Simple Storage Service**

- Files, images, videos store karne ke liye
- **Static websites** host kar sakte hain
- 99.999999999% durability (11 nines!)
- Free tier mein **5 GB free** milta hai

---

## 🪣 S3 Bucket Banana

### Step 1 — AWS Console pe Login Karo
```
https://console.aws.amazon.com
```

### Step 2 — S3 Search Karo aur Open Karo

### Step 3 — Create Bucket
```
Bucket name: anand-portfolio-2026
Region: Asia Pacific (Mumbai) ap-south-1
Bucket type: General purpose
Block public access: UNCHECK ✅
```

> **Bucket** ek folder ki tarah hota hai — jahan tumhari files store hoti hain!

---

## 📁 Portfolio Website — index.html

```html
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Anand Sapra | Portfolio</title>
  <style>
    body { font-family: Arial; text-align: center;
           background: #f0f0f0; padding: 50px; }
    h1 { color: #333; }
    .skills { background: white; padding: 20px;
              border-radius: 10px; margin: 20px auto;
              max-width: 500px; }
  </style>
</head>
<body>
  <h1>Anand Jagdishbhai Sapra</h1>
  <p>B.Sc. IT Graduate | Cloud & DevOps Enthusiast</p>
  <div class="skills">
    <h2>My Skills</h2>
    <p>☁️ AWS (EC2, S3, IAM, VPC)</p>
    <p>🐧 Linux (Ubuntu/CentOS)</p>
    <p>🐍 Python & Bash Scripting</p>
    <p>🔧 Git & GitHub</p>
  </div>
  <p>📧 anandsapra1204@gmail.com</p>
  <p>
    <a href="https://github.com/Sapra007">GitHub</a> |
    <a href="https://linkedin.com/in/anand-sapra">LinkedIn</a>
  </p>
</body>
</html>
```

---

## ⚙️ Static Website Hosting Enable Karna

### Step 1 — File Upload Karo
```
Bucket → Upload → Add files → index.html → Upload
```

### Step 2 — Properties Tab mein jaao
```
Static website hosting → Edit → Enable
Index document: index.html → Save changes
```

### Step 3 — Bucket Policy Set Karo
```
Permissions → Bucket Policy → Edit
```

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::anand-portfolio-2026/*"
    }
  ]
}
```

> **Bucket Policy** ek security rule hai — yeh batata hai ki kaun file dekh sakta hai!

---

## 🌐 Website Live!

```
URL: http://anand-portfolio-2026.s3-website.ap-south-1.amazonaws.com
```

✅ Website internet pe live ho gayi — koi bhi duniya se access kar sakta hai!

---

## 🔐 IAM Kya Kaam Aaya?

**IAM = Identity and Access Management**

- Bucket Policy IAM ka hi part hai
- `"Effect": "Allow"` — access deta hai
- `"Principal": "*"` — sabko allow kiya
- `"Action": "s3:GetObject"` — sirf read/download allow kiya
- `"Resource": "arn:aws:s3:::anand-portfolio-2026/*"` — is bucket ki saari files pe

---

## 🎯 Commands & Concepts Summary

| Concept | Kaam |
|---------|------|
| `S3 Bucket` | Files store karne ka container |
| `Static Website Hosting` | HTML file ko website banana |
| `Bucket Policy` | Kaun access kar sakta hai — rule |
| `IAM` | AWS ka security system |
| `ARN` | AWS Resource Name — unique ID |
| `ap-south-1` | Mumbai region ka code |

---

## 💰 Free Tier Details

| Resource | Free Limit |
|----------|------------|
| S3 Storage | 5 GB / month |
| GET Requests | 20,000 / month |
| PUT Requests | 2,000 / month |
| Data Transfer | 100 GB / month |

> **Billing Alert** set karo — $1 budget → agar charge lage toh email aayega! 🛡️

---

## 💡 Key Learnings

✅ AWS S3 files aur websites store karne ke liye use hota hai  
✅ Bucket banana = S3 mein folder banana  
✅ Static website hosting se HTML file live website ban jaati hai  
✅ Bucket Policy se public access milta hai  
✅ IAM AWS ka security system hai  
✅ Mumbai region (ap-south-1) India ke liye best hai  
✅ Free tier mein 5GB storage free milti hai  

---

## 🚀 Aaj Ka Project

> **Portfolio Website** AWS S3 pe deploy ki!
>
> 🌐 **Live URL:** http://anand-portfolio-2026.s3-website.ap-south-1.amazonaws.com
>
> **Seekha:** S3 bucket banana, file upload karna, static hosting enable karna, bucket policy set karna

---

*Date: June 5, 2026 | Author: Anand Jagdishbhai Sapra*
