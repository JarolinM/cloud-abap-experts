CLASS zcl_lab_09_account_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_account IMPORTING VALUE(iv_iban) TYPE string.

    METHODS get_account RETURNING VALUE(rv_iban) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA iban TYPE string.

ENDCLASS.

CLASS zcl_lab_09_account_4362 IMPLEMENTATION.
  METHOD get_account.
    rv_iban = me->iban.
  ENDMETHOD.

  METHOD set_account.
    me->iban = iv_iban.
  ENDMETHOD.

ENDCLASS.
