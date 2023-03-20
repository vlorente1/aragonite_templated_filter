view: client_sales_filtered {
    derived_table: {
      sql: SELECT csd.id, csd.client_id, csd.department, csd.amount, csd.date
             FROM ${client_sales_data.SQL_TABLE_NAME} csd
            WHERE csd.date < COALESCE( DATE( {% date_end client_sales.date_filter %}), CURDATE())
              AND ( csd.date >= IFNULL( DATE( {% date_start client_sales.date_filter %}),DATE("1900-01-01")) OR csd.date IS NULL )
            ;;
      indexes: ["id", "client_id"]
    }
}
