.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$EarphoneGeneralScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$EarphoneGeneralScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT/Earphones"

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoriesScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoriesScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT/Earphones/FAQ"

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT/Earphones/Tutorial"

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$TutorialClickScreen;->a:Ljava/lang/String;

    const-string v0, "LVPass/IoT/Earphones/Tutorial/Video/"

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$ClickOnDiscoverEvent;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$ClickOnDiscoverEvent;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$ClickOnDiscoverEvent;->a:Ljava/lang/String;

    const/16 v9, 0x71

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT/Earphones"

    const-string v5, "IoT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoryClickEvent;->a:Ljava/lang/String;

    const-string v0, "FAQ_"

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x71

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/IoT/Earphones/FAQ"

    const-string v5, "IoT"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
