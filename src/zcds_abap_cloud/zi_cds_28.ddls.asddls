@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection contract type qury'

define root view entity ZI_CDS_28
 provider contract transactional_query
  as projection on zi_cds_24
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child ZI_CDS_29,
      _Customer
}
