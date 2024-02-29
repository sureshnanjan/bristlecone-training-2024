/*
table_references:
    escaped_table_reference [, escaped_table_reference] ...

escaped_table_reference: {
    table_reference
  | { OJ table_reference }
}

table_reference: {
    table_factor
  | joined_table
}

table_factor: {
    tbl_name [PARTITION (partition_names)]
        [[AS] alias] [index_hint_list]
  | [LATERAL] table_subquery [AS] alias [(col_list)]
  | ( table_references )
}

joined_table: {
    table_reference {[INNER | CROSS] JOIN | STRAIGHT_JOIN} table_factor [join_specification]
  | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_specification
  | table_reference NATURAL [INNER | {LEFT|RIGHT} [OUTER]] JOIN table_factor
}

join_specification: {
    ON search_condition
  | USING (join_column_list)
}

join_column_list:
    column_name [, column_name] ...

index_hint_list:
    index_hint [, index_hint] ...

index_hint: {
    USE {INDEX|KEY}
      [FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])
  | {IGNORE|FORCE} {INDEX|KEY}
      [FOR {JOIN|ORDER BY|GROUP BY}] (index_list)
}

index_list:
    index_name [, index_name] ...
*/

-- In MySQL, JOIN, CROSS JOIN, and INNER JOIN are syntactic equivalents (they can replace each other)
select * from left_table inner join right_table on left_table.lt_id = right_table.rt_fk;
select * from left_table inner join right_table; -- without an ON condition it does a cartesian product
select * from left_table, right_table; -- comma is equivalent to inner joing
-- Aliases could be used
 -- select LT.lt_id, LT.lt-data1, RT.rt_id, RT.rt_fk, RT.rt_data1 from left_table AS LT inner join right_table AS RT on LT.lt_id = RT.rt_fk;
select * from left_table AS LT inner join right_table AS RT on LT.lt_id = RT.rt_fk;
-- Error Code: 1054. Unknown column 'LT.lt' in 'field list'

table left_table;
table right_table
