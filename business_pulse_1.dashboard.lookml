- dashboard: business_pulse
  title: Business Pulse
  layout: newspaper
  description: ''
  embed_style:
    background_color: "#f6f8fa"
    show_title: true
    title_color: "#3a4245"
    show_filters_bar: true
    tile_text_color: "#3a4245"
    text_tile_text_color: "#636061"
  elements:
  - name: Number of First Purchasers
    title: Number of First Purchasers
    model: thelook_event_2
    explore: order_items
    type: single_value
    fields:
    - order_items.first_purchase_count
    sorts:
    - order_items.first_purchase_count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: goal
      label: Goal
      expression: '10000'
      value_format:
      value_format_name: decimal_0
    query_timezone: America/Los_Angeles
    font_size: medium
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    text_color: black
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: New Users Acquired
    custom_color_enabled: false
    custom_color: forestgreen
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 0
    col: 0
    width: 6
    height: 4
  - name: Average Order Sale Price
    title: Average Order Sale Price
    model: thelook_event_2
    explore: order_items
    type: single_value
    fields:
    - order_items.average_sale_price
    sorts:
    - orders.average_profit desc
    - order_items.average_sale_price desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: date
      label: date
      expression: now()
      value_format:
      value_format_name:
      _kind_hint: dimension
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    font_size: medium
    text_color: black
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    series_types: {}
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 0
    col: 18
    width: 6
    height: 4
  - name: Orders by Day and Category
    title: Orders by Day and Category
    model: thelook_event_2
    explore: order_items
    type: looker_area
    fields:
    - products.category
    - order_items.count
    - order_items.created_date
    pivots:
    - products.category
    fill_fields:
    - order_items.created_date
    filters:
      products.category: Blazers & Jackets,Sweaters,Pants,Shorts,Fashion Hoodies &
        Sweatshirts,Accessories
    sorts:
    - products.category
    - order_items.created_date desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    y_axis_labels:
    - "# Order Items"
    stacking: normal
    x_axis_datetime: true
    hide_points: true
    hide_legend: false
    x_axis_datetime_tick_count: 4
    show_x_axis_label: false
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: true
    point_style: none
    interpolation: linear
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 37
    col: 0
    width: 24
    height: 9
  - name: Website Visit Volume vs Conversion Rate
    title: Website Visit Volume vs. Conversion Rate
    model: thelook_event_2
    explore: events
    type: looker_column
    fields:
    - events.event_day_of_week
    - events.sessions_count
    - events.unique_visitors
    - sessions.overall_conversion
    filters:
      users.state: ''
      users.city: ''
    sorts:
    - events.event_day_of_week
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    colors:
    - "#1EA8DF"
    - "#8ED3EF"
    - "#B1A8C4"
    - "#635189"
    y_axis_orientation:
    - left
    - right
    label_color:
    - "#EA8A2F"
    - "#e9b404"
    ordering: none
    show_null_labels: false
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    series_types:
      events.count: line
      events.unique_visitors: line
      events.sessions_count: line
    series_labels:
      sessions.overall_conversion: Conversion Rate
      events.sessions_count: Total Visitors
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors: {}
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: events.unique_visitors
        name: Unique Visitors
      - id: events.sessions_count
        name: Sessions Count
    - label: ''
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: sessions.overall_conversion
        name: Conversion Rate
    listen:
      Date: events.event_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 28
    col: 0
    width: 12
    height: 9
  - name: Percent of Cohort Still Active by Traffic Source
    title: Percent of Cohort Still Active by Traffic Source
    model: thelook_event_2
    explore: order_items
    type: looker_line
    fields:
    - order_items.months_since_signup
    - users.count
    - users.traffic_source
    pivots:
    - users.traffic_source
    filters:
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts:
    - order_items.months_since_signup
    - users.age_tier__sort_
    - users.traffic_source
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: pct_cohort_still_active
      label: Pct Cohort Still Active
      expression: 100.0 * ${users.count} / max(${users.count})
      value_format: "#.#\\%"
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: false
    point_style: none
    interpolation: linear
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    hidden_fields:
    - cumulative_lifetime_spend
    - order_items.total_sale_price
    - users.count
    y_axis_labels:
    - Percent of Cohort still Active
    y_axis_max:
    - '50'
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    series_colors: {}
    y_axis_value_format: "#\\%"
    listen:
      Country: users.country
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 20
    col: 12
    width: 12
    height: 8
  - name: Total Spend by Cohort
    title: Total Spend by Cohort
    model: thelook_event_2
    explore: order_items
    type: looker_line
    fields:
    - order_items.months_since_signup
    - users.created_month
    - order_items.total_sale_price
    pivots:
    - users.created_month
    filters:
      order_items.created_month: 12 months ago for 12 months
      order_items.months_since_signup: "[0, 12]"
      users.created_month: 12 months
    sorts:
    - order_items.months_since_signup
    - users.created_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_sale_price
      label: Total Sale Price
      expression: |-
        if(
        is_null(${order_items.total_sale_price})
        ,null
        ,running_total(${order_items.total_sale_price}))
      value_format: "$#,###"
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    show_null_points: false
    point_style: none
    colors:
    - "#7FCDAE"
    - "#7ED09C"
    - "#7DD389"
    - "#85D67C"
    - "#9AD97B"
    - "#B1DB7A"
    - "#CADF79"
    - "#E2DF78"
    - "#E5C877"
    - "#E7AF75"
    - "#EB9474"
    - "#EE7772"
    hidden_fields:
    - cumulative_lifetime_spend
    - order_items.total_sale_price
    y_axis_value_format: "$#,##0"
    interpolation: linear
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    listen:
      Country: users.country
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 13
    col: 12
    width: 12
    height: 7
  - name: Total Sales, Year over Year
    title: Total Sales, Year over Year
    model: thelook_event_2
    explore: order_items
    type: looker_line
    fields:
    - order_items.created_year
    - order_items.created_month_num
    - order_items.total_sale_price
    pivots:
    - order_items.created_year
    filters:
      order_items.created_date: before 0 months ago
      order_items.created_year: 5 years
    sorts:
    - order_items.created_year desc
    - order_items.created_month_num
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: right
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: false
    point_style: none
    interpolation: monotone
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - calculation_1
    x_axis_label: Month of Year
    colors:
    - "#635189"
    - "#B1A8C4"
    - "#1EA8DF"
    - "#8ED3EF"
    y_axis_value_format: "$#,##0"
    series_types: {}
    listen:
      Country: users.country
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 4
    col: 0
    width: 12
    height: 9
  - name: Highest Spending Users
    title: Highest Spending Users
    model: thelook_event_2
    explore: order_items
    type: looker_map
    fields:
    - users.approx_location
    - users.gender
    - order_items.order_count
    - users.count
    - order_items.total_sale_price
    - order_items.average_spend_per_user
    - users.country
    pivots:
    - users.gender
    sorts:
    - users.gender 0
    - order_items.total_sale_price desc 0
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    loading: false
    hidden_fields:
    - orders.count
    - users.count
    - order_items.total_sale_price
    - order_items.order_count
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: false
    map: usa
    map_projection: ''
    quantize_colors: false
    colors:
    - whitesmoke
    - "#64518A"
    outer_border_color: "#64518A"
    inner_border_color: ''
    inner_border_width: 0.6
    outer_border_width: 2
    empty_color: ''
    map_pannable: true
    map_zoomable: true
    map_latitude: 38.20365531807149
    map_longitude: -99.931640625
    map_zoom: 3
    map_value_scale_clamp_max: 200
    map_value_scale_clamp_min: 0
    map_value_colors:
    - white
    - purple
    map_marker_radius_max: 15
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_marker_color:
    - "#64518A"
    - "#1ea8df"
    - "#a2dcf3#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    heatmap_gridlines_empty: false
    reverse_map_value_colors: false
    listen:
      Date: order_items.created_date
      Country: users.country
      State: users.state
      City: users.city
    note_state: collapsed
    note_display: hover
    note_text: Bubble size corresponds to average user spend
    row: 4
    col: 12
    width: 12
    height: 9
  - name: User Behaviors by Traffic Source
    title: User Behaviors by Traffic Source
    model: thelook_event_2
    explore: order_items
    type: looker_column
    fields:
    - users.traffic_source
    - order_items.average_sale_price
    - user_order_facts.average_lifetime_orders
    sorts:
    - user_order_facts.lifetime_orders_tier__sort_
    - users.traffic_source
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hidden_fields:
    - percent_repeat_customers
    value_labels: legend
    label_type: labPer
    font_size: '13'
    colors:
    - "#1ea8df"
    - "#a2dcf3"
    - "#929292"
    - "#9fdee0"
    - "#1f3e5a"
    - "#90c8ae"
    - "#92818d"
    - "#c5c6a6"
    - "#82c2ca"
    - "#cee0a0"
    - "#928fb4"
    - "#9fc190"
    hide_legend: false
    y_axis_orientation:
    - left
    - right
    y_axis_value_format: '0'
    y_axis_labels:
    - Average Sale Price ($)
    show_null_points: true
    point_style: circle_outline
    interpolation: linear
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: order_items.created_date
      Country: users.country
    row: 13
    col: 0
    width: 12
    height: 7
  - name: User Basic Demographic Profile
    title: User Basic Demographic Profile
    model: thelook_event_2
    explore: order_items
    type: looker_donut_multiples
    fields:
    - users.gender
    - users.traffic_source
    - order_items.count
    pivots:
    - users.traffic_source
    filters:
      users.gender: "-NULL"
    sorts:
    - user_order_facts.lifetime_orders_tier__sort_
    - users.traffic_source
    - order_items.count desc 0
    limit: 500
    column_limit: 15
    query_timezone: America/Los_Angeles
    show_value_labels: true
    show_view_names: true
    font_size: 15
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    hide_legend: false
    colors:
    - "#64518A"
    - "#8D7FB9"
    - "#EA8A2F"
    - "#F2B431"
    - "#2DA5DE"
    - "#57BEBE"
    - "#7F7977"
    - "#B2A898"
    - "#494C52"
    series_colors: {}
    listen:
      Date: order_items.created_date
      Country: users.country
    note_state: collapsed
    note_display: below
    note_text: ''
    row: 20
    col: 0
    width: 12
    height: 8
  - name: Most Viewed Brands Online
    title: Most Viewed Brands Online
    model: thelook_event_2
    explore: sessions
    type: table
    fields:
    - product_viewed.brand
    - sessions.count
    - sessions.cart_to_checkout_conversion
    filters:
      product_viewed.brand: "-NULL"
    sorts:
    - sessions.count desc
    limit: 15
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    table_theme: gray
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    limit_displayed_rows: false
    hide_totals: false
    hide_row_totals: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Date: events.event_date
      Country: users.country
      State: users.state
    note_state: collapsed
    note_display: above
    note_text: ''
    row: 28
    col: 12
    width: 12
    height: 9
  - name: 30 Day Repeat Purchase Rate
    title: 30 Day Repeat Purchase Rate
    model: thelook_event_2
    explore: order_items
    type: single_value
    fields:
    - order_items.30_day_repeat_purchase_rate
    sorts:
    - repeat_purchase_facts.30_day_repeat_purchase_rate desc
    - order_items.30_day_repeat_purchase_rate desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    font_size: medium
    text_color: black
    colors:
    - "#1f78b4"
    - "#a6cee3"
    - "#33a02c"
    - "#b2df8a"
    - "#e31a1c"
    - "#fb9a99"
    - "#ff7f00"
    - "#fdbf6f"
    - "#6a3d9a"
    - "#cab2d6"
    - "#b15928"
    - "#edbc0e"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    single_value_title: Repeat Purchase Rate
    custom_color_enabled: false
    custom_color: forestgreen
    listen:
      Date: order_items.created_date
      Country: users.country
    note_state: collapsed
    note_display: hover
    note_text: What percent of orders are followed by a repeat purchase by the same
      user within 30 days?
    row: 0
    col: 6
    width: 6
    height: 4
  - name: Total Order Count
    title: Total Order Count
    model: thelook_event_2
    explore: order_items
    type: single_value
    fields:
    - order_items.reporting_period
    - order_items.count
    filters:
      order_items.reporting_period: "-NULL"
    sorts:
    - order_items.count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_change
      label: Percent Change
      expression: "${order_items.count}/offset(${order_items.count},1) - 1"
      value_format:
      value_format_name: percent_0
    query_timezone: America/Los_Angeles
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    colors:
    - "#5245ed"
    - "#a2dcf3"
    - "#776fdf"
    - "#1ea8df"
    - "#49cec1"
    - "#776fdf"
    - "#49cec1"
    - "#1ea8df"
    - "#a2dcf3"
    - "#776fdf"
    - "#776fdf"
    - "#635189"
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_single_value_title: true
    single_value_title: Orders This Year
    hidden_fields:
    - order_items.reporting_period
    comparison_label: vs Same Period Last Year
    custom_color_enabled: false
    custom_color: forestgreen
    listen:
      Country: users.country
      State: users.state
      City: users.city
    row: 0
    col: 12
    width: 6
    height: 4
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    model: thelook_event_2
    explore: order_items
    field: users.state
    listens_to_filters:
    - Country
    allow_multiple_values: true
    required: false
  - name: City
    title: City
    type: field_filter
    default_value: ''
    model: thelook_event_2
    explore: order_items
    field: users.city
    listens_to_filters:
    - State
    - Country
    allow_multiple_values: true
    required: false
  - name: Date
    title: Date
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
  - name: Country
    title: Country
    type: field_filter
    model: thelook_event_2
    explore: order_items
    field: users.country
    listens_to_filters: []
    allow_multiple_values: true
    required: false
