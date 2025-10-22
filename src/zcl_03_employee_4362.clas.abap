CLASS zcl_03_employee_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING VALUE(iv_employe_id) TYPE string.

    METHODS get_employee_id RETURNING VALUE(rv_employe_id) TYPE string.

  PROTECTED SECTION.
    DATA employe_id TYPE string.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_03_employee_4362 IMPLEMENTATION.
  METHOD constructor.
    me->employe_id = iv_employe_id.
  ENDMETHOD.

  METHOD get_employee_id.
    rv_employe_id = me->employe_id.
  ENDMETHOD.

ENDCLASS.
