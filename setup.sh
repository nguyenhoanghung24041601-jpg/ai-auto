#!/usr/bin/env bash
set -euo pipefail

echo "=== Cài đặt môi trường nhánh vnh-sgu ==="

if command -v python3 >/dev/null 2>&1; then
  python3 -m pip install --quiet --upgrade pip
  python3 -m pip install --quiet -r "$(dirname "$0")/requirements.txt"
  echo "[OK] Đã cài đặt python-pptx, pymupdf, pdfplumber."
else
  echo "[ERROR] Không tìm thấy python3." >&2
  exit 1
fi

if ! command -v pdftotext >/dev/null 2>&1; then
  if command -v apt-get >/dev/null 2>&1 && command -v sudo >/dev/null 2>&1; then
    sudo apt-get update -qq
    sudo apt-get install -y -qq poppler-utils
    echo "[OK] Đã cài đặt poppler-utils (pdftotext)."
  else
    echo "[WARN] Không có apt-get/sudo để cài poppler-utils; vẫn có thể đọc PDF bằng pymupdf/pdfplumber."
  fi
else
  echo "[OK] pdftotext đã có sẵn."
fi

echo "=== Hoàn tất kiểm tra môi trường ==="
