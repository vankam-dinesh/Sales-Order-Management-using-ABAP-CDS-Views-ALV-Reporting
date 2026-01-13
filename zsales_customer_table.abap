@EndUserText.label : 'Customer Master Table'
@AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
define table zsales_customer {
  key mandt : mandt not null;
  key customer_id : char10;
  customer_name : char40;
  city : char30;
}
