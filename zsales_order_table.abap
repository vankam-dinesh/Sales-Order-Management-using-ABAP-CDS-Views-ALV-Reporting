@EndUserText.label : 'Sales Order Table'
@AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
define table zsales_order {
  key mandt : mandt not null;
  key order_id : char10;
  customer_id : char10;
  order_date : dats;
  amount : curr15;
}
