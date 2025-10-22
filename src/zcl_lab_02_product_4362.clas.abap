CLASS zcl_lab_02_product_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_product IMPORTING i_product TYPE matnr.

    METHODS get_product RETURNING VALUE(r_product) TYPE matnr.


    METHODS set_creation_date IMPORTING i_creation_date TYPE zdate.

    METHODS get_creation_date RETURNING VALUE(r_creation_date) type zdate.



  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA: product       TYPE matnr,
          creation_date TYPE zdate.

ENDCLASS.

CLASS zcl_lab_02_product_4362 IMPLEMENTATION.
  METHOD set_product.
    product = i_product.
  ENDMETHOD.

  METHOD set_creation_date.
    creation_date = i_creation_date.
  ENDMETHOD.

  METHOD get_product.
    r_product = product.
  ENDMETHOD.

  METHOD get_creation_date.
    r_creation_date = creation_date.
  ENDMETHOD.

ENDCLASS.
