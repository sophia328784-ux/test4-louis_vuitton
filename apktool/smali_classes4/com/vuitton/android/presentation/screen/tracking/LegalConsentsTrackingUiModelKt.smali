.class public abstract Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 11

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$LegalConsentsScreen;->a:Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const-string v3, "legal_consents"

    const-string v4, "legal_consents"

    const-string v5, "popin_consents"

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$AcceptConsentsClickedEvent;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$AcceptConsentsClickedEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$AcceptConsentsClickedEvent;->a:Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v3, "legal_consents"

    const-string v4, "consent_agree"

    const-string v5, "vto"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;

    check-cast p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingUiModel$DeclineConsentsClickedEvent;->a:Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackingContentType;->a()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentType;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x20

    const/4 v10, 0x0

    const-string v3, "legal_consents"

    const-string v4, "consent_decline"

    const-string v5, "vto"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
