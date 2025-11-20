CLASS zcl_14_travel_agency_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_01_agency_logali_4362.
  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA agency_type TYPE string.

ENDCLASS.



CLASS ZCL_14_TRAVEL_AGENCY_4362 IMPLEMENTATION.


  METHOD zif_01_agency_logali_4362~set_name.
    me->agency_type = iv_type.
  ENDMETHOD.


  METHOD zif_01_agency_logali_4362~get_name.
    rv_type = me->agency_type.
  ENDMETHOD.


  METHOD zif_01_agency_logali_4362~set_address.
    zif_01_agency_logali_4362~agency_address = iv_address.
  ENDMETHOD.
ENDCLASS.
