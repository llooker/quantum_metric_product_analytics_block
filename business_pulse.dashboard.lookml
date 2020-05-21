- dashboard: business_pulse_dashboard
  title: Business Pulse Dashboard
  layout: newspaper
  elements:
  - title: Revenue and Session Trend
    name: Revenue and Session Trend
    model: product_analytics
    explore: base_table
    type: looker_line
    fields: [base_table.partitiontime_date, base_table.total_conversion_value, hits__events.session_count]
    fill_fields: [base_table.partitiontime_date]
    sorts: [base_table.partitiontime_date desc]
    limit: 500
    dynamic_fields: [{measure: count_of_cookies, based_on: user.cookies, expression: '',
        label: Count of Cookies, type: count_distinct, _kind_hint: measure, _type_hint: number},
      {measure: count_of_session_id, based_on: hits.session_id, expression: '', label: Count
          of Session ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: base_table.total_conversion_value,
            id: base_table.total_conversion_value, name: Total Conversion Value}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: hits__events.session_count,
            id: hits__events.session_count, name: Session Count}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    series_types:
      hits__events.session_count: column
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 13
    col: 12
    width: 12
    height: 10
  - title: Traffic by Device Type
    name: Traffic by Device Type
    model: product_analytics
    explore: base_table
    type: looker_pie
    fields: [device.type, base_table.count_of_ids]
    sorts: [base_table.count_of_ids desc]
    limit: 500
    dynamic_fields: [{measure: count_of_browser_id, based_on: device.browser_id, expression: '',
        label: Count of Browser ID, type: count_distinct, _kind_hint: measure, _type_hint: number},
      {measure: count_of_session_id, based_on: hits_errors.session_id, expression: '',
        label: Count of Session ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    inner_radius: 30
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
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Average Order Value
    name: Average Order Value
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [base_table.average_conversion_value]
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
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 0
    col: 6
    width: 6
    height: 3
  - title: Most Engaged Pages
    name: Most Engaged Pages
    model: product_analytics
    explore: base_table
    type: looker_grid
    fields: [hits__url.path, hits.average_engaged_seconds]
    sorts: [hits.average_engaged_seconds desc]
    limit: 20
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 23
    col: 0
    width: 9
    height: 8
  - title: Users
    name: Users
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [count_of_id]
    limit: 500
    dynamic_fields: [{measure: count_of_id, based_on: user.id, expression: '', label: Count
          of ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 0
    col: 12
    width: 6
    height: 3
  - title: Highest Error Pages
    name: Highest Error Pages
    model: product_analytics
    explore: base_table
    type: looker_grid
    fields: [hits__url.path, hits__events_errors.session_count]
    sorts: [hits__events_errors.session_count desc]
    limit: 20
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 23
    col: 9
    width: 8
    height: 8
  - title: Top Error Occurrences
    name: Top Error Occurrences
    model: product_analytics
    explore: base_table
    type: looker_bar
    fields: [hits__events.event, hits__events_errors.session_count]
    filters:
      hits__events.is_error: 'Yes'
    sorts: [hits__events_errors.session_count desc]
    limit: 20
    column_limit: 50
    dynamic_fields: [{measure: count_of_event_id, based_on: hits__events.event_id,
        expression: '', label: Count of Event ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_session_id, based_on: hits__events.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 31
    col: 12
    width: 12
    height: 9
  - title: Slowest Loading Pages (DOM Interactive, MS)
    name: Slowest Loading Pages (DOM Interactive, MS)
    model: product_analytics
    explore: base_table
    type: looker_grid
    fields: [hits__url.path, hits.average_dom_interactive_ms]
    sorts: [hits.average_dom_interactive_ms desc]
    limit: 20
    dynamic_fields: [{measure: average_of_dom_interactive_ms, based_on: hits.dom_interactive_ms,
        expression: '', label: Average of Dom Interactive Ms, type: average, _kind_hint: measure,
        _type_hint: number}, {measure: average_of_dom_complete_ms, based_on: hits.dom_complete_ms,
        expression: '', label: Average of Dom Complete Ms, type: average, _kind_hint: measure,
        _type_hint: number}]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 23
    col: 17
    width: 7
    height: 8
  - title: Top Event Occurrences
    name: Top Event Occurrences
    model: product_analytics
    explore: base_table
    type: looker_bar
    fields: [hits__events.event, hits__events.session_count]
    filters:
      hits__events.is_error: 'No'
    sorts: [hits__events.session_count desc]
    limit: 20
    column_limit: 50
    dynamic_fields: [{measure: count_of_event_id, based_on: hits__events.event_id,
        expression: '', label: Count of Event ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_session_id, based_on: hits__events.session_id,
        expression: '', label: Count of Session ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
    series_types: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 31
    col: 0
    width: 12
    height: 9
  - title: Conversion Funnel
    name: Conversion Funnel
    model: product_analytics
    explore: base_table
    type: looker_column
    fields: [hits__events.count_product_details_page, hits__events.count_add_to_cart_click,
      hits__events.count_view_cart_page, hits__events.count_shipping_information_page,
      hits__events.count_payment_information_page, hits__events.count_review_order_page,
      hits__events.count_purchase_confirmation_page]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_types: {}
    column_spacing_ratio: 0.1
    show_dropoff: true
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 13
    col: 0
    width: 12
    height: 10
  - title: Total Sales
    name: Total Sales
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [base_table.total_conversion_value]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 3
    col: 0
    width: 8
    height: 3
  - title: Transaction Count
    name: Transaction Count
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [base_table.total_conversion_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 0
    col: 0
    width: 6
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [hits__events.conversion_rate]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_types: {}
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Sessions with Errors
    name: Sessions with Errors
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [hits__events_errors.session_count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 3
    col: 16
    width: 8
    height: 3
  - title: Average Conversion Value by Referrer Category
    name: Average Conversion Value by Referrer Category
    model: product_analytics
    explore: base_table
    type: looker_column
    fields: [base_table.average_conversion_value, referrer.category]
    sorts: [base_table.average_conversion_value desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: []
    series_types: {}
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    hidden_fields: []
    listen:
      Event Name: hits__events.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Bounce Rate
    name: Bounce Rate
    model: product_analytics
    explore: base_table
    type: single_value
    fields: [session_facts.bounce_rate]
    limit: 500
    column_limit: 50
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
    series_types: {}
    listen:
      Event Name: hits__events_errors.event
      Ts Clean Date: base_table.ts_clean_date
      Device Type: device.type
    row: 3
    col: 8
    width: 8
    height: 3
  filters:
  - name: Event Name
    title: Event Name
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
  - name: Ts Clean Date
    title: Ts Clean Date
    type: field_filter
    default_value: 1 year
    allow_multiple_values: true
    required: false
    model: product_analytics
    explore: base_table
    listens_to_filters: []
    field: base_table.ts_clean_date
  - name: Device Type
    title: Device Type
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
