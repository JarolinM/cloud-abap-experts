CLASS zcl_lab_07_student_4263 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   data birth_date type zdate READ-ONLY.

   METHODS set_birth_date IMPORTING iv_birth_date type zdate
                          RETURNING VALUE(rv_birth_date) type zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_07_student_4263 IMPLEMENTATION.
  METHOD set_birth_date.
    birth_date = iv_birth_date.
    rv_birth_date = birth_date.
  ENDMETHOD.

ENDCLASS.
