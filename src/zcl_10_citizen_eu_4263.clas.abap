CLASS zcl_10_citizen_eu_4263 DEFINITION INHERITING FROM zcl_09_citizen_4263
  PUBLIC
    "Si la clase  tiene FINAL esta clase no permite la herencia
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS set_id REDEFINITION.

   "Metodo con final no se puede redefinir.
   "methods set_name REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_10_citizen_eu_4263 IMPLEMENTATION.
  METHOD set_id.

  ENDMETHOD.

ENDCLASS.
