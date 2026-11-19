.class public abstract Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 11

    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SwapLocaleScreen;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SwapLocaleScreen;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string v3, "universal_link_swap_dispatch"

    const-string v4, "universal_link_swap_dispatch"

    const-string v5, "universal_link"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$ChangeLocationClickedEvent;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$ChangeLocationClickedEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "universal_link_swap_dispatch"

    const-string v4, "change_location"

    const-string v5, "universal_link"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SkipChangeLocationClickedEvent;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SkipChangeLocationClickedEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x61

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "universal_link_swap_dispatch"

    const-string v4, "skip_change_location"

    const-string v5, "universal_link"

    const-string v6, "click"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    sget-object v0, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$CloseSwapLocaleClickedEvent;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$CloseSwapLocaleClickedEvent;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v1, 0x0

    const-string v2, "universal_link_swap_dispatch"

    const-string v3, "close_bottom_sheet"

    const-string v4, "universal_link"

    const-string v5, "click"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
