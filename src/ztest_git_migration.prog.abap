*&---------------------------------------------------------------------*
*& Report ZTEST_GIT_MIGRATION
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST_GIT_MIGRATION.


class zle DEFINITION.
  PUBLIC SECTION.

  METHODS: CONSTRUSTOR,
           GET_METODA RETURNING VALUE(VRACECKA) TYPE ABAP_BOOL.


ENDCLASS.


CLASS zle implementation.

  METHOD CONSTRUSTOR.

    call FUNCTION 'CALCULATE_HASH_FOR_RAW'
    exporting
*      ALG            = 'SHA1'
      DATA           = CONV xstring( 'KAREL' )
*      LENGTH         = 0
*    importing
*      HASH           =
*      HASHLEN        =
*      HASHX          =
*      HASHXLEN       =
*      HASHSTRING     =
*      HASHXSTRING    =
*      HASHB64STRING  =
*    exceptions
*      UNKNOWN_ALG    = 1
*      PARAM_ERROR    = 2
*      INTERNAL_ERROR = 3
*      OTHERS         = 4
    .
  if sy-subrc <> 0.
*   message id sy-msgid type sy-msgty number sy-msgno
*     with sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4.
  endif.

  IF ABAP_TRUE EQ ABAP_TRUE.

  ENDIF.

  ENDMETHOD.

  METHOD GET_METODA.


    VRACECKA = ABAP_TRUE.
  ENDMETHOD.


ENDCLASS.

class zlocal DEFINITION.

ENDCLASS.


CLASS zlocal implementation.

ENDCLASS.
