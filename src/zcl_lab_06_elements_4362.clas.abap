CLASS zcl_lab_06_elements_4362 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    "Creamos la estructura
    TYPES: BEGIN OF ty_elemen_objects,
             class     TYPE string,
             instance  TYPE string,
             reference TYPE string,
           END OF ty_elemen_objects.
    "Creo el objecto del tipo de estructura creado anteriormente
    DATA ms_object TYPE ty_elemen_objects.

    "Creo la definicion del metodp set_object con los valores a iv.
    METHODS set_object IMPORTING iv_class     TYPE string
                                 iv_instance  TYPE string
                                 iv_reference TYPE string.

    "Creo la constantes
    CONSTANTS: c_autor       TYPE string VALUE 'Jarolin Martinez',
               c_version     TYPE string VALUE 'V1.0',
               c_company     TYPE string VALUE 'CAC',
               c_descripcion TYPE string VALUE 'Class'.

    "Esta es una estructura como constante.
    CONSTANTS: BEGIN OF c_object,
                 c_autor   TYPE string VALUE 'Obj Jarolin',
                 c_company TYPE string VALUE 'CAC',
               END OF c_object.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_06_elements_4362 IMPLEMENTATION.
  METHOD set_object.
*        Creo la implementacion del metodo y uso el atributo ms_object de tipo ty_elements_objets.
*        Este metodo recibe 3 parametros y asigna los valores al atributo ms_objects.
    ms_object-class = iv_class.
    ms_object-instance = iv_instance.
    ms_object-reference = iv_reference.
  ENDMETHOD.
ENDCLASS.
