CLASS zcl_lab_05_flight_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    METHODS get_check_flight IMPORTING iv_carrier_id    TYPE /dmo/carrier_id "codigo company
                                   iv_connection_id TYPE /dmo/connection_id "codigo aerolinea
                         RETURNING VALUE(rv_exists) TYPE abap_boolean. "" X = existe, SPACE = no existe
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_05_flight_4362 IMPLEMENTATION.
  METHOD get_check_flight.

    "creamos una variable
    DATA lv_count TYPE i.

    "Verificamos si existe el vuelo en la tabla /DMO/FLIGHT

    SELECT COUNT( * )
     FROM /dmo/flight
      WHERE carrier_id = @iv_carrier_id
        AND connection_id = @iv_connection_id
      INTO @lv_count.

    "Si el conteo es mayor que 0, el vuelo existe
    IF lv_count > 0.
        rv_exists = abap_true. "X
       ELSE.
        rv_exists = abap_false. "SPACE
    ENDIF.

  ENDMETHOD.

ENDCLASS.
