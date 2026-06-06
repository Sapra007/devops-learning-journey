# ☁️ AWS Day 07 — CloudWatch (Monitoring & Alerts)

> **Date:** 05 June 2026
> **Topic:** CloudWatch — Monitoring & Alerts
> **Status:** ✅ Completed

---

## 🧠 CloudWatch Kya Hota Hai?

**CloudWatch = AWS ka CCTV camera + Alarm system!**

| Real Life | CloudWatch |
|-----------|-----------|
| CCTV Camera | Metrics monitor karna |
| Security Alarm | Alarm set karna |
| Security Guard ki Diary | Logs store karna |
| SMS Alert | SNS Email Notification |

---

## 🛠️ Aaj Kya Kiya (Hands-On)

### Step 1 — CloudWatch Dashboard Banaya
- CloudWatch → Dashboards → Create dashboard
- **Name:** `devops-dashboard`
- ✅ Successfully created

### Step 2 — EC2 CPU Metric Widget Add Kiya
- Add widget → Line graph
- EC2 → Per-Instance Metrics
- `devops-server` → `CPUUtilization` ✅ select kiya
- Widget create kiya aur dashboard save kiya
- ✅ CPU usage graph dikh raha hai

### Step 3 — CPU Alarm Banaya
- Alarms → Create alarm
- **Metric:** EC2 → Per-Instance → `CPUUtilization`
- **Condition:** Greater than `70` percent
- **Period:** 5 minutes average
- ✅ Alarm created

### Step 4 — Email Notification Set Kiya (SNS)
- **SNS Topic:** `devops-alerts`
- **Email:** `anandsapra1204@gmail.com`
- Confirmation email aaya (Spam folder mein tha! 😄)
- **"Confirm subscription"** click kiya
- ✅ Subscription confirmed!

### Step 5 — Alarm Details
- **Alarm Name:** `devops-cpu-alarm`
- **Description:** CPU 70% se upar jaaye toh alert
- ✅ Successfully created

---

## 💡 Kaise Kaam Karta Hai?

```
EC2 Server
    ↓ CPU Usage data bhejta hai
CloudWatch
    ↓ 70% se upar gaya?
Alarm Trigger
    ↓ SNS Topic ko notify karta hai
devops-alerts Topic
    ↓ Email bhejta hai
anandsapra1204@gmail.com 📧
```

---

## 📊 Important Concepts

| Concept | Kaam |
|---------|------|
| **Metric** | Server ka data (CPU, RAM, Network) |
| **Dashboard** | Saare metrics ek jagah dekhna |
| **Alarm** | Condition set karna — limit cross hone pe alert |
| **SNS** | Simple Notification Service — email/SMS bhejne ka system |
| **Subscription** | Email confirm karna — spam check karo! |
| **Period** | Kitne time ka average lena (5 min) |
| **Threshold** | Limit — yahan 70% CPU |

---

## ⚠️ Important Tips

- SNS confirmation email **Spam folder** mein ja sakta hai — check karo!
- CloudWatch **Free Tier** mein milta hai — 10 metrics, 10 alarms free!
- EC2 **stopped** hone pe bhi CloudWatch data dikhata hai (historical)
- Alarm **3 states** hote hain: OK, In Alarm, Insufficient Data

---

## 💰 CloudWatch Free Tier

| Resource | Free Limit |
|----------|------------|
| Metrics | 10 custom metrics |
| Alarms | 10 alarms |
| Dashboard | 3 dashboards |
| Logs | 5 GB ingestion |

---

## 🔗 Resources
- [CloudWatch Official Docs](https://docs.aws.amazon.com/cloudwatch)
- [SNS Notifications](https://docs.aws.amazon.com/sns)

---

*👨‍💻 Anand Jagdishbhai Sapra*
*📧 anandsapra1204@gmail.com*
*🔗 [GitHub](https://github.com/Sapra007) | [LinkedIn](https://linkedin.com/in/anand-sapra)*
