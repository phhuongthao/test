create database MeetingRoomBooking
use MeetingRoomBooking

SELECT * FROM MeetingRoomBooking.permissions;
SELECT * FROM MeetingRoomBooking.users;
SELECT * FROM MeetingRoomBooking.user_roles;


-- Chèn dữ liệu vào bảng roles
INSERT INTO roles (role_name, description) VALUES 
('USER', 'Người dùng thông thường có quyền hạn hạn chế');

-- Chèn dữ liệu vào bảng permissions (nếu cần)
INSERT INTO permissions (permission_name, description) VALUES 
('VIEW_USERS', 'Xem danh sách người dùng'),
('MANAGE_USERS', 'Quản lý người dùng'),
('BOOK_ROOM', 'Đặt phòng họp'),
('CANCEL_BOOKING', 'Hủy đặt phòng họp');

-- Chèn dữ liệu vào bảng role_permissions
INSERT INTO role_permissions (role_name, permission_name) VALUES 
('ADMIN', 'VIEW_USERS'),
('ADMIN', 'MANAGE_USERS'),
('ADMIN', 'BOOK_ROOM'),
('ADMIN', 'CANCEL_BOOKING'),
('USER', 'BOOK_ROOM'),
('USER', 'CANCEL_BOOKING');

-- Chèn dữ liệu vào bảng users (ví dụ về admin và user)
INSERT INTO users (department, email, enabled, full_name, password, phone_number, user_name, group_id, position_id) VALUES 
-- Nhóm DXC
('IT', 'hoangminhduc@gmail.com', 1, 'Hoàng Minh Đức', '12345678@Aa', '0901122334', 'hduc', 'DXC', 'Software Engineer'),
('Marketing', 'phamthanhhuyen@gmail.com', 1, 'Phạm Thanh Huyền', '12345678@Aa', '0902233445', 'huyenpt', 'DXC', 'Marketing Specialist'),
('HR', 'tranthuylinh@gmail.com', 1, 'Trần Thùy Linh', '12345678@Aa', '0903344556', 'linhtt', 'DXC', 'HR Manager'),
('Accounting', 'nguyenquangvinh@gmail.com', 1, 'Nguyễn Quang Vinh', '12345678@Aa', '0904455667', 'vinhnq', 'DXC', 'Accountant'),

-- Nhóm DJ2
('IT', 'lephuongnam@gmail.com', 1, 'Lê Phương Nam', '12345678@Aa', '0911122334', 'namlp', 'DJ2', 'System Admin'),
('Marketing', 'danghoanganh@gmail.com', 1, 'Đặng Hoàng Anh', '12345678@Aa', '0912233445', 'anhdh', 'DJ2', 'Content Writer'),
('HR', 'vothithanhnga@gmail.com', 1, 'Võ Thị Thanh Nga', '12345678@Aa', '0913344556', 'ngavtt', 'DJ2', 'Recruiter'),
('Accounting', 'phamvandat@gmail.com', 1, 'Phạm Văn Đạt', '12345678@Aa', '0914455667', 'datpv', 'DJ2', 'Finance Manager'),

-- Nhóm DU1.3
('IT', 'nguyenvanduc@gmail.com', 1, 'Nguyễn Văn Đức', '12345678@Aa', '0921122334', 'ducnv', 'DU1.3', 'DevOps Engineer'),
('Marketing', 'dinhthimai@gmail.com', 1, 'Đinh Thị Mai', '12345678@Aa', '0922233445', 'maidt', 'DU1.3', 'Marketing Specialist'),
('HR', 'buitrungkien@gmail.com', 1, 'Bùi Trung Kiên', '12345678@Aa', '0923344556', 'kienbt', 'DU1.3', 'HR Executive'),
('Accounting', 'trinhquanghuy@gmail.com', 1, 'Trịnh Quang Huy', '12345678@Aa', '0924455667', 'huytq', 'DU1.3', 'Accountant'),

-- Nhóm DU3.11
('IT', 'phamngocthuy@gmail.com', 1, 'Phạm Ngọc Thúy', '12345678@Aa', '0931122334', 'thuypn', 'DU3.11', 'QA Engineer'),
('Marketing', 'nguyenthikimanh@gmail.com', 1, 'Nguyễn Thị Kim Anh', '12345678@Aa', '0932233445', 'anhnkt', 'DU3.11', 'Content Writer'),
('HR', 'tranvanhieu@gmail.com', 1, 'Trần Văn Hiếu', '12345678@Aa', '0933344556', 'hieutv', 'DU3.11', 'C&B'),
('Accounting', 'nguyenngocgiang@gmail.com', 1, 'Nguyễn Ngọc Giang', '12345678@Aa', '0934455667', 'giangnn', 'DU3.11', 'Finance Manager'),

-- Nhóm DKR1
('IT', 'buiminhbao@gmail.com', 1, 'Bùi Minh Bảo', '12345678@Aa', '0941122334', 'baobm', 'DKR1', 'Intern'),
('Marketing', 'lengocthanh@gmail.com', 1, 'Lê Ngọc Thanh', '12345678@Aa', '0942233445', 'thanhlg', 'DKR1', 'Marketing Specialist'),
('HR', 'dinhthuonguyen@gmail.com', 1, 'Đinh Thương Uyên', '12345678@Aa', '0943344556', 'uyendtu', 'DKR1', 'HR Manager'),
('Accounting', 'phamvannam@gmail.com', 1, 'Phạm Văn Nam', '12345678@Aa', '0944455667', 'nampv', 'DKR1', 'Accountant'),

-- Bổ sung thêm dữ liệu cho đủ 30 bản ghi
('IT', 'nguyenvana@gmail.com', 1, 'Nguyễn Văn A', '12345678@Aa', '0951122334', 'anv', 'DXC', 'Software Engineer'),
('Marketing', 'tranthib@gmail.com', 1, 'Trần Thị B', '12345678@Aa', '0952233445', 'btt', 'DJ2', 'Marketing Specialist'),
('HR', 'levanc@gmail.com', 1, 'Lê Văn C', '12345678@Aa', '0953344556', 'clv', 'DU1.3', 'HR Executive'),
('Accounting', 'phamthid@gmail.com', 1, 'Phạm Thị D', '12345678@Aa', '0954455667', 'dtp', 'DU3.11', 'Accountant'),
('IT', 'hoangthie@gmail.com', 1, 'Hoàng Thị E', '12345678@Aa', '0961122334', 'eth', 'DKR1', 'System Admin'),
('Marketing', 'nguyenvanf@gmail.com', 1, 'Nguyễn Văn F', '12345678@Aa', '0962233445', 'fnv', 'DXC', 'Marketing Specialist');


-- Chèn dữ liệu vào bảng user_roles (gán quyền cho user)
INSERT INTO user_roles (user_id, role_name) VALUES 
(4, 'USER');

-- Chèn dữ liệu vào bảng groups
INSERT INTO `groups` (group_name, created_date, division, location) VALUES 
('DXC', NOW(), 'IT', 'Hà Nội'),
('DJ2', NOW(), 'IT', 'Hà Nội'),
('DU1.3', NOW(), 'IT', 'Hà Nội'),
('DU3.11', NOW(), 'IT', 'Hà Nội'),
('DKR1', NOW(), 'HR', 'TP. HCM');


-- Chèn dữ liệu vào bảng positions
INSERT INTO positions (position_name, description) VALUES 
('Intern', 'Thực tập sinh'),
('C&B', 'Bộ phận lương thưởng & phúc lợi'),
('Software Engineer', 'Kỹ sư phần mềm'),
('System Admin', 'Quản trị hệ thống'),
('DevOps Engineer', 'Kỹ sư DevOps'),
('QA Engineer', 'Kỹ sư kiểm thử phần mềm'),
('HR Manager', 'Quản lý nhân sự'),
('HR Executive', 'Chuyên viên nhân sự'),
('Recruiter', 'Chuyên viên tuyển dụng'),
('Accountant', 'Kế toán viên'),
('Finance Manager', 'Quản lý tài chính'),
('Marketing Specialist', 'Chuyên viên marketing'),
('Content Writer', 'Nhân viên sáng tạo nội dung'),
('Sales Executive', 'Nhân viên kinh doanh'),
('Sales Manager', 'Quản lý kinh doanh');

TRUNCATE TABLE rooms;
INSERT INTO rooms (available, capacity, image_url, location, note, room_name) VALUES 
(1, 4, 'room1.jpg', '789 Tower', 'Phòng họp nhỏ', 'Meeting Room A1'),
(1, 6, 'room2.jpg', '789 Tower', 'Phòng họp vừa', 'Conference Room B2'),
(1, 8, 'room3.jpg', '789 Tower', 'Phòng đào tạo', 'Training Room C3'),

(1, 4, 'room4.jpg', 'Thanh Cong Building', 'Phòng phỏng vấn', 'Interview Room D1'),
(1, 6, 'room5.jpg', 'Thanh Cong Building', 'Phòng họp nhóm', 'Brainstorming Room D2'),
(1, 10, 'room6.jpg', 'Thanh Cong Building', 'Phòng hội nghị lớn', 'Executive Room D3'),

(1, 6, 'room7.jpg', 'The West Tower', 'Phòng làm việc nhóm', 'Team Meeting Room E1'),
(1, 8, 'room8.jpg', 'The West Tower', 'Phòng đào tạo', 'Training Room E2'),
(1, 12, 'room9.jpg', 'The West Tower', 'Phòng hội thảo', 'Conference Hall E3'),

(1, 4, 'room10.jpg', 'CMC Corporation', 'Phòng họp nhỏ', 'Discussion Room F1'),
(1, 6, 'room11.jpg', 'CMC Corporation', 'Phòng họp trung', 'Board Room F2'),
(1, 10, 'room12.jpg', 'CMC Corporation', 'Phòng hội nghị', 'Executive Meeting Room F3'),

(1, 4, 'room13.jpg', '789 Tower', 'Phòng gặp khách hàng', 'Client Meeting Room G1'),
(1, 8, 'room14.jpg', 'Thanh Cong Building', 'Phòng thuyết trình', 'Presentation Room G2'),
(1, 12, 'room15.jpg', 'The West Tower', 'Phòng hội nghị lớn', 'Grand Conference Room G3'),

(1, 6, 'room16.jpg', 'CMC Corporation', 'Phòng đào tạo', 'Training Hall H1'),
(1, 8, 'room17.jpg', 'CMC Corporation', 'Phòng họp nhóm', 'Project Room H2'),
(1, 10, 'room18.jpg', 'The West Tower', 'Phòng họp chiến lược', 'Strategy Room H3'),
(1, 12, 'room19.jpg', 'Thanh Cong Building', 'Phòng hội thảo lớn', 'Summit Hall H4'),
(1, 4, 'room20.jpg', '789 Tower', 'Phòng họp nhóm nhỏ', 'Small Team Room H5');


TRUNCATE TABLE room_bookings;
INSERT INTO room_bookings (created_at, description, end_time, purpose, start_time, status, booked_by, room_id) VALUES 
-- Booking đã diễn ra trước hôm nay (2024)
('2024-01-15 08:00:00', 'Họp kế hoạch quý 1', '2024-01-15 10:00:00', 'MEETING', '2024-01-15 09:00:00', 'CONFIRMED', 1, 1),
('2024-06-20 14:30:00', 'Phỏng vấn vị trí DevOps', '2024-06-20 15:30:00', 'INTERVIEW', '2024-06-20 14:00:00', 'CONFIRMED', 2, 2),
('2024-10-10 09:00:00', 'Đào tạo sử dụng phần mềm mới', '2024-10-10 11:00:00', 'TRAINING', '2024-10-10 09:30:00', 'CONFIRMED', 3, 3),
('2024-12-05 15:30:00', 'Họp nhóm Marketing', '2024-12-05 16:30:00', 'MEETING', '2024-12-05 15:00:00', 'CANCELLED', 4, 4),
('2024-12-25 10:00:00', 'Họp tổng kết cuối năm', '2024-12-25 12:00:00', 'MEETING', '2024-12-25 10:30:00', 'CONFIRMED', 5, 5),

-- Booking trong khoảng thời gian gần hiện tại (2025)
('2025-03-25 13:00:00', 'Đào tạo nhân viên mới', '2025-03-25 15:00:00', 'TRAINING', '2025-03-25 13:30:00', 'CONFIRMED', 6, 6),
('2025-03-28 10:00:00', 'Họp chiến lược công ty', '2025-03-28 11:30:00', 'MEETING', '2025-03-28 10:30:00', 'CONFIRMED', 7, 7),

-- Booking trong tương lai (2025)
('2025-04-15 14:00:00', 'Hội thảo về AI', '2025-04-15 16:00:00', 'TRAINING', '2025-04-15 14:30:00', 'CONFIRMED', 8, 8),
('2025-05-10 09:00:00', 'Họp triển khai dự án mới', '2025-05-10 10:30:00', 'MEETING', '2025-05-10 09:30:00', 'CONFIRMED', 9, 9),
('2025-06-01 16:00:00', 'Phỏng vấn ứng viên quản lý', '2025-06-01 17:00:00', 'INTERVIEW', '2025-06-01 16:30:00', 'CONFIRMED', 10, 10),
('2025-07-20 10:00:00', 'Họp phân tích kinh doanh', '2025-07-20 12:00:00', 'MEETING', '2025-07-20 10:30:00', 'CONFIRMED', 11, 11),
('2025-08-05 15:00:00', 'Họp review dự án', '2025-08-05 16:30:00', 'MEETING', '2025-08-05 15:30:00', 'CANCELLED', 12, 12),
('2025-09-18 08:30:00', 'Đào tạo kỹ năng quản lý', '2025-09-18 10:30:00', 'TRAINING', '2025-09-18 09:00:00', 'CONFIRMED', 13, 13),
('2025-10-22 11:00:00', 'Họp kế hoạch tài chính', '2025-10-22 12:30:00', 'MEETING', '2025-10-22 11:30:00', 'CONFIRMED', 14, 14),
('2025-11-30 13:30:00', 'Họp đánh giá hiệu suất', '2025-11-30 15:00:00', 'MEETING', '2025-11-30 14:00:00', 'CONFIRMED', 15, 15),
('2025-12-12 09:00:00', 'Hội thảo phát triển nhân sự', '2025-12-12 11:00:00', 'TRAINING', '2025-12-12 09:30:00', 'CONFIRMED', 16, 16),

-- Một số phòng có nhiều booking
('2025-03-20 14:00:00', 'Họp lập kế hoạch năm 2025', '2025-03-20 15:30:00', 'MEETING', '2025-03-20 14:30:00', 'CONFIRMED', 17, 5),
('2025-04-30 16:00:00', 'Họp đánh giá nội bộ', '2025-04-30 17:30:00', 'MEETING', '2025-04-30 16:30:00', 'CONFIRMED', 18, 10),
('2025-06-15 08:30:00', 'Hội thảo công nghệ Blockchain', '2025-06-15 10:30:00', 'TRAINING', '2025-06-15 09:00:00', 'CONFIRMED', 19, 6),
('2025-09-10 14:00:00', 'Họp chiến lược mở rộng thị trường', '2025-09-10 16:00:00', 'MEETING', '2025-09-10 14:30:00', 'CONFIRMED', 20, 12);


-- Chèn dữ liệu vào bảng notifications
INSERT INTO notifications (content, created_at, has_read, type, user_id) VALUES 
('Hệ thống bảo trì vào ngày mai', NOW(), 0, 'INFO', 1);


TRUNCATE TABLE room_equipment;
-- Chèn dữ liệu vào bảng room_equipment
INSERT INTO room_equipment (room_id, equipment_id) VALUES 
-- Phòng 1-5: Các phòng họp nhỏ
(1, 'Projector'), (1, 'Whiteboard'),
(2, 'Monitor'), (2, 'HDMI'), (2, 'Whiteboard'),
(3, 'Microphone'), (3, 'Speaker'), (3, 'Projector'),
(4, 'Projector'), (4, 'Monitor'), (4, 'HDMI'), (4, 'Whiteboard'), (4, 'Microphone'), (4, 'Speaker'),
(5, 'Projector'), (5, 'Monitor'), (5, 'HDMI'),

-- Phòng 6-10: Các phòng hội thảo
(6, 'Projector'), (6, 'Speaker'), (6, 'Microphone'),
(7, 'Monitor'), (7, 'HDMI'), (7, 'Projector'),
(8, 'Whiteboard'), (8, 'Monitor'), (8, 'Speaker'),
(9, 'Microphone'), (9, 'Projector'), (9, 'Whiteboard'),
(10, 'Projector'), (10, 'HDMI'), (10, 'Speaker'),

-- Phòng 11-15: Các phòng training
(11, 'Monitor'), (11, 'HDMI'), (11, 'Speaker'), (11, 'Whiteboard'),
(12, 'Projector'), (12, 'Speaker'), (12, 'Microphone'), (12, 'HDMI'),
(13, 'Monitor'), (13, 'Whiteboard'), (13, 'Projector'),
(14, 'Microphone'), (14, 'Speaker'), (14, 'HDMI'),
(15, 'Whiteboard'), (15, 'Monitor'), (15, 'Speaker'),

-- Phòng 16-20: Các phòng họp lớn
(16, 'Projector'), (16, 'Monitor'), (16, 'HDMI'), (16, 'Microphone'), (16, 'Speaker'), (16, 'Whiteboard'),
(17, 'Projector'), (17, 'Monitor'), (17, 'HDMI'), (17, 'Speaker'),
(18, 'Whiteboard'), (18, 'Projector'), (18, 'Monitor'),
(19, 'Microphone'), (19, 'Speaker'), (19, 'Projector'),
(20, 'Projector'), (20, 'Monitor'), (20, 'HDMI'), (20, 'Speaker'), (20, 'Microphone'), (20, 'Whiteboard');

INSERT INTO equipments (equipment_name, available, description) VALUES 
('Projector', 1, 'Máy chiếu cho phòng họp và thuyết trình'),
('Monitor', 1, 'Màn hình hiển thị cho hội nghị và đào tạo'),
('HDMI', 1, 'Cáp HDMI kết nối thiết bị với màn hình'),
('Whiteboard', 1, 'Bảng trắng dùng cho brainstorming và giảng dạy'),
('Microphone', 1, 'Micro hỗ trợ họp trực tuyến và thuyết trình'),
('Speaker', 1, 'Loa hỗ trợ âm thanh hội nghị và sự kiện');
