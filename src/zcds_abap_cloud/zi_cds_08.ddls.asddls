@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount Conversion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_cds_08
  with parameters // REALIZAMOS UN EJERCICIOS CON LOS POSIBLE VALORES DE LOS PARAMETROS
    pFromCurrency : abap.cuky,
    pToCurrency   : abap.cuky


  as select from /dmo/travel
{
  key travel_id                                              as TravelId,

      @Semantics.amount.currencyCode: 'OriginalCurrency'
      total_price                                            as OriginalPrice,
      currency_code                                          as OriginalCurrency,

      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount => total_price,
                           source_currency => $parameters.pFromCurrency,
                           target_currency => $parameters.pToCurrency,
                           exchange_rate_date => begin_date ,
                           client  => $session.client,
                           error_handling => 'SET_TO_NULL' ) as ConvertedPrice,
      $parameters.pToCurrency                              as ConvertedCurrency
}
where
  currency_code = $parameters.pFromCurrency;
