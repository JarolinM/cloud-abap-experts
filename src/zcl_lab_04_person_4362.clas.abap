CLASS zcl_lab_04_person_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_age importing iv_age type i.

    METHODS get_age RETURNING VALUE(rv_age) type i.
  PROTECTED SECTION.
  PRIVATE SECTION.

  data age type i.

ENDCLASS.



CLASS zcl_lab_04_person_4362 IMPLEMENTATION.
  METHOD get_age.
    rv_age = age.
  ENDMETHOD.

  METHOD set_age.
    me->age = iv_age.
  ENDMETHOD.

ENDCLASS.
