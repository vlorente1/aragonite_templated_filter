include: "./sales/client_sales_abs.view.lkml"

view: client_sales {
  extends: [client_sales_abs]
  sql_table_name: ${client_sales_filtered.SQL_TABLE_NAME} ;;

  filter: date_filter {
    label: "Period Filter"
    type: date
    sql: ${sale_raw} < COALESCE({% date_end date_filter %}, now())
      AND (${sale_raw} >= {% date_start date_filter %} OR ${sale_raw} is NULL)
       ;;
  }
}
