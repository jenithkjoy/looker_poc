view: employee_table {
  sql_table_name: halogen-shine-390609.{{ _user_attributes['database_name'] }}.employee_table
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
  measure: avg_salary {
    type: average
    sql: ${salary} ;;
    value_format_name: usd
  }
  measure: median_salary {
    type: median
    sql: ${salary} ;;
    value_format_name: usd
  }
  measure: total_salary {
    type: sum
    sql: ${salary} ;;
    value_format_name: usd
  }
  measure: average_age {
    type: average
    sql: ${age} ;;
    value_format: "0"
  }
}
