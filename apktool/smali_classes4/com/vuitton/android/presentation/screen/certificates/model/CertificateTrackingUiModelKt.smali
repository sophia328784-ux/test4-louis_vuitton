.class public abstract Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    if-eqz v0, :cond_0

    const-string p0, "diamond"

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    if-eqz v0, :cond_1

    const-string p0, "capucine"

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    if-eqz v0, :cond_2

    const-string p0, "ruby"

    return-object p0

    :cond_2
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    if-eqz p0, :cond_3

    const-string p0, "visionnaire"

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 15

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "certificate_list"

    const-string v4, "certificate_list"

    const-string v5, "certificate"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyCertificates/Transfer"

    const-string v4, "mylv/my_certificates/transfer"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateTransferConfirmationScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "LVPass/MyLV/Dashboard/MyCertificates/Transfer/Confirmation"

    const-string v4, "mylv/my_certificates/transfer/confirmation"

    const-string v5, "mylv"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "add_certificate_form"

    const-string v4, "add_certificate_form"

    const-string v5, "certificate"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateActivationConfirmationScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "add_certificate_confirmation"

    const-string v4, "add_certificate_confirmation"

    const-string v5, "certificate"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateUnlockNfcScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "certificate_unlock_nfc"

    const-string v4, "certificate_unlock_nfc"

    const-string v5, "certificate"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_5
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CertificateVisionnaireDetailsScreen;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v2, p0}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "visionnaire_details"

    const-string v4, "visionnaire_details"

    const-string v5, "certificate"

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_7

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v6}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "certificate_list"

    const-string v7, "view_my_certificate"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AddCertificateEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "certificate_list"

    const-string v7, "add_manual_certificate"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "add_certificate_form"

    const-string v7, "activation_intention"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessManualEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "diamond"

    if-eqz v0, :cond_a

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v4}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "add_certificate_form"

    const-string v8, "activation_success"

    const-string v9, "certificate"

    const-string v10, "event"

    const-string v11, "certificate"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateErrorManualEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    invoke-static {v4}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "add_certificate_form"

    const-string v8, "activation_error"

    const-string v9, "certificate"

    const-string v10, "event"

    const-string v11, "certificate"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_b
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenIndividualNumberInfoEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "add_certificate_form"

    const-string v7, "help_individual_number"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_c
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenBuyerNameInfoEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "add_certificate_form"

    const-string v7, "help_activation_code"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_d
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;

    if-eqz v0, :cond_f

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ConsentCheckboxToggledEvent;->a:Z

    if-eqz p0, :cond_e

    const-string p0, "consent_ticked"

    :goto_0
    move-object v7, p0

    goto :goto_1

    :cond_e
    const-string p0, "consent_unticked"

    goto :goto_0

    :goto_1
    const/16 v12, 0x41

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "add_certificate_form"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_f
    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$OpenCertificateListFromContifrmationEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v12, 0x61

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "add_certificate_confirmation"

    const-string v7, "see_my_certificate"

    const-string v8, "click"

    const-string v9, "my_certificates"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_10
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;

    if-eqz v0, :cond_11

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v6}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "certificate_list"

    const-string v7, "transfer_my_certificate"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_11
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;

    const/4 v4, 0x3

    if-eqz v0, :cond_12

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$AcceptTransferCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v7}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v6, p0, v1

    aput-object v7, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/MyLV/Dashboard/MyCertificates/Transfer"

    const-string v8, "transfer_my_certificate_intention"

    const-string v9, "MyLV"

    const-string v10, "my_certificates"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_12
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;

    if-eqz v0, :cond_13

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$CancelTransferCertificateEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v7}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v6, p0, v1

    aput-object v7, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/MyLV/Dashboard/MyCertificates/Transfer"

    const-string v8, "transfer_my_certificate_cancelation"

    const-string v9, "MyLV"

    const-string v10, "my_certificates"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_13
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;

    if-eqz v0, :cond_14

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v7}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$CertificateId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v7, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v6, p0, v1

    aput-object v7, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "LVPass/MyLV/Dashboard/MyCertificates/Transfer"

    const-string v8, "transfer_my_certificate_activation"

    const-string v9, "MyLV"

    const-string v10, "my_certificates"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_14
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;

    if-eqz v0, :cond_15

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateIntentionEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    invoke-static {v6}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v4, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "certificate_list"

    const-string v8, "activate_my_certificate_intention"

    const-string v9, "certificate"

    const-string v10, "click"

    const-string v11, "certificate"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_15
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;

    if-eqz v0, :cond_16

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$StartDetectionNfcEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v4, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "certificate_unlock_nfc"

    const-string v8, "start_detection"

    const-string v9, "certificate"

    const-string v10, "click"

    const-string v11, "certificate"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_16
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;

    if-eqz v0, :cond_17

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ActivateCertificateSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v4, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "certificate_unlock_nfc"

    const-string v8, "activate_my_certificate_success"

    const-string v9, "certificate"

    const-string v10, "event"

    const-string v11, "certificate"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_17
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;

    if-eqz v0, :cond_18

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v6, v8}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NfcErrorEvent;->b:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ErrorId;-><init>(Ljava/lang/String;)V

    new-array p0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v6, p0, v1

    aput-object v7, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "certificate_unlock_nfc"

    const-string v8, "error"

    const-string v9, "certificate"

    const-string v10, "event"

    const-string v11, "certificate"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_18
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;

    if-eqz v0, :cond_19

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$NeedHelpNfcEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "certificate_unlock_nfc"

    const-string v7, "need_help"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_19
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;

    if-eqz v0, :cond_1a

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ViewJourneyEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "visionnaire_details"

    const-string v7, "view_journey"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1a
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;

    if-eqz v0, :cond_1b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$ProductSummarySectionEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "visionnaire_details"

    const-string v7, "product_summary"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1b
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;

    if-eqz v0, :cond_1c

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$DetailsSectionEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateVisionnaireUiModel;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "visionnaire_details"

    const-string v7, "details"

    const-string v8, "certificate"

    const-string v9, "click"

    const-string v10, "certificate"

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1c
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;

    const/4 v4, 0x0

    if-eqz v0, :cond_1f

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;->a:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->o:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$HitOnStoneEngravingEvent;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondStoneUiModel;->b:Ljava/lang/String;

    const-string v4, "view_my_stone_"

    invoke-static {v4, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object p0, v0, v2

    aput-object v4, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v6, 0x0

    const-string v7, "certificate_list"

    const-string v9, "certificate"

    const-string v10, "click"

    const/4 v11, 0x0

    const/16 v13, 0x21

    const/4 v14, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_1e
    const-string p0, "Collection contains no element matching the predicate."

    invoke-static {p0}, Lzy0;->c(Ljava/lang/String;)V

    return-object v4

    :cond_1f
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method
