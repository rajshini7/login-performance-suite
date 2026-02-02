# 🚀 Login Performance Testing Suite (JMeter + GitHub CI)

This project is a **backend login performance testing framework** built using **Apache JMeter**, fully automated via **command-line execution** and integrated into a **GitHub Actions CI pipeline**.

It demonstrates how real-world performance engineers design, execute, and automate **baseline, load, stress, and spike tests** for authenticated backend APIs.

---

## 🚀 Why This Project Exists

Most performance testing examples stop at “run JMeter locally.”

This project goes further by demonstrating:

- Backend (API-level) performance testing  
- JWT-based login and token correlation  
- Non-GUI JMeter execution (production-safe)  
- Automated multi-profile test execution  
- CI pipeline integration using GitHub Actions  
- Realistic handling of public API constraints  

This mirrors how **performance testing is done in real engineering teams**, not tutorials.

---

## 🧠 Core Concepts

- **Backend Login Performance Testing**
- **JWT Authentication & Token Correlation**
- **Baseline / Load / Stress / Spike Testing**
- **Property-driven Thread Groups**
- **Non-GUI (CLI) JMeter Execution**
- **CI-friendly Test Orchestration**
- **Artifact-based Result Analysis**

---

## 🧱 Tech Stack

| Tool | Purpose |
|----|----|
| Apache JMeter | Performance test execution |
| Java 11 | Runtime for JMeter |
| Windows Batch (.bat) | Test orchestration |
| GitHub Actions | CI pipeline |
| HTML Dashboard | Performance reporting |

---

## 📂 Project Structure

```

login-performance-suite/
│
├── jmx/
│ └── login_test.jmx # JMeter test plan (property-driven)
│
├── run_test.bat # Runs baseline, load, stress & spike tests
│
├── results/ # Generated JTL files (CI artifact)
│ ├── baseline.jtl
│ ├── load.jtl
│ ├── stress.jtl
│ └── spike.jtl
│
├── reports/ # HTML performance dashboards (CI artifact)
│ ├── baseline/
│ ├── load/
│ ├── stress/
│ └── spike/
│
└── .github/workflows/
└── performance.yml # GitHub Actions pipeline


> `results/` and `reports/` are **generated at runtime** and are not committed to source control.

---
```

## ▶️ How to Run (Local)

### Prerequisites
- Java 11+
- Apache JMeter 5.6.x
- Windows

### Run all performance tests

```powershell
.\run_test.bat


This will execute:

Baseline Test

Load Test

Stress Test

Spike Test

And generate:

.jtl result files

HTML performance dashboards

```

## 🤖 CI / CD Ready

This project is fully integrated with GitHub Actions.

CI Pipeline Features

Runs on development branch

Installs Java & JMeter dynamically

Executes performance tests in non-GUI mode

Uploads JTL and HTML reports as artifacts

Note: Public APIs may block GitHub runner IPs.
CI execution focuses on pipeline validation and report generation, while strict validation is performed locally.

## 📊 run_test Report

Each execution produces:

JTL files for raw metrics

HTML dashboards with:

Throughput

Response times

Percentiles (90 / 95 / 99)

Error rate

APDEX score

Reports can be opened via:

reports/<test-type>/index.html


## ✅ What This Framework Is Good At

✔ Demonstrating real performance engineering workflows
✔ Backend authentication performance testing
✔ CLI-based automation
✔ CI pipeline integration
✔ Artifact-based performance analysis
✔ Interview & portfolio demonstration

❌ Not intended for large-scale production load testing on public APIs
❌ Not a replacement for enterprise performance environments



## 👤 Created By

Rajeev Shrinivas

Performance & Automation Engineer
Focused on building real-world, production-grade testing frameworks