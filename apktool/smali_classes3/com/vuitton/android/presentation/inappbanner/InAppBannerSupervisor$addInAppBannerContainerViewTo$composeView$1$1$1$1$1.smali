.class final synthetic Lcom/vuitton/android/presentation/inappbanner/InAppBannerSupervisor$addInAppBannerContainerViewTo$composeView$1$1$1$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/inappbanner/InAppBannerStateHolder;->a:Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->c:Ljava/time/Instant;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->d:Ljava/time/Instant;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;->f:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;ZLkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/inappbanner/SaveActiveInAppBannerUseCase;->a:Lcom/vuitton/android/domain/repository/InAppBannerRepository;

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/repository/InAppBannerRepository;->b(Lcom/vuitton/foundation/model/domain/model/inappbanner/InAppBanner;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
