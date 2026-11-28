# 🎓 Nhánh `vnh-sgu` — Trợ Lý Học Tập Chuyên Ngành Việt Nam Học (Đại học Sài Gòn)

> **Khoa Văn hóa và Du lịch — Trường Đại học Sài Gòn (SGU)**  
> **Mã ngành:** `7310630` | **Mã CTĐT:** `DVI`

Nhánh này được thiết kế như một môi trường làm việc học thuật có kỷ luật cao, chuyên dùng để hỗ trợ học tập và nghiên cứu các môn chuyên ngành **Việt Nam học (SGU)** với độ chính xác và tính kiểm chứng cao nhất.

---

## 📁 Cấu trúc thư mục

```text
vnh-sgu/
├── AGENTS.md                         # Tự động nạp RULES.md & skill ngay khi mở chat mới
├── RULES.md                          # Bộ 8 điều luật học thuật & chống bịa đặt (bắt buộc tuân thủ)
├── INIT_PROMPT.md                    # Prompt khởi tạo hoạt động + mẫu lệnh nhanh khi mở chat mới
├── SKILLS_AND_MCP.md                 # Phân tích skill suy luận chuẩn & đánh giá MCP Science cho VNH
├── requirements.txt                  # Thư viện Python cho PPTX và đọc PDF (python-pptx, pymupdf, pdfplumber)
├── setup.sh                          # Script cài nhanh môi trường cho Cloud VM / Linux
├── .agents/skills/vnh-sgu-academic/  # Skill chuẩn workspace (tự động nhận diện)
├── skills/vnh-sgu-academic/SKILL.md  # Bản lưu skill để đồng bộ/save_skill giữa các tài khoản
├── exercises/                        # Lưu bài giải, bài tập thảo luận, đề cương tiểu luận theo môn
├── exam-prep/                        # Lưu đề cương ôn thi cuối kỳ, bảng so sánh, đề thi thử
├── presentations/                    # Lưu dàn ý thuyết trình, code Python (PPTX) & Slide HTML5
└── textbooks/                        # Lưu phiếu tra cứu thư mục sách, giáo trình, link PDF hợp pháp
```

---

## 🎯 4 Tác Vụ Trọng Tâm

1. **Giải bài tập & Tiểu luận chuyên ngành:** Triển khai theo cấu trúc học thuật SGU, có dẫn chứng thực tiễn, trích dẫn rõ ràng và gắn nhãn độ tin cậy.
2. **Tạo & Giải đề cương ôn thi cuối kỳ:** Xây dựng đủ 4 lớp (*Ma trận Bloom → Bảng đối chiếu → Ngân hàng câu hỏi & đáp án → Đề thi thử & bẫy thường gặp*).
3. **Lập dàn ý & Xuất code thuyết trình (PPTX / HTML):** Thiết kế slide súc tích kèm Speaker Notes chi tiết và code hoàn chỉnh (`python-pptx` hoặc HTML5 tương tác).
4. **Tra cứu sách & tìm PDF từ ảnh / tên sách / NXB / tác giả:** Nhận diện thư mục chuẩn, ưu tiên kiểm tra Google Drive `A.I auto/` và Trung tâm Học liệu SGU (`sguedu.io.vn`), chỉ trả về nguồn hợp pháp đã kiểm chứng.

---

## ⚡ Cách sử dụng khi bắt đầu phiên chat mới

1. Chọn project `A.I auto/` và chuyển sang nhánh **`vnh-sgu`**.
2. Mở file [`INIT_PROMPT.md`](INIT_PROMPT.md), copy **Prompt Khởi Tạo Chuẩn** và dán vào tin nhắn đầu tiên.
3. Gửi kèm đề bài, tên môn học, slide cũ trên Drive, hoặc ảnh bìa giáo trình bạn cần tìm.
