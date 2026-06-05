# ☁️ AWS Day 03 — EC2 Instance Launch

> **Date:** 05 June 2026
> **Topic:** EC2 — Virtual Server Launch
> **Status:** ✅ Completed

---

## 🧠 EC2 Kya Hota Hai?

**EC2 = Elastic Compute Cloud**

Socho tumhare ghar mein ek laptop hai — EC2 bilkul waise hi hai, bas yeh AWS ke data center mein hota hai. Tum internet se us server ko control kar sakte ho!

| Cheez | Tumhara Laptop | AWS EC2 |
|-------|---------------|---------|
| Computer | Ghar mein | AWS data center mein |
| OS | Windows | Amazon Linux |
| On/Off | Power button | Console se |
| Cost | Fixed (buy once) | Per hour pay |

---

## 🛠️ Aaj Kya Kiya (Hands-On)

### Step 1 — EC2 Instance Launch Kiya
- AWS Console → EC2 → Launch Instance
- **Name:** `devops-server`
- **OS:** Amazon Linux 2023
- **Instance Type:** `t2.micro` (Free Tier) ✅
- **Key Pair:** `devops-key` (naya banaya, .pem file download ki)
- **Security Group:** SSH allowed from Anywhere
- **Storage:** 8 GB default

### Step 2 — Instance Running Hua
- Instance ID: `i-0ce331eab83add2b0`
- Public IP: `3.108.63.198`
- Region: ap-south-1 (Mumbai)
- Status: ✅ Running

### Step 3 — Instance Stop Kiya (Free Tier Bachane ke liye)
- Instance state → Stop instance ✅

---

## 💡 Important Concepts

- **AMI** = Amazon Machine Image — OS ka blueprint (jaise Amazon Linux 2023)
- **t2.micro** = Sabse chhota instance — 1 vCPU, 1GB RAM — Free Tier mein aata hai
- **Key Pair** = SSH ke liye lock aur chabi — `.pem` file = tumhari chabi 🔑
- **Security Group** = Server ka darwaza — kaun aa sakta hai, kaun nahi
- **Stop vs Terminate** = Stop → band karo (data rehta hai) | Terminate → delete karo

---

## ⚠️ Important Rules
- Instance use na ho toh **STOP** karo — charge nahi hoga
- `.pem` file kabhi delete mat karo — wapas download nahi hoti!
- Free tier mein **750 hours/month** milte hain t2.micro ke

---

## 🔗 Resources
- [EC2 Official Docs](https://docs.aws.amazon.com/ec2)
- [EC2 Free Tier Details](https://aws.amazon.com/free)

---

*👨‍💻 Anand Jagdishbhai Sapra*
*📧 anandsapra1204@gmail.com*
*🔗 [GitHub](https://github.com/Sapra007) | [LinkedIn](https://linkedin.com/in/anand-sapra)*
