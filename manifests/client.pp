class rsyslog::client (
  Optional[Hash]  $global_config = {},
  Optional[Hash]  $legacy_config = {},
  Optional[Hash]  $templates     = {},
  Optional[Hash]  $actions       = {},
  Optional[Hash]  $inputs        = {},
  Optional[Hash]  $custom_config = {},
  Optional[Hash]  $modules       = {},
  Optional[Hash]  $lookup_tables = {},
  Hash $rulesets                 = {},
  Hash $property_filters         = {},
  Hash $expression_filters       = {},
) {

  include rsyslog

  class { 'rsyslog::config':
    global_config      => $global_config,
    legacy_config      => $legacy_config,
    templates          => $templates,
    actions            => $actions,
    inputs             => $inputs,
    custom_config      => $custom_config,
    modules            => $modules,
    lookup_tables      => $lookup_tables,
    rulesets           => $rulesets,
    property_filters   => $property_filters,
    expression_filters => $expression_filters,
  }


}
