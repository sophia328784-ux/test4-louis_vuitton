.class public final Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "repository",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/CatalogRepository;

.field public final b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->d:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_2
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_3
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->c:Ljava/lang/String;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SIZE_GUIDE_PIM_ANDROID:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {p3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object p3

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->b:Ljava/lang/String;

    iput-object p2, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->c:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->f:I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v5, p3, v2, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    if-eqz p3, :cond_7

    if-eqz p2, :cond_7

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->c:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->f:I

    invoke-interface {p0, v6, p2, v0}, Lcom/vuitton/android/domain/repository/CatalogRepository;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    goto :goto_2

    :cond_6
    return-object p0

    :cond_7
    if-nez p3, :cond_9

    if-eqz p1, :cond_9

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->c:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase$run$1;->f:I

    invoke-interface {p0, p1, v6, v0}, Lcom/vuitton/android/domain/repository/CatalogRepository;->c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_2
    return-object v1

    :cond_8
    return-object p0

    :cond_9
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    return-object v6
.end method
