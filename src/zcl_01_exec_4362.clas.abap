CLASS zcl_01_exec_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exec_4362 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    "data lo_contract type REF TO zcl_01_exec_4362.

    "create object lo_contract.

    "lo_contract = new #(  ).

    "DATA(lo_contract) = NEW zcl_02_contract_4362(  ).

    "DATA(lo_contract2) = NEW zcl_02_contract_4362(  ).
*
*    DATA lv_process TYPE string.
*
*    DATA: lv_address TYPE zcl_02_contract_4362=>tty_address,
*          ls_address TYPE zcl_02_contract_4362=>ty_address.
*
*          zcl_02_contract_4362=>get_instance(
*            IMPORTING
*              er_instance = data(lo_contract)
*          ).
*
*
*    IF lo_contract IS BOUND.
*
*      lo_contract->set_client(
*        EXPORTING
*          iv_client   = 'Jarolin'
*          iv_location = space
*        IMPORTING
*         ev_status    = DATA(lv_status)
*        CHANGING
*          cv_process  = lv_process
*      ).
*
*      lo_contract->get_client( IMPORTING ev_client = DATA(lv_cliente)  ).
*
*      lo_contract->region = 'DO'.
*
*      DATA(lv_client_name) = lo_contract->get_client_name(  EXPORTING iv_client_id   = '01' ).
*
*      IF NOT lo_contract->get_client_name( iv_client_id =  '01' ) IS INITIAL.
*        out->write( lo_contract->get_client_name( iv_client_id = '01' )  ).
*      ENDIF.
*
*
*    ENDIF.
*
*    zcl_02_contract_4362=>set_cntr_type( iv_cntr_type = 'Construction' ).
*
*    zcl_02_contract_4362=>get_cntr_type(   IMPORTING   ev_cntr_type = DATA(lv_cntr_type)  ).
*
*    zcl_02_contract_4362=>currency = 'USD'.
*
*    zcl_02_contract_4362=>currency = zcl_02_contract_4362=>cs_currency-eur.
*
*    out->write( lo_contract->currency ).
*    "out->write( lo_contract2->currency ).
*
*    out->write( |{ lv_cliente } - { lv_status } - { lv_process } - { lo_contract->region }| ).
*
*    "out->write( lv_cntr_type ).
*
*    "zcl_02_contract_4362=>company = 'Coca-Cola'.

  data(lo_employee) = new zcl_03_employee_4362( iv_employe_id = '01' ).

  out->write( lo_employee->get_employee_id(  ) ).



  ENDMETHOD.

ENDCLASS.
