CLASS zcl_01_exec_polimorfismo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_polimorfismo IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_airplanes       TYPE STANDARD TABLE OF REF TO zcl_21_airplane_4263,
          go_airplane        TYPE REF TO zcl_21_airplane_4263,
          go_cargo_plane     TYPE REF TO zcl_22_cargo_plane_4263,
          go_passanger_plane TYPE REF TO zcl_23_passanger_plane_4263.

    go_cargo_plane = NEW #(  ).

    APPEND go_cargo_plane TO lt_airplanes.

    go_passanger_plane = NEW #(  ).

    APPEND go_passanger_plane TO lt_airplanes.

    LOOP AT lt_airplanes INTO go_airplane.

      out->write( go_airplane->airplane_type(  ) ).

    ENDLOOP.

    DATA: gt_co_company     TYPE STANDARD TABLE OF REF TO zif_08_co_company_4263,
          go_co_company     TYPE REF TO zif_08_co_company_4263,
          go_co_company_eu  TYPE REF TO zcl_24_company_eu_4263,
          go_co_company_usa TYPE REF TO zcl_25_company_usa_4263,
          go_plant          TYPE REF TO zcl_26_plant_4263.







  ENDMETHOD.

ENDCLASS.
