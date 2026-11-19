.class public final Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "catalogRepository",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;",
        "requireCachedAppConfigUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V",
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

.field public final c:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p0, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->e:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->c:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iget-object v5, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->c:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    invoke-virtual {p2}, Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;->a()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object p2

    iget-boolean p2, p2, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->Y:Z

    if-nez p2, :cond_4

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;

    invoke-direct {p0}, Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;-><init>()V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_4
    invoke-static {p1}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object v7, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->c:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->d:Ljava/lang/String;

    move-object v8, p2

    check-cast v8, Ljava/util/List;

    iput-object v8, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->e:Ljava/util/List;

    iput v5, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->h:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {p0, v2, v3, v0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, p2

    move-object p2, p0

    move-object p0, v2

    move-object v5, p1

    move-object v2, v7

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-object v5, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->b:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->c:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->d:Ljava/lang/String;

    iput-object v6, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->e:Ljava/util/List;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase$run$1;->h:I

    invoke-interface {v2, p1, p0, p2, v0}, Lcom/vuitton/android/domain/repository/CatalogRepository;->a(Ljava/lang/String;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object p0, v5

    :goto_3
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_b

    :try_start_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;->a:Ljava/util/List;

    if-eqz p1, :cond_a

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_4

    :cond_8
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_7

    move-object v6, p2

    :cond_9
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return-object v6

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_b
    return-object p1
.end method
