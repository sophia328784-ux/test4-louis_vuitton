.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVLightUpOpenDeviceListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/lvlisteners/LVLightUpOpenDeviceListener;",
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


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment$unPairProduct$1$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->S(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;)Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$UnPairObjectEvent;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->c:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$UnPairObjectEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailFragment;->j0()Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    move-result-object p0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel$unPair$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel$unPair$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel$unPair$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel$unPair$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x2

    invoke-static {p0, v1, v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    :cond_0
    return-void
.end method
