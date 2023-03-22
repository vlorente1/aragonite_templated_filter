connection: "data_sandbox"

include: "/views/*.view.lkml"
include: "/views/**/*"


explore: client {
  join: client_sales {
    relationship: one_to_many
    sql_on: ${client_sales.id} = ${client.id} ;;
  }
}
