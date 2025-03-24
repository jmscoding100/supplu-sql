INSERT INTO dept(dept)
VALUES
('ADMINISTRATION'),
('MARKETING'),
('SALES')
;

INSERT INTO employee(
    first_name,
    last_name,
    title,
    emp_num,
    dept_id,
    emp_tier,
    salary,
    date_hired,
    emp_status
)
VALUES
('SATCHEL', 'PAGE', 'OWNER', '6032001', 1, 3, 105000, '2017-10-23', true),
("D'EBONIE", "WEEMS", 'OFFICE MANAGER', '6032002', 1, 2, 85000, '2017-10-23', true),
('JORDAN', 'WALLACE', 'CUSTOMER SERVICE REP', '6032003', 3, 1, 45000, '2021-07-10', true),
('JANAE', 'TEACHEY', 'MARKETING REP', '6032004', 2, 1, 64000, '2023-07-19', true),
('ETHAN', 'DANIELS', 'SALES MANAGER', '6032005', 3, 2, 80000, '2018-06-24', true),
('FABIAN', 'HILL', 'MARKETING MANAGER', '6032006', 2, 2, 80000, '2019-07-11', true),
('KATELYN', 'NGUYEN', 'CUSTOMER SERVICE REP', '6032007', 3, 1, 50000, '2020-06-24', true),
('VERIES', 'SEALS', 'MARKETING REP', '6032008', 2, 1, 64000, '2022-08-10', true),
('RISHARD', 'BELL', 'CUSTOMER SERVICE REP', '6032009', 3, 1, 50000, '2017-11-01', true),
('ZANDRYA', 'GABRIS', 'BOOKKEEPER', '6032010', 1, 1, 37500, '2018-09-05', true);



INSERT INTO transaction(
    employee_id,
    products_sold,
    amount,
    transaction_date
)
VALUES
(3, 4, 117.45, '2025-03-17 13:46:55');


INSERT INTO transaction(
    employee_id,
    products_sold,
    amount,
    transaction_date
)
VALUES
(3, 2, 56.35, '2025-03-17 12:00:00'),
(7, 1, 48.45, '2025-03-17 9:30:41'),
(9, 7, 318.85, '2025-03-17 10:53:00'),
(9, 3, 118.78, '2025-03-17 11:00:00'),
(7, 2, 27.67, '2025-03-17 11:10:10'),
(9, 1, 67.44, '2025-03-17 14:00:01'),
(3, 4, 176.98, '2025-03-17 9:40:21'),
(3, 5, 367.9, '2025-03-17 9:40:25'),
(7, 3, 112.28, '2025-03-18 8:20:25'),
(7, 1, 39.82, '2025-03-18 9:10:00'),
(7, 6, 212.56, '2025-03-18 10:10:21'),
(3, 3, 98.18, '2025-03-18 8:25:45'),
(9, 1, 67.44, '2025-03-18 9:11:00'),
(3, 1, 48.45, '2025-03-18 10:45:45'),
(7, 8, 429.98, '2025-03-18 14:35:20'),
(3, 3, 125.87, '2025-03-18 13:00:00'),
(9, 4, 162.45, '2025-03-19 8:40:00'),
(9, 2, 27.67, '2025-03-19 8:50:23'),
(7, 6, 219.67, '2025-03-19 9:10:34'),
(3, 2, 88.34, '2025-03-19 9:00:00'),
(7, 5, 312.34, '2025-03-19 10:00:00'),
(3, 1, 39.82, '2025-03-19 8:20:23'),
(9, 1, 63.98, '2025-03-19 11:30:34'),
(3, 5, 275.45, '2025-03-20 9:20:00'),
(3, 2, 55.24, '2025-03-20 9:25:32'),
(9, 3, 79.63, '2025-03-20 9:30:40'),
(7, 2, 55.24, '2025-03-20 10:20:40'),
(7, 2, 27.67 , '2025-03-20 10:21:50'),
(7, 2, 79.65, '2025-03-20 10:25:54'),
(9, 1, 67.44, '2025-03-20 10:29:30'),
(7, 5, 312.34, '2025-03-20 10:40:00'),
(3, 5, 384.87, '2025-03-21 8:40:00'),
(9, 3, 227.32, '2025-03-21 9:00:00'),
(7, 1, 39.82, '2025-03-21 9:10:00'),
(7,  6, 144.12, '2025-03-21 9:20:00');


INSERT INTO contract(
    contract_id,
    employee_id,
    client,
    amount,
    contract_date,
    completion_date
)
VALUES
(1, 4, 'JANJALA DURR', 4500, '2025-03-17', '2025-09-17');


INSERT INTO contract(
    contract_id,
    employee_id,
    client,
    amount,
    contract_date,
    completion_date
)
VALUES
(2, 8, 'WILL BRIDGES', 10000, '2025-03-17', '2026-03-17'),
(3, 8, 'CLINT JACKSON', 7500, '2025-03-18', '2025-09-18'),
(4, 4, 'RENEE PALMETER', 4500, '2025-03-18', '2025-09-18'),
(5, 4, 'MARY SHIELDS', 12000, '2025-03-19', '2026-03-19'),
(6, 8, 'JUSTIN ARNOLD', 5500, '2025-03-19', '2025-09-19'),
(7, 4, 'FAVOR SMITH', 7500, '2025-03-20', '2025-09-20'),
(8, 8, 'EZEKIEL CARY', 3500, '2025-03-20', '2025-09-20');