CLASS zcl_02_contract_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_address,
             country     TYPE string,
             city        TYPE string,
             postal_code TYPE string,
             region      TYPE string,
             stree       TYPE string,
             number      TYPE string,
           END OF ty_address,
           tty_address TYPE TABLE OF ty_address.

    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE c LENGTH 3 VALUE 'USD',
                 eur TYPE c LENGTH 3 VALUE 'EUR',
               END OF cs_currency.

    CONSTANTS cv_currency_usd TYPE string VALUE 'USD'.


    CLASS-DATA currency TYPE c LENGTH 3.

    DATA region TYPE string.

    METHODS set_client IMPORTING VALUE(iv_client)   TYPE string
                                 VALUE(iv_location) TYPE string OPTIONAL
                       EXPORTING VALUE(ev_status)   TYPE string
                       CHANGING  VALUE(cv_process)  TYPE string OPTIONAL.

    METHODS get_client EXPORTING ev_client TYPE string.

    CLASS-METHODS: set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.


    METHODS get_client_name IMPORTING iv_client_id          TYPE string
                            RETURNING VALUE(rv_client_name) TYPE string.

    METHODS set_Address IMPORTING it_address TYPE tty_address.

    CLASS-DATA company TYPE string value 'Logaly Group' READ-ONLY.

   class-METHODS get_instance EXPORTING er_instance type  ref to zcl_02_contract_4362.

  PROTECTED SECTION.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.
    DATA client TYPE string.
    CLASS-DATA cntr_type TYPE string.


ENDCLASS.



CLASS zcl_02_contract_4362 IMPLEMENTATION.

  METHOD set_client.
    client = iv_client.
    ev_status = 'OK'.
    cv_process = 'Started'.
  ENDMETHOD.

  METHOD get_client.

    ev_client = client.

  ENDMETHOD.

  METHOD get_cntr_type.
    ev_cntr_type = cntr_type.
  ENDMETHOD.

  METHOD set_cntr_type.
    cntr_type = iv_cntr_type.
  ENDMETHOD.

  METHOD get_client_name.

    CASE iv_client_id.

      WHEN '01'.
        rv_client_name = 'client Name 01'.
      WHEN '02'.
        rv_client_name = 'client Name 02'.

    ENDCASE.

  ENDMETHOD.

  METHOD set_address.

  ENDMETHOD.

  METHOD get_instance.
        er_instance = new zcl_02_contract_4362(  ).
  ENDMETHOD.

ENDCLASS.
