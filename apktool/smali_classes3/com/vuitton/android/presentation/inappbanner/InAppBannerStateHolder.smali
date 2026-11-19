.class public final Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;",
        "",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatchers",
        "Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;",
        "observeActiveInAppBannerUseCase",
        "Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;",
        "saveActiveInAppBannerUseCase",
        "Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;",
        "clearActiveInAppBannerUseCase",
        "<init>",
        "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;

.field public final c:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;->a:Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;

    iput-object p4, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;->b:Lcom/vuitton/android/domain/usecase/inappbanner/ClearActiveInAppBannerUseCase;

    invoke-static {}, Lkotlinx/coroutines/SupervisorKt;->b()Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    invoke-interface {p1}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->a()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;->a()Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p2

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    const/4 p4, 0x0

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;->c:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method
