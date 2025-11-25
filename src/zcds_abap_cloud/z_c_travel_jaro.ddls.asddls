@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel - Consumption'
@Metadata.ignorePropagatedAnnotations: true


@Search.searchable: true

define root view entity Z_C_TRAVEL_JARO
  provider contract transactional_query
  as projection on Z_R_TRAVEL_JARO
{
  key TravelUUID,
      TravelID,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: ['AgencyName']
      AgencyID,
      _Agency.Name              as AgencyName,
      
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      @ObjectModel.text.element: ['CustomerName']
      CustomerID,
      _Customer.LastName        as CustomerName,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,

      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,
      //_OverallStatus._Text[1: Language = $session.system_language].Text as OverallStatusText,


      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _Agency,
      _Currency,
      _Customer

}
