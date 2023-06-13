- dashboard: sutirthodash
  title: SutirthoDash
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: First Purchase Count
    name: First Purchase Count
    model: thelook_event_2
    explore: order_items
    type: single_value
    fields: [order_items.first_purchase_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
