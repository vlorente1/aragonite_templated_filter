view: client_sales_abs {
  extension: required

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: client_id {
    label: "Client ID"
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: Amount {
    label: "Amount"
    type:  number
    sql: ${TABLE}.amount ;;
  }

  dimension_group: sale {
    label: "Sale Date"
    type: time
    datatype: date
    timeframes: [raw, date]
    convert_tz: no
    sql: ${TABLE}.date ;;
  }

  measure: count {
    label: "# of Payments"
    type: count
  }
}
