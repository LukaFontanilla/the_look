view: rotorres_distribution_centers {
  sql_table_name: `looker-private-demo.thelook.distribution_centers`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: location_state {
    type: string
    sql: SUBSTR(${name},INSTR(${name},' ', -1)) ;;
    link: {
      label: "Link to State Reference"
      url: "https://en.wikipedia.org/wiki/{{ value }}"
    }
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
