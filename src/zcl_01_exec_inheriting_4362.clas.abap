CLASS zcl_01_exec_inheriting_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES IF_OO_ADT_cLASSRUN.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_01_exec_inheriting_4362 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    "Create object each one class
    DATA(lo_company) = NEW zcl_04_company_4362( iv_quotation = 'Q1' ).
    DATA(lo_plant)  = NEW zcl_05_plant_4362( iv_quotation = 'Q2' iv_products = 'P1' ).
    DATA(lo_storage_location) = NEW zcl_06_storage_4362( iv_quotation = 'Q3' iv_products = 'P2' ).

    lo_company->set_company_code( '1234' ).
    lo_company->set_currency( 'DO' ).

    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency) ).

    out->write( |Company { lv_company_code } - Currency: { lv_currency }| ).


    lo_plant->set_company_code( '1758' ).
    lo_plant->set_currency( 'COL' ).

    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code ).
    lo_plant->get_currency( IMPORTING ev_currency = lv_currency ).

    out->write( |Plant: { lv_company_code } - Currency: { lv_currency }| ).

    lo_storage_location->set_company_code( '7897' ).
    lo_storage_location->set_currency( 'USD' ).

    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code ).
    lo_Storage_location->get_currency( IMPORTING ev_currency = lv_currency ).

    out->write( |Storage: { lv_company_code } - Currency: { lv_currency }| ).





  ENDMETHOD.

ENDCLASS.
