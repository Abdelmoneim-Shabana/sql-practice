حاضر. كلها على جدول khazina_practice اللي عملته. نفذ كل سطر لوحده.

SELECT: عرض أعمدة
SELECT description, amount FROM khazina_practice;

WHERE: فلتر
SELECT * FROM khazina_practice WHERE amount > 5000;

BETWEEN: مبلغ بين رقمين
SELECT * FROM khazina_practice WHERE amount BETWEEN 1000 AND 5000;

IN: واحد من قايمة
SELECT * FROM khazina_practice WHERE id IN (1, 3, 5);

LIKE: بحث بجزء من النص (الحرف N قبل النص العربي)
SELECT * FROM khazina_practice WHERE description LIKE N'%مبيعات%';

INSERT: إضافة صف جديد
INSERT INTO khazina_practice (id, tx_date, description, tx_type, amount) VALUES (100, '2026-11-26', N'test', N'وارد', 500);

ALTER: إضافة عمود جديد للجدول
ALTER TABLE khazina_practice ADD notes NVARCHAR(100);

DROP: مسح العمود اللي ضفناه
ALTER TABLE khazina_practice DROP COLUMN notes;

DROP: مسح الجدول كله (استخدمه على النسخة بس، مش على khazina الأصلي)
DROP TABLE khazina_practice;

لو مسحت النسخة، اعملها تاني بـ:
SELECT * INTO khazina_practice FROM dbo.khazina;

ولو اتعمل خطأ في INSERT قولي، عمود employee_id ممكن يحتاج قيمة حسب الجدول عندك.
