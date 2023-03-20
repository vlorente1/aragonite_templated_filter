view: client_sales_data {
  derived_table: {
    sql:
       SELECT 1 id, 1 client_id, 'Dog' department, 10 amount, "2023-01-01" date
       UNION ALL
       SELECT 2 id, 1 client_id, 'Dog' department, 20 amount, "2023-01-15" date
       UNION ALL
       SELECT 3 id, 2 client_id, 'Cat' department, 10 amount, "2023-02-01" date
       UNION ALL
       SELECT 4 id, 2 client_id, 'Dog' department, 35 amount, "2023-02-15" date
       UNION ALL
       SELECT 5 id,  2 client_id, 'Dog' department, 10 amount, "2023-03-01" date
       UNION ALL
       SELECT 6 id, 3 client_id, 'Dog' department, 35 amount, "2023-03-15" date
       UNION ALL
       SELECT 7 id, 3 client_id, 'Cat' department, 40 amount, "2023-04-01" date
       UNION ALL
       SELECT 8 id, 3 client_id, 'Cat' department, 35 amount, "2023-04-15" date
       ;;

    indexes: ["id", "client_id"]
  }
}
