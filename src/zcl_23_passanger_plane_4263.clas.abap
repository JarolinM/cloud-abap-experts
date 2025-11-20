CLASS zcl_23_passanger_plane_4263 DEFINITION INHERITING FROM zcl_21_airplane_4263
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: airplane_type REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_23_passanger_plane_4263 IMPLEMENTATION.
  METHOD airplane_type.
    rv_airplane_type = 'Passanger Plane'.
  ENDMETHOD.

ENDCLASS.
