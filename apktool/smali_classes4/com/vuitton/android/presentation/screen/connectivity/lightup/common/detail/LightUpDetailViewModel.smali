.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel<",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailView;",
        "Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;",
        "deleteLightUpProductUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;",
        "updateLightUpProductUseCase",
        "Lcom/vuitton/android/core/events/LVEventSender;",
        "eventSender",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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


# static fields
.field public static final synthetic g:I


# instance fields
.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;

.field public final d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;

.field public final e:Lcom/vuitton/android/core/events/LVEventSender;

.field public final f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->e:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    return-void
.end method


# virtual methods
.method public final Cc(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;->f:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method

.method public final Dc(Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel$updateLightUpProduct$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel$updateLightUpProduct$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void
.end method
