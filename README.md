# Resume — Julien Porschen

This repository contains the **source files and generated documents** of my professional resume,  
maintained in **Markdown** and built into **PDF and Word** using Pandoc.

The goal is to keep a **single source of truth**, versioned, reproducible, and easy to maintain.

---

## 👤 About me

**Julien Porschen — IT Swiss Army Knife**

I help companies **escape VMware lock-in** by designing and operating  
**open-source virtualization infrastructures**,  
based on **XCP-ng / Xen Orchestra** and the wider **open-source ecosystem**.

My background spans more than 20 years across:
- Linux infrastructures
- Virtualization & automation
- Banking / PSF / regulated environments
- Public-sector and large-scale critical systems

---

## 📄 Contents

- `CV_Julien_Porschen_FR.md` — Resume (French, Markdown source)
- `CV_Julien_Porschen_EN.md` — Resume (English, Markdown source)
- `assets/pdf/` — Generated PDF versions
- `assets/docx/` — Generated Word documents
- `generate-doc.sh` — Build script for document generation

---

## 🛠️ Build Documents

Documents are generated using **Pandoc**. PDFs require **XeLaTeX**.

### Requirements (Debian / Ubuntu)

```bash
sudo apt install pandoc texlive-xetex
```

### Usage

```bash
./generate-doc.sh          # Generate PDFs (default)
./generate-doc.sh pdf      # Generate PDFs
./generate-doc.sh word     # Generate Word documents
./generate-doc.sh all      # Generate all supported formats
```
