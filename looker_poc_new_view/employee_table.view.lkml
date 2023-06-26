view: employee_table {
  sql_table_name: `halogen-shine-390609.meta_ust_common.employee_table`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.Company ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}.Department ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
