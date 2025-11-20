CLASS zcl_connection_4263 DEFINITION
  PUBLIC
  "FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA: carrier_id    TYPE /dmo/carrier_id,
          connection_id TYPE /dmo/connection_id,
          conn_counter  TYPE i.

    METHODS set_attributes
      IMPORTING
        iv_carrier_id    TYPE /dmo/carrier_id OPTIONAL
        iv_connection_id TYPE /dmo/connection_id
      RAISING
        cx_abap_invalid_value.

    METHODS get_attributes
      EXPORTING e_carrier_id    TYPE /dmo/carrier_id
                e_connection_id TYPE /dmo/connection_id.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_CONNECTION_4263 IMPLEMENTATION.


  METHOD set_attributes.
    IF carrier_id IS INITIAL OR connection_id IS INITIAL.
      RAISE EXCEPTION TYPE cx_abap_invalid_value.
    ENDIF.

    me->carrier_id = iv_carrier_id.
    me->connection_id = iv_connection_id.
    me->conn_counter = conn_counter + 1.
  ENDMETHOD.


  METHOD get_attributes.
    e_carrier_id = carrier_id.
    e_connection_id = connection_id.

  ENDMETHOD.
ENDCLASS.
