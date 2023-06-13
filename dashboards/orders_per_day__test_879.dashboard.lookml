- dashboard: orders_per_day__test
  title: Orders per Day - Test
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Orders by Day
    name: Orders by Day
    model: thelook_event_2
    explore: order_items
    type: looker_grid
    fields: [order_items.average_sale_price, order_items.created_date]
    fill_fields: [order_items.created_date]
    sorts: [order_items.created_date desc]
    limit: 10
    query_timezone: America/Los_Angeles
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
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 6
  - title: User Age
    name: User Age
    model: thelook_event_2
    explore: order_items
    type: looker_column
    fields: [users.age, users.average_age]
    sorts: [users.age]
    limit: 500
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 8
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
