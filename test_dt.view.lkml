view: test_dt {
  derived_table: {
    sql: select a.count_male, a.count_female, a.count_all, ROUND((a.count_male/a.count_all)*100,2) AS percent_male
from (select count(CASE WHEN gender = "m" THEN id ELSE NULL END) as count_male, count(CASE WHEN gender = "f" then id ELSE NULL END) as count_female, count(*) as count_all from demo_db.users) as a ;;
  }

  dimension: count_male {
    type: number
    sql: count_male ;;
  }

  dimension: count_female {
    type: number
    sql: count_female ;;
  }

  dimension: count_all {
    type: number
    sql: count_all ;;
  }

  dimension: percent_male {
    type: number
    sql: percent_male ;;
  }


}
