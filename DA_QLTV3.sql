CREATE DATABASE QLTV

USE QLTV
 
CREATE TABLE THU_THU (
MA_TT INT(5)  NOT NULL PRIMARY KEY AUTO_INCREMENT,
HO_TEN NVARCHAR(30),
EMAIL NVARCHAR(30),
MATKHAU CHAR(5)
)

CREATE TABLE DOC_GIA(
MA_DG INT(5)  NOT NULL PRIMARY KEY AUTO_INCREMENT,
TEN_DG NVARCHAR(30),
NGAY_SINH DATE,
SDT CHAR(10),
CCCD CHAR(20),
EMAIL CHAR(30),
MK CHAR(30)
)

CREATE TABLE SACH (
MA_SACH INT(5)  NOT NULL PRIMARY KEY AUTO_INCREMENT,
TEN_SACH NVARCHAR(255),
THE_LOAI NVARCHAR(20),
TEN_TG NVARCHAR(30),
NHAXB NVARCHAR(50),
GIA_BAN FLOAT ,
GIA_COC FLOAT,
VI_TRI NVARCHAR(50),
SO_LUONG_BD INT
)


CREATE TABLE PHIEU_MUON_TRA(
MA_PHIEU INT (5)  NOT NULL PRIMARY KEY AUTO_INCREMENT,
MA_DG  INT (5),
FOREIGN KEY (MA_DG) REFERENCES DOC_GIA(MA_DG),
NGAY_MUON DATE,
NGAY_TRA DATE,
SO_LUONG_MUON INT 

)

CREATE TABLE SACH_PHIEUMUON(
MA_PHIEU INT(5),
MA_SACH INT(5),
PRIMARY KEY(MA_PHIEU,MA_SACH),
FOREIGN KEY (MA_PHIEU) REFERENCES PHIEU_MUON_TRA(MA_PHIEU),
FOREIGN KEY (MA_SACH) REFERENCES SACH(MA_SACH),
SO_LUONG INT,
TINH_TRANG NVARCHAR(255)
)


SELECT * FROM THU_THU

SELECT * FROM DOC_GIA
SELECT * FROM SACH

SELECT * FROM PHIEU_MUON_TRA
SELECT * FROM SACH_PHIEUMUON

delete from DOC_GIA where MA_DG = '10011'



-- THÊM THÔNG TIN
INSERT INTO THU_THU VALUES
('00001','VŨ BÁ TUẤN CƯỜNG','tuancuong@gmail.com','12345'),
('00002','PHAN ĐỨC MINH','ducminh@gmail.com','23456'),
('00003','ĐẶNG QUỐC BẢO','quocbao@gmail.com','12345'),
('00004','PHAN QUÂN HÀO','haohao@gmail.com','34567'),
('00005','MAI VĂN CƯỜNG','maicuong@gmail.com','12345')
	
ALTER TABLE THU_THU AUTO_INCREMENT = 00005

INSERT INTO DOC_GIA VALUES
('10001','NGUYỄN ĐỨC CHÍ','2004-03-23','0000000001','100000000001','ducchi@gmail.com','12345'),
('10002','NGUYỄN THÀNH ĐẠT','2004-10-08','0000000002','100000000002','thanhdat@gmail.com','23456'),
('10003','MAI DANH HIẾU','2004-02-20','0000000003','100000000003','danhhieu36@gmail.com','34567'),
('10004','MAI TRẦN XUÂN THANH','2004-08-24','0000000004','100000000004','xuanthanh@gmail.com','45678'),
('10005','ĐÀO NGỌC PHƯỚC','2004-11-16','0000000005','100000000005','ngocphuoc@gmail.com','56789'),
('10006','ĐẶNG THỊ THÙY LINH','2004-05-14','0000000006','100000000006','thuylinh@gmail.com','67890')
	
ALTER TABLE DOC_GIA AUTO_INCREMENT = 10007

INSERT INTO SACH VALUES
('20001','GIẢI TÍCH','GIÁO TRÌNH','NGUYỄN VĂN KHIÊM','ĐẠI HỌC BÁCH KHOA','100000','70000','NGĂN 1 - KỆ 3','5'),
('20002','TRIẾT HỌC','GIÁO TRÌNH','NGUYỄN THỊ NGỌC','ĐẠI HỌC QUỐC GIA','70000','50000','NGĂN 3 - KỆ 3','7'),
('20003','VI XỬ LÝ','GIÁO TRÌNH','NGUYỄN THỊ HƯƠNG','ĐẠI HỌC BÁCH KHOA','120000','100000','NGĂN 1 - KỆ 7','5'),
('20004','CƠ SỞ DỮ LIỆU','TÀI LIỆU THAM KHẢO','TRẦN ANH NGỌC','NXB KIM ĐỒNG','100000','70000','NGĂN 4 - KỆ 5','2'),
('20005','LẬP TRÌNH C++','SÁCH HƯỚNG DẪN','PHẠM THÀNH AN','ĐẠI HỌC BÁCH KHOA','150000','120000','NGĂN 3 - KỆ 6','7'),
('20006','TOÁN RỜI RẠC','TÀI LIỆU THAM KHẢO','NGUYỄN NGỌC ANH','NXB NHÃ LAM','40000','30000','NGĂN 2 - KỆ 10','13')	

INSERT INTO SACH VALUES
('GIẢI TÍCH','GIÁO TRÌNH','NGUYỄN VĂN KHIÊM','ĐẠI HỌC BÁCH KHOA','100000','70000','NGĂN 1 - KỆ 3','5')	
ALTER TABLE SACH AUTO_INCREMENT = 20008

INSERT INTO PHIEU_MUON_TRA VALUES
('30001','10001','2024-03-20','2024-04-20',	'1'	),
('30002','10003','2024-03-23','2024-04-23',	'1'),
('30003','10001','2024-03-20','2024-04-20',	'1'),
('30004','10002','2024-02-14','2024-03-14',	'1'), 
('30005','10004','2024-03-30','2024-04-30',	'1'),
('30006','10005','2024-02-24','2024-03-24',	'1'),
('30007','10003','2024-03-23','2024-04-23',	'1'),
('30008','10004','2024-03-24','2024-04-24',	'1') 
	
ALTER TABLE PHIEU_MUON_TRA AUTO_INCREMENT = 30008


INSERT INTO SACH_PHIEUMUON VALUES
('30001',	'20001','1','Đang mượn'),
('30002',	'20001','1','Đang mượn'),
('30003',	'20003','1','Đang mượn'),
('30004',	'20005','1','Đang mượn'),
('30005',	'20003','1','Đang mượn'),
('30006',	'20006','1','Đang mượn'),
('30007',	'20004','1','Đang mượn'),
('30008',	'20002','1','Đang mượn')

SELECT 
    s.MA_SACH,
    s.TEN_SACH,
    IFNULL(SUM(sp.SO_LUONG), 0) AS TONG_MUON,
  
    s.SO_LUONG_BD - IFNULL(SUM(sp.SO_LUONG), 0) AS SL_CON_LAI,
    s.THE_LOAI,
    s.TEN_TG,
    s.NHAXB,
    s.GIA_BAN,
    s.GIA_COC,
    s.VI_TRI
    
FROM 
    SACH s
LEFT JOIN 
    SACH_PHIEUMUON sp ON s.MA_SACH = sp.MA_SACH
GROUP BY 
    s.MA_SACH,
    s.TEN_SACH,
    s.THE_LOAI,
    s.TEN_TG,
    s.NHAXB,
    s.GIA_BAN,
    s.GIA_COC,
    s.VI_TRI,
    s.SO_LUONG_BD
ORDER BY 
    TONG_MUON DESC;




SELECT MA_SACH , TEN_SACH ,THE_LOAI ,TEN_TG FROM SACH
SELECT MA_SACH , TEN_SACH , THE_LOAI , TEN_TG , NHAXB ,GIA_BAN,GIA_COC,VI_TRI FROM SACH where TEN_SACH = 'CƠ SỞ DỮ LIỆU' OR TEN_TG = 'TRẦN ANH NGỌC' OR NHAXB = 'NXB KIM ĐỒNG'
SELECT * FROM THU_THU WHERE EMAIL ='tuancuong@gmail.com' AND MATKHAU = '12345'
select HO_TEN from THU_THU where EMAIL = 'tuancuong@gmail.com'
select TEN_DG from DOC_GIA where EMAIL = 'danhhieu36@gmail.com'
Insert into DOC_GIA(TEN_DG , NGAY_SINH , SDT , CCCD , EMAIL , MK) values( 'a' , '2000-10-10' , '100000000' , '1000000' , 'a@gmail.com' ,'12345') 



SELECT SACH_PHIEUMUON.MA_SACH , SACH.TEN_SACH , NGAY_MUON , NGAY_TRA
FROM DOC_GIA INNER JOIN PHIEU_MUON_TRA ON DOC_GIA.MA_DG = PHIEU_MUON_TRA.MA_DG
INNER JOIN SACH_PHIEUMUON ON PHIEU_MUON_TRA.MA_PHIEU = SACH_PHIEUMUON.MA_PHIEU
INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH = SACH.MA_SACH
GROUP BY SACH_PHIEUMUON.MA_SACH , SACH.TEN_SACH , NGAY_MUON , NGAY_TRA 

SELECT SACH.MA_SACH, TEN_SACH, NGAY_MUON, NGAY_TRA
FROM SACH_PHIEUMUON 
INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
WHERE MA_DG= '10001' 
GROUP BY SACH.MA_SACH, TEN_SACH, NGAY_MUON, NGAY_TRA


SELECT TEN_SACH,SO_LUONG_BD - (SELECT SUM(SO_LUONG_MUON) AS SO_SACH_CHO_MUON
FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
					INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
WHERE SACH.MA_SACH='20001'
GROUP BY SO_LUONG_MUON) AS SL_CON_LAI
FROM SACH

SELECT SUM(SO_LUONG_MUON) AS SO_SACH_CHO_MUON
FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
					INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
WHERE SACH_PHIEUMUON.MA_SACH='20001'
GROUP BY SO_LUONG_MUON

SELECT TEN_SACH,(SELECT SO_LUONG_BD FROM SACH WHERE TEN_SACH='CƠ SỞ DỮ LIỆU') - (SELECT SUM(SO_LUONG_MUON) AS SO_SACH_CHO_MUON
								FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
													INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
								WHERE SACH.TEN_SACH='CƠ SỞ DỮ LIỆU'
								GROUP BY SO_LUONG_MUON) 
                                AS SL_CON_LAI
FROM SACH
WHERE SACH.TEN_SACH='CƠ SỞ DỮ LIỆU'


SELECT TEN_SACH, THE_LOAI, TEN_TG, GIA_COC,CURRENT_DATE() AS NGAY_MUON, DATE_ADD(CURRENT_DATE(), INTERVAL 1 MONTH) AS NGAY_TRA
FROM SACH
WHERE MA_SACH='20001'
GROUP BY TEN_SACH, THE_LOAI, TEN_TG, GIA_COC

UPDATE  PHIEU_MUON_TRA SET SO_LUONG_MUON = (SO_LUONG_MUON-1)
WHERE MA_PHIEU = "30004"

UPDATE SACH_PHIEUMUON SET TINH_TRANG='Đã trả'
WHERE MA_PHIEU='30001'AND MA_SACH='20001'

SELECT MA_SACH,TEN_SACH,THE_LOAI,TEN_TG,NHAXB,GIA_BAN,GIA_COC,VI_TRI,(SELECT SO_LUONG_BD FROM SACH WHERE TEN_SACH='Đại số tuyến tính') - (SELECT SUM( SO_LUONG )  AS SO_SACH_CHO_MUON
                        							FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
                     												INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
                     							WHERE SACH.TEN_SACH='Đại số tuyến tính'
              							GROUP BY SO_LUONG) 
                                                     AS SL_CON_LAI
                         FROM SACH
						WHERE SACH.TEN_SACH='Đại số tuyến tính'
SELECT SUM(SO_LUONG) FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
                     												INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
                     							WHERE SACH.TEN_SACH='Đại số tuyến tính'
              							
SELECT 
    MA_SACH, TEN_SACH, THE_LOAI, TEN_TG, NHAXB, GIA_BAN, GIA_COC, VI_TRI,
    (SELECT SO_LUONG_BD 
     FROM SACH 
     WHERE TEN_SACH = 'Đại số tuyến tính' 
     LIMIT 1) 
    - 
    (SELECT SUM(SO_LUONG) FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
                     												INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
                     							WHERE SACH.TEN_SACH='Đại số tuyến tính'
     LIMIT 1) AS SL_CON_LAI
FROM 
    SACH
WHERE 
    SACH.TEN_SACH = 'Đại số tuyến tính'
    
-- TỔNG SỐ SÁCH
Select COUNT(MA_SACH) AS TONG_SO_SACH
FROM SACH 

SELECT COUNT( DISTINCT MA_SACH) AS SO_SACH_DANG_MUON
FROM SACH_PHIEUMUON
WHERE TINH_TRANG='Đang mượn'

Select COUNT(MA_SACH)-(SELECT COUNT( DISTINCT MA_SACH) AS SO_SACH_DANG_MUON
						FROM SACH_PHIEUMUON
						WHERE TINH_TRANG='Đang mượn') AS SO_SACH_CON_LAI
from SACH



SELECT COUNT(MA_DG) AS TONG_SO_DOC_GIA
FROM DOC_GIA

Select SUM(SO_LUONG_BD) -(SELECT SUM(SO_LUONG_MUON) AS SO_SACH_DANG_MUON
FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
					INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH) AS SO_LUONG_CON_LAI
from SACH

SELECT COUNT(DISTINCT MA_DG) AS SO_DOC_GIA_DANG_MUON
FROM SACH_PHIEUMUON INNER JOIN PHIEU_MUON_TRA ON PHIEU_MUON_TRA.MA_PHIEU=SACH_PHIEUMUON.MA_PHIEU
					INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH= SACH.MA_SACH
WHERE TINH_TRANG='Đang mượn'

Select SUM(SO_LUONG_BD) AS TONG_SO_SACH
FROM SACH


SELECT DISTINCT DOC_GIA.MA_DG, TEN_DG, SDT, EMAIL, NGAY_TRA, TINH_TRANG
FROM DOC_GIA 
INNER JOIN PHIEU_MUON_TRA ON DOC_GIA.MA_DG = PHIEU_MUON_TRA.MA_DG
INNER JOIN SACH_PHIEUMUON ON PHIEU_MUON_TRA.MA_PHIEU = SACH_PHIEUMUON.MA_PHIEU
WHERE DOC_GIA.MA_DG = '10001'



SELECT TEN_DG , SDT , EMAIL , NGAY_TRA
FROM DOC_GIA INNER JOIN PHIEU_MUON_TRA ON DOC_GIA.MA_DG = PHIEU_MUON_TRA.MA_DG
INNER JOIN SACH_PHIEUMUON ON PHIEU_MUON_TRA.MA_PHIEU = SACH_PHIEUMUON.MA_PHIEU
INNER JOIN SACH ON SACH_PHIEUMUON.MA_SACH = SACH.MA_SACH
WHERE TINH_TRANG = 'ĐÃ TRẢ '

SELECT SACH.MA_SACH, DOC_GIA.TEN_DG , TEN_SACH , THE_LOAI  , NGAY_TRA ,TINH_TRANG
FROM SACH INNER JOIN SACH_PHIEUMUON ON SACH.MA_SACH = SACH_PHIEUMUON.MA_SACH 
			INNER JOIN PHIEU_MUON_TRA ON SACH_PHIEUMUON.MA_PHIEU = PHIEU_MUON_TRA.MA_PHIEU
            INNER JOIN DOC_GIA ON DOC_GIA.MA_DG = PHIEU_MUON_TRA.MA_DG
            GROUP BY SACH.MA_SACH, DOC_GIA.TEN_DG , TEN_SACH , THE_LOAI  , NGAY_TRA ,TING_TRANG 
            WHERE TEN_SACH = 'GIẢI TÍCH'
            
            SELECT GIA_COc
                    FROM SACH_PHIEUMUON SPM 
                    JOIN PHIEU_MUON_TRA PMT ON SPM.MA_PHIEU = PMT.MA_PHIEU
                    JOIN  SACH S ON SPM.MA_SACH= S.MA_SACH
                    where PMT.MA_PHIEU = '30001'
                    
			select * from PHIEU_MUON_TRA
                    
            SELECT SPM.MA_PHIEU, SPM.MA_SACH, PMT.MA_DG, TEN_SACH, PMT.NGAY_MUON, PMT.NGAY_TRA, TINH_TRANG ,GIA_COC
                                      FROM SACH_PHIEUMUON SPM 
                                   JOIN PHIEU_MUON_TRA PMT ON SPM.MA_PHIEU = PMT.MA_PHIEU
                                     JOIN  SACH S ON SPM.MA_SACH= S.MA_SACH
                                   where TINH_TRANG = 'Đang mượn' 
                                   
		SELECT SPM.MA_PHIEU, SPM.MA_SACH, PMT.MA_DG, TEN_SACH, PMT.NGAY_MUON, PMT.NGAY_TRA, TINH_TRANG ,S.GIA_COC
                    FROM SACH_PHIEUMUON SPM 
                    JOIN PHIEU_MUON_TRA PMT ON SPM.MA_PHIEU = PMT.MA_PHIEU
                    JOIN  SACH S ON SPM.MA_SACH= S.MA_SACH where PMT.MA_PHIEU = '30001' or PMT.MA_DG ='10001' and TINH_TRANG ='Đang mượn'