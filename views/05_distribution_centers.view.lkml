view: distribution_centers {
  sql_table_name: thelook.distribution_centers ;;

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    sql: ${TABLE}.name ;;
  }
}
