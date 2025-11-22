CLASS zcl_path_expression DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_path_expression IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    SELECT FROM zi_cds_19 AS booking
           FIELDS booking~TravelId,
                  booking~BookingId,
                  \_Travel-AgencyId,
                  \_travel\_agency-name AS AgencyName,
                  \_Travel\_customer-customer_id AS CoustumerId,
                  concat_with_space( \_Travel\_Customer-first_name, \_travel\_Customer-last_name, 1 ) AS CustomerName
           WHERE booking~CarrierId EQ 'AA'
           INTO TABLE @DATA(lt_results)
           UP TO 5 ROWS.

    IF sy-subcs EQ 0.
      out->write( lt_results ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
