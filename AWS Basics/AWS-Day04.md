# ☁️ AWS Day 04 — EC2 Linux Server SSH Connect

> **Date:** 05 June 2026
> **Topic:** EC2 — Linux Server Connect via SSH
> **Status:** ✅ Completed

---

## 🧠 SSH Kya Hota Hai?

**SSH = Secure Shell**

Socho tumhara server Mumbai mein hai aur tum Ahmedabad mein — SSH ek **secret tunnel** hai jo tumhe wahan se is server ko control karne deta hai, sirf ek command se!

---

## 🛠️ Aaj Kya Kiya (Hands-On)

### Step 1 — PowerShell Khola
```powershell
cd Downloads
```

### Step 2 — SSH Command Chalayi
```powershell
ssh -i "devops-key.pem" ec2-user@3.108.63.198
```

### Step 3 — Server ke Andar Ghuse ✅
```
   ,     #_
   ~\_  ####_        Amazon Linux 2023
  ~~  \_#####\
  ~~     \###|       https://aws.amazon.com/linux/amazon-linux-2023
  ~~       \#/ ___
   ~~       V~' '->
    ~~~         /
      ~~._.   _/
         _/ _/
       _/m/'
[ec2-user@ip-172-31-6-138 ~]$
```

### Step 4 — Commands Run Kiye
```bash
hostname
# Output: ip-172-31-6-138.ap-south-1.compute.internal

uname -a
# Output: Linux ip-172-31-6-138 6.1.172 ... x86_64 GNU/Linux

free -h
# Output: Mem: 961Mi total, 117Mi used, 607Mi free

echo "Hello from Anand Sapra's AWS Server!"
# Output: Hello from Anand Sapra's AWS Server!

exit
# Output: logout — Connection to 3.108.63.198 closed.
```

---

## 📊 Server Ki Details

| Property | Value |
|----------|-------|
| Hostname | ip-172-31-6-138.ap-south-1.compute.internal |
| OS | Amazon Linux 2023 |
| Kernel | 6.1.172 x86_64 |
| Total RAM | 961 MB |
| Used RAM | 117 MB |
| Free RAM | 607 MB |

---

## 💡 Important Concepts

- **ec2-user** = Amazon Linux ka default username
- **-i flag** = identity file — tumhari .pem key
- **Public IP** = Server ka address jisse tum connect karte ho
- **Private IP** = AWS ke andar ka address (172.31.x.x)
- Server ke andar tumhara prompt change ho jaata hai — `PS C:\>` se `[ec2-user@...]$`

---

## ⚠️ SSH Commands Yaad Rakho

```bash
# Connect karna
ssh -i "devops-key.pem" ec2-user@<PUBLIC_IP>

# Bahar aana
exit
```

---

## 🔗 Resources
- [SSH Connect to EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-ssh.html)

---

*👨‍💻 Anand Jagdishbhai Sapra*
*📧 anandsapra1204@gmail.com*
*🔗 [GitHub](https://github.com/Sapra007) | [LinkedIn](https://linkedin.com/in/anand-sapra)*
