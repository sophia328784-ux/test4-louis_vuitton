.class public abstract Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;

    if-eqz v3, :cond_0

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$OsaListScreen;->a:I

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$NumberOfAppointments;-><init>(I)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/Services/MyAppointment"

    const-string v7, "Services/my_appointment"

    const-string v8, "services"

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_0
    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/Services/MyAppointment"

    const-string v7, "book_online_store_appointment"

    const-string v8, "services"

    const-string v9, "my_appointment"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1
    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "LVPass/Services/MyAppointment"

    const-string v7, "prepare_your_appointment"

    const-string v8, "services"

    const-string v9, "my_appointment"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_2
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_3

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyAppointmentEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v5

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/Services/MyAppointment"

    const-string v10, "modify_appointment"

    const-string v11, "services"

    const-string v12, "click"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_3
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;

    if-eqz v3, :cond_4

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancelAppointmentEvent;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v5

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "LVPass/Services/MyAppointment"

    const-string v10, "appointment_cancellation_intention"

    const-string v11, "services"

    const-string v12, "my_appointment"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_4
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;

    const-string v7, ""

    const/4 v8, 0x0

    if-eqz v3, :cond_7

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$CancellationConfirmedEvent;->a:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentId;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-eqz v0, :cond_5

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->a:Ljava/lang/String;

    :cond_5
    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    move-object v7, v8

    :goto_0
    invoke-direct {v2, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v5

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/Services/MyAppointment"

    const-string v12, "appointment_cancellation_confirm"

    const-string v13, "services"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_7
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;

    if-eqz v3, :cond_a

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;->a:Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentDate;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-eqz v0, :cond_8

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->a:Ljava/lang/String;

    :cond_8
    if-nez v8, :cond_9

    goto :goto_1

    :cond_9
    move-object v7, v8

    :goto_1
    invoke-direct {v2, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v5

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/Services/MyAppointment"

    const-string v12, "add_to_calendar_intention"

    const-string v13, "services"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_a
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;

    if-eqz v3, :cond_b

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentScreen;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking"

    const-string v12, "mylv/my_appointment/booking"

    const-string v13, "mylv"

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_b
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;

    if-eqz v3, :cond_e

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$SelectReasonEvent;->b:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_c

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eqz v2, :cond_d

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking"

    const-string v5, "confirm_reason"

    const-string v6, "osa"

    const-string v7, "click"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_e
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;

    if-eqz v3, :cond_f

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking"

    const-string v12, "modify_reason"

    const-string v13, "osa"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_f
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;

    if-eqz v3, :cond_10

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$AppointmentSearch;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentLocationSelectionClickedEvent;->b:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v5

    aput-object v2, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking"

    const-string v12, "choose_location"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_10
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;

    if-eqz v3, :cond_13

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_11
    if-eqz v2, :cond_12

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking"

    const-string v5, "open_date_pop_in"

    const-string v6, "mylv"

    const-string v7, "my_appointment"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_13
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;

    if-eqz v3, :cond_16

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v5}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->r(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;->c:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;->b:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentNextClickedEvent;->d:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_14

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v3, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v2, :cond_15

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v11

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v5, 0x0

    const-string v6, "LVPass/my_appointment/booking"

    const-string v7, "cta_next"

    const-string v8, "mylv"

    const-string v9, "my_appointment"

    const/4 v10, 0x0

    const/16 v12, 0x21

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_16
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;

    if-eqz v3, :cond_17

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionScreen;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/date_selection"

    const-string v12, "mylv/my_appointment/booking"

    const-string v13, "mylv"

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_17
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;

    if-eqz v3, :cond_18

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;->a:Ljava/time/LocalDate;

    invoke-virtual {v3}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->r(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionSelectedClickedEvent;->b:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/date_selection"

    const-string v12, "choose_date"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_18
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;

    if-eqz v3, :cond_19

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentDateSelectionNoDateEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/date_selection"

    const-string v12, "no_date_available"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_19
    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentScreen;->a:Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentScreen;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v11, "my_appointment_booking_kisa"

    const-string v12, "mylv/my_appointment/booking/kisa"

    const-string v13, "mylv"

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1a
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$KisaConsentConfirmEvent;

    if-eqz v3, :cond_1b

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "my_appointment_booking_kisa"

    const-string v12, "confirm_consent"

    const-string v13, "mylv"

    const-string v14, "click"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1b
    sget-object v3, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoScreen;->a:Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoScreen;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/contact_information"

    const-string v12, "mylv/my_appointment/booking"

    const-string v13, "mylv"

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1c
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;

    if-eqz v3, :cond_1d

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$ModifyReasonFromContactInfoClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/contact_information"

    const-string v12, "modify_reason"

    const-string v13, "osa"

    const-string v14, "click"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1d
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;

    if-eqz v3, :cond_1e

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAccountClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/contact_information"

    const-string v12, "cta_confirm_email"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1e
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;

    if-eqz v3, :cond_1f

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoLoginClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/bottom_sheet/unicity/email"

    const-string v12, "cta_login_to_confirm_appointment"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_1f
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;

    if-eqz v3, :cond_20

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoCancelClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/bottom_sheet/unicity/email"

    const-string v12, "cta_cancel"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_20
    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;

    if-eqz v3, :cond_21

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->r(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$PrebookAppointmentDate;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;->b:Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreId;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentContactInfoConfirmAppointmentClickedEvent;->c:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    aput-object v3, v0, v6

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/my_appointment/booking/contact_information"

    const-string v12, "cta_appointment_confirm"

    const-string v13, "mylv"

    const-string v14, "my_appointment"

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_21
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;

    if-eqz v1, :cond_24

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetAddCalendarClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_22
    if-eqz v2, :cond_23

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking/bottom_sheet/confirmation"

    const-string v5, "cta_add_to_calendar"

    const-string v6, "mylv"

    const-string v7, "my_appointment"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_24
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;

    if-eqz v1, :cond_27

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCreateAccountClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_25

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_25
    if-eqz v2, :cond_26

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_26
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment"

    const-string v5, "cta_create_an_account_and_manage"

    const-string v6, "mylv"

    const-string v7, "my_appointment"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_27
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;

    if-eqz v1, :cond_2a

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetCancelKeepPreviousAppointmentClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_28

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_28
    if-eqz v2, :cond_29

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment"

    const-string v5, "cta_keep_previous_appointment"

    const-string v6, "mylv"

    const-string v7, "my_appointment"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_2a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;

    if-eqz v1, :cond_2d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetReplaceAppointmentClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2b

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2b
    if-eqz v2, :cond_2c

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment"

    const-string v5, "cta_replace_this_appointment"

    const-string v6, "mylv"

    const-string v7, "my_appointment"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_2d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;

    if-eqz v1, :cond_30

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BottomSheetGoToAppointmentClickedEvent;->a:Z

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;

    invoke-direct {v3, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$VirtualStudio;-><init>(Z)V

    invoke-virtual {v1, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2e
    if-eqz v2, :cond_2f

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_2f
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v3, 0x0

    const-string v4, "LVPass/my_appointment/booking/bottom_sheet/unicity/appointment"

    const-string v5, "cta_go_to_your_appointment"

    const-string v6, "mylv"

    const-string v7, "my_appointment"

    const/4 v8, 0x0

    const/16 v10, 0x21

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_30
    invoke-static {}, Lv40;->g()V

    return-object v8
.end method
