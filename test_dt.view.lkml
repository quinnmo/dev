view: test_dt {
  derived_table: {
    sql: select count(CASE WHEN gender = "m" THEN id ELSE NULL END) as count_male, count(CASE WHEN gender = "f" then id ELSE NULL END) as count_female, count(*) as count_all, ROUND(((count_all-count_female)/count_all)*100,2) AS percentage_male
      from demo_db.users
       ;;
  }

  measure: count_male {
    type: number
    sql: ${TABLE}.count_male ;;
  }

  measure: count_female {
    type: number
    sql: ${TABLE}.count_female ;;
  }

  measure: count_all {
    type: number
    sql: ${TABLE}.count_all ;;
  }

  measure: percentage_male {
    type: number
    sql: ${TABLE}.percentage_male ;;
  }


}
