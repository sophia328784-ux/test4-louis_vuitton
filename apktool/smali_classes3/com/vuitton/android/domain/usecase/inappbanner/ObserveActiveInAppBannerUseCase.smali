.class public final Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/InAppBannerRepository;",
        "inAppBannerRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/InAppBannerRepository;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/repository/InAppBannerRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/InAppBannerRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;->a:Lcom/vuitton/android/domain/repository/InAppBannerRepository;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;
    .locals 3

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase;->a:Lcom/vuitton/android/domain/repository/InAppBannerRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppBannerRepository;->a()Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    new-instance v0, Lcom/vuitton/android/domain/usecase/inappbanner/ObserveActiveInAppBannerUseCase$run$1;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/flow/FlowKt;->v(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    move-result-object p0

    return-object p0
.end method
