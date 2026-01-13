@AbapCatalog.sqlViewName: 'ZV_SALES_P'
@EndUserText.label: 'Parameterized Sales CDS'
define view ZCDS_SALES_PARAM
  with parameters
    p_date : dats
  as select from ZCDS_SALES_BASIC
{
  order_id,
  customer_name,
  amount,
  order_date
}
where order_date >= :p_date
