CLASS zcl_05_plant_4362 DEFINITION INHERITING FROM zcl_04_company_4362
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_products  TYPE string.
    DATA products TYPE string READ-ONLY.

    data company_atr type string.

    METHODS set_company_code REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_05_plant_4362 IMPLEMENTATION.
  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_products.


  ENDMETHOD.

  METHOD set_company_code.

    super->set_company_code( iv_company_code = iv_company_code ).
    me->company_code = 'ABCD'.
  ENDMETHOD.

ENDCLASS.
