CLASS zcl_24_company_eu_4263 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   interfaces zif_08_co_company_4263.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_24_company_eu_4263 IMPLEMENTATION.
  METHOD zif_08_co_company_4263~define_company.
    rv_company = 'Company Europea'.
  ENDMETHOD.

ENDCLASS.
