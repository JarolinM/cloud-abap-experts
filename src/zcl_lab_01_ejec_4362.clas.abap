CLASS zcl_lab_01_ejec_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_4362 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA(lo_product) = NEW zcl_lab_02_product_4362(  ).

    IF lo_product IS BOUND.
      lo_product->set_product( i_product = '01A0' ).
      lo_product->set_creation_date( i_creation_date = '20250910' ).
    ENDIF.

    out->write(    lo_product->get_product(
*      RECEIVING
*        r_product =
    ) ).

    out->write( lo_product->get_creation_date( ) ).

    "Referenciamos
    DATA lo_lab_04 TYPE REF TO zcl_lab_04_person_4362.

    "Creamos el objeto
    CREATE OBJECT lo_lab_04.

    lo_lab_04->set_age( iv_age = 30 ).

    out->write( |Edad: { lo_lab_04->get_age(  ) }| ).

    DATA(lo_check_flight) = NEW zcl_lab_05_flight_4362(  ).
    DATA lv_result TYPE abap_boolean.

    lv_result = lo_check_flight->get_check_flight(
                  iv_carrier_id    = 'S9' "Company code
                  iv_connection_id = '0001' "Codigo conexion
                ).

    IF lv_result = abap_true.
      out->write( |'El vuelo existe X.' | ).
    ELSE.
      out->write( |'El vuelo no existe ' | ).
    ENDIF.

    " Creo la estructura global refereciada

    DATA lo_elements TYPE REF TO zcl_lab_06_elements_4362.
    CREATE OBJECT lo_elements. "Creo el objeto para poder ser usado

    lo_elements->set_object(
      iv_class     = 'Class 01'
      iv_instance  = 'Instancia #1'
      iv_reference = 'Referencia #'
    ).

    out->write( |Class { lo_elements->ms_object-class }| ).
    out->write( |Instance { lo_elements->ms_object-instance }| ).
    out->write( |Reference { lo_elements->ms_object-reference }| ).

    "Mostrar las constantes usando el separador de clase (=>)
    out->write( |c_autor: { zcl_lab_06_elements_4362=>c_autor } | ).
    out->write( |c_version: { zcl_lab_06_elements_4362=>c_version } | ).
    out->write( |c_company: { zcl_lab_06_elements_4362=>c_company } | ).
    out->write( |c_descripcion: { zcl_lab_06_elements_4362=>c_descripcion }| ).

    out->write( |----------------------:| ).
    out->write( |c_autor: { zcl_lab_06_elements_4362=>c_object-c_autor }| ).


    "-------------------------------------------------------------------------
    DATA lo_students TYPE REF TO zcl_lab_07_student_4263.
    CREATE OBJECT lo_students.

    DATA(lv_birth_date) = lo_students->set_birth_date( EXPORTING  iv_birth_date = '20250926' ).
    "No es posible modificar el atributo desde fuera de la clase, El modificador READ-ONLY bloquea la escritura
    "directa, por lo que solo se puede modificar el atributo desde dentro de la clase (usando SET_BIRTH_DATE).
    "lo_students->birth_date = '20250926'.

    out->write( lv_birth_date ).


    " Invocar el método estático de zcl_lab_08_work_record_4263
    zcl_lab_08_work_record_4263=>open_new_record(
       iv_date       = '20250906'
       iv_first_name = 'Jarolin'
       iv_last_name  = 'Martinez'
*      iv_surname    =
     ).
    out->write( 'Nuevo registro abierto correctamente.' ).

    DATA lo_account TYPE REF TO zcl_lab_09_account_4362.
    CREATE OBJECT lo_account.

    lo_account->set_account( iv_iban = 'DO752684682456' ).

    out->write(   lo_account->get_account(
*      RECEIVING
*        rv_iban =
      ) ).

  ENDMETHOD.

ENDCLASS.
