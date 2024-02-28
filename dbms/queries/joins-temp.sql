select * from left_table INNER JOIN right_table ON left_table.lt_id = right_table.rt_fk;
select * from left_table AS LT INNER JOIN right_table AS RT ON LT.lt_id=RT.rt_fk;

select * from left_table LEFT JOIN right_table ON left_table.lt_id = right_table.rt_fk;
select * from left_table LEFT OUTER JOIN right_table ON left_table.lt_id = right_table.rt_fk;
select * from left_table NATURAL JOIN right_table; -- ON left_table.lt_id = right_table.rt_fk;
select * from left_table NATURAL LEFT JOIN right_table ON left_table.lt_id = right_table.rt_fk;
select * from (left_table,right_table);

select * from left_table left join (select * from right_table where rt_id <> 3) -- subquery

Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ON left_table.lt_id = right_table.rt_fk' at line 1




