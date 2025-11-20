CLASS zcl_01_exec_interfaces_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_01_EXEC_INTERFACES_4362 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_travel_agency) = NEW zcl_14_travel_agency_4362(  ).

    lo_travel_agency->zif_01_agency_logali_4362~set_name( 'Gate2Fly.com' ).

    out->write( lo_travel_agency->zif_01_agency_logali_4362~get_name(  ) ).

    zcl_14_travel_agency_4362=>zif_01_agency_logali_4362~set_address( 'Madrid, Spain' ).

    "Herrencia multiple de interfaces.
    DATA(lo_screen) = NEW zcl_15_screen_4362( 22 ).

    out->write( lo_screen->zif_02_eu_unit_4362~dimension_centimeters(  ) ).
    out->write( lo_screen->zif_03_en_unit_4362~dimensions_inches(  ) ).

    "-----------------------------------------------------------

    DATA(lo_sales_Department) = NEW zcl_16_sales_department_4263(  ).

    lo_sales_department->zif_04_document_4362~set_sales_doc( '123D' ).
    lo_sales_department->zif_05_sales_order_4362~create_order( '123O' ).

    "ALIAS
    DATA(lo_bp) = NEW zcl_17_bp_4263(  ).

    lo_bp->set_company_type(  ).
    "LO_BP->zif_07_company_4263~set_company_type(  ).





  ENDMETHOD.
ENDCLASS.
