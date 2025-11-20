CLASS zcl_26_plant_4263 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_company IMPORTING ir_co_company   TYPE REF TO zif_08_co_company_4263
                           RETURNING VALUE(rv_plant) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_26_plant_4263 IMPLEMENTATION.
  METHOD assign_company.
    rv_plant = |'The plant assign to..' { ir_co_company->define_company(  ) } '|.


  ENDMETHOD.

ENDCLASS.
