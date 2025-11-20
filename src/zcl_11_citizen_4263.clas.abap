CLASS zcl_11_citizen_4263 DEFINITION
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS get_products RETURNING VALUE(rv) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_11_CITIZEN_4263 IMPLEMENTATION.


  METHOD get_products.
    data(lo_storage_location)  = new zlc_12_storage_location_4263(  ).
    lo_storage_location->products = 'APPLE'.
    lo_storage_location->set_product( iv_product = 'BANANA' ).
  ENDMETHOD.
ENDCLASS.
