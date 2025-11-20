@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount Conversion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_cds_08
  as select from /dmo/travel
{
  key travel_id                                              as TravelId,

      @Semantics.amount.currencyCode: 'OriginalCurrency'
      total_price                                            as OriginalPrice,
      currency_code                                          as OriginalCurrency,

      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount => total_price,
                           source_currency => currency_code,
                           target_currency => abap.cuky'USD',
                           exchange_rate_date => begin_date ,
                           client  => $session.client,
                           error_handling => 'SET_TO_NULL' ) as ConvertedPrice,
      cast( 'USD' as abap.cuky )                             as ConvertedCurrency
}
where
  currency_code = 'EUR';
