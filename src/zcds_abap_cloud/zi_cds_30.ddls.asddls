@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VDM'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CDS_30

  as select from I_Currency

  association [0..*] to I_CurrencyText as _Text on _Text.Currency = $projection.Currency
{
  key Currency,
      Decimals,
      CurrencyISOCode,
      AlternativeCurrencyKey,
      IsPrimaryCurrencyForISOCrcy,
      
      /* Associations */
      _Text
}
