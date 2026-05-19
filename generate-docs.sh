#!/usr/bin/env bash
set -euo pipefail

ENGINE="xelatex"
FONT="DejaVu Sans"
MARGIN="1in"

FORMATS="${1:-pdf}"

generate_pdf() {
  echo "Generating PDFs..."
  mkdir -p assets/pdf

  pandoc CV_Julien_Porschen_FR.md \
    -o assets/pdf/CV_Julien_Porschen_FR.pdf \
    --pdf-engine="$ENGINE" \
    -V geometry:margin="$MARGIN" \
    -V mainfont="$FONT"

  pandoc CV_Julien_Porschen_EN.md \
    -o assets/pdf/CV_Julien_Porschen_EN.pdf \
    --pdf-engine="$ENGINE" \
    -V geometry:margin="$MARGIN" \
    -V mainfont="$FONT"

  echo "PDF generation done ✔"
}

generate_word() {
  echo "Generating Word documents..."
  mkdir -p assets/docx

  pandoc CV_Julien_Porschen_FR.md \
    -o assets/docx/CV_Julien_Porschen_FR.docx

  pandoc CV_Julien_Porschen_EN.md \
    -o assets/docx/CV_Julien_Porschen_EN.docx

  echo "Word generation done ✔"
}

case "$FORMATS" in
  pdf)
    generate_pdf
    ;;
  word)
    generate_word
    ;;
  all)
    generate_pdf
    generate_word
    ;;
  *)
    echo "Usage: $0 [pdf|word|all]"
    echo "  pdf  - Generate PDFs (default)"
    echo "  word - Generate Word documents"
    echo "  all  - Generate all supported formats"
    exit 1
    ;;
esac
