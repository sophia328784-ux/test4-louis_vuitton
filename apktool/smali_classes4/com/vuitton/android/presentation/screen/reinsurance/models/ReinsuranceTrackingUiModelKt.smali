.class public abstract Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;
    .locals 14

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;

    const-string v1, "_"

    const-string v2, " "

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-static {v3, v2, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_1
    move-object v11, p0

    goto :goto_2

    :cond_2
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_1

    :goto_2
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v5, 0x0

    const-string v6, "LVPass/cart"

    const-string v8, "cart_page"

    const-string v9, "client_services_open_menu"

    const/4 v10, 0x0

    const/16 v12, 0x21

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    invoke-static {v3, v2, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;->a()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    :goto_4
    move-object v11, p0

    goto :goto_5

    :cond_6
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_4

    :goto_5
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/4 v5, 0x0

    const-string v6, "LVPass/cart"

    const-string v8, "cart_page"

    const-string v9, "client_services_close_menu"

    const/4 v10, 0x0

    const/16 v12, 0x21

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v4
.end method
