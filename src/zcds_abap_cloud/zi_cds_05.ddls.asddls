@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Union'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_cds_05
  as select from /dmo/travel
{
  key travel_id                as TravelId,
      cast('' as abap.numc(4)) as BookingId
}

union select distinct from /dmo/booking
{
  key travel_id  as TravelId,
      booking_id as BookingId
}
