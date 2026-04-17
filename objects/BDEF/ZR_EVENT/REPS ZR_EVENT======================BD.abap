managed implementation in class ZBP_R_EVENT unique;
strict ( 2 );
with draft;
extensible;
define behavior for ZR_EVENT alias ZrEvent
persistent table ZEVENT
extensible
draft table ZEVENT_D
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   EventUUID;

  field ( readonly )
   LocalLastChangedAt,
   LastChangedAt;

  field ( readonly : update )
   EventUUID;


  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for ZEVENT corresponding extensible
  {
    EventUUID = EVENT_UUID;
    EventID = EVENT_ID;
    EventName = EVENT_NAME;
    Location = LOCATION;
    IsOnline = IS_ONLINE;
    DateFrom = DATE_FROM;
    DateTo = DATE_TO;
    CreatedBy = CREATED_BY;
    ChangedBy = CHANGED_BY;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
    LastChangedAt = LAST_CHANGED_AT;
  }

}