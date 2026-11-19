.class public interface abstract Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic n5(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-interface {p0, v0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->J3(ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V

    return-void
.end method


# virtual methods
.method public abstract B7()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract D6(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract E8()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract F2()V
.end method

.method public abstract J3(ZLcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V
.end method

.method public abstract Q(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V
.end method

.method public abstract X8(Ljava/util/List;)V
.end method

.method public abstract a()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract a8()Lkotlinx/coroutines/flow/StateFlow;
.end method

.method public abstract b3(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Z)V
.end method

.method public abstract b4()V
.end method

.method public abstract g()Lkotlinx/coroutines/flow/SharedFlowImpl;
.end method

.method public abstract h4(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V
.end method

.method public abstract n7()V
.end method

.method public abstract nb(Ljava/lang/String;)V
.end method

.method public abstract p()V
.end method

.method public abstract v7(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;Z)V
.end method

.method public abstract w9(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/ThematicPlpTrackingUiModel;)V
.end method

.method public abstract wb()Lkotlinx/coroutines/flow/StateFlow;
.end method
