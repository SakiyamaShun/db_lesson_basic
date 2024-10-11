--Q1の回答--
CREATE TABLE departments (
 department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
 );

--Q2の回答--
ALTER TABLE people ADD department_id INT UNSIGNED AFTER email;

--Q3上からdepartments、people、reportの順で回答--

INSERT INTO departments (name)
 VALUES
 ('営業'),
 ('開発'),
 ('経理'),
 ('人事'),
 ('情報システム');

INSERT INTO people (department_id)
 VALUES
 (1),
 (1),
 (1),
 (2),
 (2),
 (2),
 (2),
 (3),
 (4),
 (5);


INSERT INTO report (person_id, content)
 VALUES
 (1, 'Section11まで完了しました'),
 (1, 'Section12まで完了しました'),
 (2, 'Section13まで完了しました'),
 (2, 'Section14まで完了しました'),
 (2, 'Section18まで完了しました'),
 (3, 'Section20まで完了しました'),
 (4, 'Section22まで完了しました'),
 (4, 'Section23まで完了しました'),
 (4, 'Section25まで完了しました'),
 (4, 'Section30まで完了しました');

 --Q4の回答--
UPDATE people SET department_id = 1 WHERE person_id =1;
UPDATE people SET department_id = 2 WHERE person_id =2;
UPDATE people SET department_id = 2 WHERE person_id =3;
UPDATE people SET department_id = 3 WHERE person_id =4;
UPDATE people SET department_id = 4 WHERE person_id =6;

 --Q5の回答--
SELECT name, age FROM people ORDER BY age DESC;

 --Q6の回答--
 peopleテーブルからdepartment_id=1に該当するレコードをcreated_atの昇順で表示する。
表示するカラムはname,email,ageの3つ