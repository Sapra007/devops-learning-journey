# ☁️ AWS Day 05 — VPC (Virtual Private Cloud)

> **Date:** 05 June 2026
> **Topic:** VPC — Networking Basics
> **Status:** ✅ Completed

---

## 🧠 VPC Kya Hota Hai?

**VPC = Virtual Private Cloud = Tumhara apna private network AWS pe!**

Bilkul waise jaise tumhare ghar mein WiFi router se ek private network bana hota hai — VPC AWS mein waise hi kaam karta hai!

| Real Life | AWS VPC |
|-----------|---------|
| Ghar ka WiFi network | VPC |
| Ghar ke andar ke devices | EC2 Instances |
| Ghar ka main gate | Internet Gateway |
| Rooms (bedroom, kitchen) | Subnets |
| Security guard | Security Group / NACL |
| Address system (ghar ka address) | CIDR Block |

---

## 🗺️ CIDR Kya Hota Hai?

**CIDR = IP address range**

- `10.0.0.0/16` = 65,536 IP addresses tumhare VPC ke liye
- `10.0.1.0/24` = 256 IP addresses ek subnet ke liye

Socho ghar ka pin code — `/16` ek bada area, `/24` ek chhoti gali!

---

## 🛠️ Aaj Kya Kiya (Hands-On)

### Step 1 — Custom VPC Banaya
- VPC Console → Create VPC → VPC Only
- **Name:** `devops-vpc`
- **IPv4 CIDR:** `10.0.0.0/16`
- ✅ Successfully created

### Step 2 — Public Subnet Banaya
- Subnets → Create Subnet
- **VPC:** `devops-vpc`
- **Name:** `devops-public-subnet`
- **Availability Zone:** `ap-south-1a`
- **IPv4 CIDR:** `10.0.1.0/24`
- ✅ Successfully created

### Step 3 — Internet Gateway Banaya & Attach Kiya
- Internet Gateways → Create IGW
- **Name:** `devops-igw`
- **Attach to VPC:** `devops-vpc`
- ✅ Successfully attached

### Step 4 — Route Table Configure Kiya
- Route Tables → `devops-vpc` ki route table
- **Route add kiya:**
  - Destination: `0.0.0.0/0`
  - Target: `devops-igw`
- **Subnet associate kiya:** `devops-public-subnet`
- ✅ Successfully updated

---

## 🏗️ Final VPC Structure

```
devops-vpc (10.0.0.0/16)
├── devops-public-subnet (10.0.1.0/24)
│   └── ap-south-1a
├── devops-igw (Internet Gateway)
└── Route Table
    ├── 0.0.0.0/0 → devops-igw (internet traffic)
    └── 10.0.0.0/16 → local (internal traffic)
```

---

## 💡 Important Concepts

| Concept | Kaam |
|---------|------|
| **VPC** | Tumhara private network AWS pe |
| **Subnet** | VPC ke andar chhote sections |
| **Public Subnet** | Internet se accessible |
| **Private Subnet** | Internet se accessible nahi (secure) |
| **Internet Gateway** | VPC aur internet ke beech ka darwaza |
| **Route Table** | Traffic kahan jaaye — yeh decide karta hai |
| **CIDR Block** | IP address range |

---

## 📊 Aaj Ke Resources

| Resource | Name | Value |
|----------|------|-------|
| VPC | devops-vpc | 10.0.0.0/16 |
| Subnet | devops-public-subnet | 10.0.1.0/24 |
| Internet Gateway | devops-igw | Attached to devops-vpc |
| Route | Internet route | 0.0.0.0/0 → devops-igw |

---

## 🔗 Resources
- [VPC Official Docs](https://docs.aws.amazon.com/vpc)
- [VPC Subnets Guide](https://docs.aws.amazon.com/vpc/latest/userguide/configure-subnets.html)

---

*👨‍💻 Anand Jagdishbhai Sapra*
*📧 anandsapra1204@gmail.com*
*🔗 [GitHub](https://github.com/Sapra007) | [LinkedIn](https://linkedin.com/in/anand-sapra)*
