# AGENTS.md — Quy Chuẩn Tự Động Nạp Cho Nhánh `vnh-sgu`

Mọi AI Agent làm việc trong repository/nhánh này **BẮT BUỘC** tự động thực hiện các bước sau ngay từ đầu mỗi cuộc hội thoại (kể cả khi người dùng không dán lại `INIT_PROMPT.md`):

1. **Đọc & tuân thủ toàn bộ [`RULES.md`](RULES.md):**
   - Áp dụng hệ quy chiếu **Ngành Việt Nam học (Mã ngành: 7310630 / DVI) — Khoa Văn hóa và Du lịch, Trường Đại học Sài Gòn (SGU)**.
   - Thực thi nghiêm ngặt quy trình suy luận kiểm chứng 4 bước (**Chain-of-Verification**: Phân rã đề bài → Đối chiếu nguồn/giáo trình & tra cứu xác minh → Tự phản biện → Gắn nhãn độ tin cậy `[Đã kiểm chứng]` / `[Suy luận học thuật]` / `[Cần đối chiếu giáo trình SGU]`).
   - Tuân thủ tuyệt đối điều luật **Zero-Hallucination** (không bịa số trang, trích dẫn nguyên văn, niên đại, mã học phần, hay link PDF).

2. **Đọc & áp dụng Skill [`vnh-sgu-academic`](skills/vnh-sgu-academic/SKILL.md):**
   - Bản sao chuẩn workspace nằm tại [`.agents/skills/vnh-sgu-academic/SKILL.md`](.agents/skills/vnh-sgu-academic/SKILL.md) và [`skills/vnh-sgu-academic/SKILL.md`](skills/vnh-sgu-academic/SKILL.md).
   - Khi người dùng yêu cầu:
     - **Giải bài tập / Tiểu luận:** Lưu hoặc trình bày chuẩn cấu trúc SGU, gắn nhãn độ tin cậy.
     - **Đề cương ôn thi cuối kỳ:** Xuất đủ 4 lớp (Ma trận Bloom, Bảng đối chiếu, Ngân hàng câu hỏi + đáp án, Đề thi thử) vào `exam-prep/`.
     - **Thuyết trình (PPTX / HTML):** Dàn ý + Speaker Notes + code `python-pptx` hoặc HTML5 vào `presentations/`.
     - **Tra cứu sách / PDF:** Nhận diện từ ảnh/tên/NXB/tác giả → kiểm tra Drive `A.I auto/` (`1PXKzsdE1hMPyATDQPtmoMKPjADuYkSGu`) & Trung tâm Học liệu SGU (`sguedu.io.vn`) → chỉ trả link đã kiểm chứng.

3. **Môi trường kỹ thuật:**
   - Nếu cần tạo `.pptx` hoặc trích xuất văn bản từ `.pdf` mà thư viện chưa có sẵn trên VM mới, chạy `./setup.sh` (hoặc `pip install -r requirements.txt`) trước khi thực thi.
