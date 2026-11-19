.class public abstract Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvScreen;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvScreen;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "mylv/my_overview"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvQrCodeScreen;

    const-string v1, "lv_pass"

    const-string v2, "speedy_pass"

    if-eqz v0, :cond_2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvQrCodeScreen;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$MyLvQrCodeScreen;->a:Z

    if-eqz p0, :cond_1

    move-object v1, v2

    :cond_1
    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const-string v5, "store_user_pass"

    const-string v6, "store_user_pass"

    const-string v7, "store_user_pass"

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;

    if-eqz v0, :cond_4

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$CloseQrCodeScreenEvent;->a:Z

    if-eqz p0, :cond_3

    move-object v1, v2

    :cond_3
    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/16 v11, 0x20

    const/4 v12, 0x0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;

    const-string v5, "profil_qr_code"

    const-string v6, "close_store"

    const-string v7, "store_user_pass"

    const-string v8, "navigation"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;

    if-eqz v0, :cond_6

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;->a:Z

    if-eqz v4, :cond_5

    move-object v1, v2

    :cond_5
    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ActivateStoreModeWithQrCodeEvent;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StoreMode;-><init>(Ljava/lang/String;Z)V

    const/4 p0, 0x2

    new-array p0, p0, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    const/4 v4, 0x0

    aput-object v0, p0, v4

    aput-object v1, p0, v2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/16 v11, 0x20

    const/4 v12, 0x0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;

    const-string v5, "store_user_pass"

    const-string v6, "store_mode_access"

    const-string v7, "store_user_pass"

    const-string v8, "event"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ScreenShotIntentionEvent;

    if-eqz v0, :cond_8

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ScreenShotIntentionEvent;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ScreenShotIntentionEvent;->a:Z

    if-eqz p0, :cond_7

    move-object v1, v2

    :cond_7
    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/16 v11, 0x21

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "store_user_pass"

    const-string v6, "screenshot_store_user_pass"

    const-string v7, "store_user_pass"

    const-string v8, "screenshot"

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenProfileEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenProfileEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "MyProfil"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenOrdersEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenOrdersEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "MyOrders"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenCareServiceEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenCareServiceEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "MyCareService"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_b
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenAddressBookEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenAddressBookEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "AdressBook"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_c
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyCertificatesEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyCertificatesEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "my_certificates"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_d
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenConnectivityEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenConnectivityEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "connectivity"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_e
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyIconsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyIconsEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/profil"

    const-string v4, "my_app_icons"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_f
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$IconsConfirmEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/Icons"

    const-string v4, "confirm"

    const-string v5, "mylv"

    const-string v6, "icons"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_10
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ClickOnQrCodeEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$ClickOnQrCodeEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/profil"

    const-string v4, "qr_code"

    const-string v5, "mylv"

    const-string v6, "store_mode"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_11
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenSettingsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenSettingsEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "Settings"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_12
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyNotificationsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyNotificationsEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "my_notif"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_13
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenExclusiveSalesEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenExclusiveSalesEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "MyExclusiveSales"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_14
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyAppointmentsEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyAppointmentsEvent;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard"

    const-string v4, "MyAppointments"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_15
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderItemClickEvent;

    if-eqz v0, :cond_16

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderItemClickEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderItemClickEvent;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "dashboard"

    const-string v5, "mylv"

    const-string v6, "navigation"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_16
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderCarouselFirstSwipeEvent;

    if-eqz v0, :cond_17

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "dashboard"

    const-string v4, "swipe_ongoing_orders"

    const-string v5, "mylv"

    const-string v6, "swipe"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_17
    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyLV;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OpenMyLV;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "dashboard"

    const-string v3, "open_avatar_library"

    const-string v4, "MyLV"

    const-string v5, "click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_18
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
