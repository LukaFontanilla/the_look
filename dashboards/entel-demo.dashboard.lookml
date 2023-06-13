- dashboard: demo_entel
  title: Demo Entel
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - type: button
    name: button_9983
    rich_content_json: '{"text":"New Button","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED"}'
    row: 0
    col: 0
    width: 24
    height: 1
  - title: New Users Acquired
    name: New Users Acquired
    model: thelook
    explore: order_items
    type: looker_grid
    fields: [order_items.created_date, order_items.order_id, users.email, users.name,
      users.traffic_source]
    filters:
      order_facts.is_first_purchase: 'Yes'
      order_items.created_date: 7 days
      users.country: USA
    sorts: [order_items.created_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    row: 1
    col: 0
    width: 8
    height: 6
  - title: Total Sales, Year over Year
    name: Total Sales, Year over Year
    model: thelook
    explore: order_items
    type: looker_line
    fields: [order_items.total_sale_price, order_items.created_year, order_items.created_month_num]
    pivots: [order_items.created_year]
    fill_fields: [order_items.created_year, order_items.created_month_num]
    sorts: [order_items.total_sale_price desc 0, order_items.created_year]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    row: 7
    col: 0
    width: 14
    height: 6
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook_event_2
    explore: order_items
    listens_to_filters: [Country]
    field: users.state
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: thelook_event_2
    explore: order_items
    listens_to_filters: [State, Country]
    field: users.city
  - name: Date
    title: Date
    type: date_filter
    default_value: 90 days
    allow_multiple_values: true
    required: false
  - name: Country
    title: Country
    type: field_filter
    default_value: "{{ _user_attributes['country'] }}"
    allow_multiple_values: true
    required: false
    model: thelook_event_2
    explore: order_items
    listens_to_filters: []
    field: users.country
