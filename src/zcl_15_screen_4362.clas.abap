CLASS zcl_15_screen_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   interfaces: zif_02_eu_unit_4362,
               zif_03_en_unit_4362.

   METHODS constructor IMPORTING iv_en_unit type zfloat.
  PROTECTED SECTION.
  PRIVATE SECTION.
   data en_unit type zfloat.

ENDCLASS.



CLASS ZCL_15_SCREEN_4362 IMPLEMENTATION.


  METHOD zif_02_eu_unit_4362~dimension_centimeters.
    rv_unit = me->en_unit * '2.24'.
  ENDMETHOD.


  METHOD zif_03_en_unit_4362~dimensions_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.


  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.
ENDCLASS.
