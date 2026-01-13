@AbapCatalog.sqlViewName: 'ZV_SALES_B'
@EndUserText.label: 'Sales Basic CDS View'
define view ZCDS_SALES_BASIC
  as select from zsales_order as so
  association [1..1] to zsales_customer as _cust
    on so.customer_id = _cust.customer_id
{
  so.order_id,
  so.order_date,
  so.amount,
  _cust.customer_name,
  _cust.city
}
