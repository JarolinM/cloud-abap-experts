CLASS zcl_lab_03_contract_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA cntr_type TYPE c LENGTH 2.

    METHODS set_creation_date IMPORTING VALUE(iv_creation_date) TYPE zdate.
  PROTECTED SECTION.
  DATA CREATION_DATE TYPE ZDATE.
  PRIVATE SECTION.

  DATA CLIENT TYPE STRING.
ENDCLASS.



CLASS zcl_lab_03_contract_4362 IMPLEMENTATION.
  METHOD set_creation_date.

    creation_date = iv_creation_date.

  ENDMETHOD.

ENDCLASS.
