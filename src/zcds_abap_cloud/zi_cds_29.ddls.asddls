@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Child Query'

define view entity ZI_CDS_29
  as projection on ZI_CDS_25
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Travel : redirected to parent ZI_CDS_28
}
