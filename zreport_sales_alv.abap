REPORT zreport_sales_alv.

PARAMETERS: p_date TYPE dats.

DATA: lo_alv TYPE REF TO cl_salv_table.

SELECT *
  FROM zcds_sales_param( p_date = @p_date )
  INTO TABLE @DATA(lt_data).

cl_salv_table=>factory(
  IMPORTING
    r_salv_table = lo_alv
  CHANGING
    t_table      = lt_data ).

lo_alv->display( ).
