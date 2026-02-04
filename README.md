# Resume — Julien Porschen

This repository contains the **source files and generated documents** of my professional resume,  
maintained in **Markdown** and built into **PDF and Word** using Pandoc.

The goal is to keep a **single source of truth**, versioned, reproducible, and easy to maintain.

---

## 👤 About me

**Linux & Virtualization Infrastructure Expert**

> Over 20 years of hands-on experience with critical infrastructures.  
> Designing robust architectures, automating whatever can be, and stepping in to stabilize systems when it counts.

A system engineer at heart, I help organizations **escape VMware lock-in** by designing, automating, and operating modern **open-source virtualization infrastructures** (based on XCP-ng / Xen Orchestra and the wider open-source ecosystem). 

My background covers:
- **Critical & Regulated Environments:** Banking, PSF, Public Sector (Luxembourg & France).
- **Core Technologies:** Linux (Red Hat, Ubuntu), Open-Source Virtualization, Cloud (AWS).
- **Automation & Scale:** Mass deployment, infrastructure-as-code (Ansible), and compliance.

I focus on making infrastructures **simple, resilient, automated, and shared**.

---

## 📄 Contents

- `CV_Julien_Porschen_FR.md` — Resume (French, Markdown source)
- `CV_Julien_Porschen_EN.md` — Resume (English, Markdown source)
- `assets/pdf/` — Generated PDF versions
- `assets/docx/` — Generated Word documents
- `generate-docs.sh` — Build script for document generation

---

## 🛠️ Build Documents

Documents are generated using **Pandoc**. PDFs require **XeLaTeX**.

### Requirements (Debian / Ubuntu)

```bash
sudo apt install pandoc texlive-xetex
```

### Usage

```bash
./generate-docs.sh          # Generate PDFs (default)
./generate-docs.sh pdf      # Generate PDFs
./generate-docs.sh word     # Generate Word documents
./generate-docs.sh all      # Generate all supported formats
```
