INTERFACE zif_01_agency_logali_4362
  PUBLIC.

  methods: set_name importing iv_type type string,
           get_name returning value(rv_type) type string.

  class-methods set_Address importing iv_address type string.

   class-data agency_address type string.

ENDINTERFACE.
