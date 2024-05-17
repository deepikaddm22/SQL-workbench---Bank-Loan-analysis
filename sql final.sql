create database project_db;
use project_db;
select * from finance_1_new;
select * from finance_2;

-- 1
SELECT Year(issue_d) as Year,sum(loan_amnt)from finance_1_new
group by 1
order by 1;

-- 2
select f1.grade,f1.sub_grade,sum(revol_bal) from finance_1_new as f1 
join finance_2 as f2 on f1.id=f2.id
group by grade,sub_grade
order by grade,sub_grade;

-- 3
select f1.verification_status,round(sum(total_pymnt))
as total_pymnt from finance_1_new as f1 
join finance_2 as f2 on f1.id=f2.id 
where verification_status = "Verified" or verification_status = "Not Verified"
group by verification_status;

-- 4

select addr_state,last_credit_pull_d,loan_status from finance_1_new f1 
join finance_2 f2 on f1.id=f2.id
group by addr_state,last_credit_pull_d,loan_status
order by last_credit_pull_d;

-- 5

select home_ownership,last_pymnt_d,last_pymnt_amnt from finance_1_new f1 
inner join finance_2 f2 on f1.id=f2.id
group by home_ownership,last_pymnt_d,last_pymnt_amnt
order by home_ownership,last_pymnt_d;





