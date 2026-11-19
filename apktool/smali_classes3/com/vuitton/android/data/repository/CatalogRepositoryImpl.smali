.class public final Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/CatalogRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u001eBq\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;",
        "getProductDataSource",
        "Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;",
        "getProductAvailabilitiesATGDataSource",
        "Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;",
        "getProductAvailabilitiesTwistDataSource",
        "Lcom/vuitton/android/data/api/bff/publication/VideoApi;",
        "videoApi",
        "Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;",
        "catalogApi",
        "Lcom/vuitton/android/data/api/bff/catalog/ProductApi;",
        "productApi",
        "Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;",
        "exclusiveApi",
        "Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;",
        "catalogLocalDataSource",
        "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;",
        "wishlistLocalDataSource",
        "Lcom/vuitton/android/data/net/atg/ATGSessionManager;",
        "atgSessionManager",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;",
        "coroutineDispatchers",
        "<init>",
        "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;Lcom/vuitton/android/data/api/bff/publication/VideoApi;Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/net/atg/ATGSessionManager;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V",
        "Companion",
        "data"
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
.field public static final synthetic p:I


# instance fields
.field public final a:Lcom/vuitton/foundation/logger/Logger;

.field public final b:Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;

.field public final d:Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;

.field public final e:Lcom/vuitton/android/data/api/bff/publication/VideoApi;

.field public final f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

.field public final g:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

.field public final h:Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

.field public final i:Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

.field public final j:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

.field public final k:Lcom/vuitton/android/data/net/atg/ATGSessionManager;

.field public final l:Lkotlinx/serialization/json/Json;

.field public final m:Lkotlinx/coroutines/internal/ContextScope;

.field public n:Lkotlinx/coroutines/Deferred;

.field public final o:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;Lcom/vuitton/android/data/api/bff/publication/VideoApi;Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;Lcom/vuitton/android/data/api/bff/catalog/ProductApi;Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;Lcom/vuitton/android/data/net/atg/ATGSessionManager;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesATGDataSource;

    iput-object p4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;

    iput-object p5, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->e:Lcom/vuitton/android/data/api/bff/publication/VideoApi;

    iput-object p6, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    iput-object p7, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->g:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iput-object p8, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->h:Lcom/vuitton/android/data/api/bff/catalog/ExclusiveApi;

    iput-object p9, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->i:Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    iput-object p10, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->j:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    iput-object p11, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->k:Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    iput-object p12, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->l:Lkotlinx/serialization/json/Json;

    invoke-interface {p13}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->b()Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->m:Lkotlinx/coroutines/internal/ContextScope;

    new-instance p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getWishlistItemId$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getWishlistItemId$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;)V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->o:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final o(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getAndCacheCatalog$1;->d:I

    invoke-interface {p1, v4, v0}, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;->getCatalog(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/catalog/CatalogDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/catalog/mapper/CatalogMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/CatalogDto;)Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    move-result-object p1

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->i:Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    :cond_5
    return-object p1

    :cond_6
    throw p1
.end method

.method public static final p(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->n:Lkotlinx/coroutines/Deferred;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-eqz v2, :cond_5

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;->d:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->m:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$2;

    invoke-direct {v2, p0, v5}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$2;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {p1, v5, v2, v4}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->n:Lkotlinx/coroutines/Deferred;

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getOrAwaitCatalogResult$1;->d:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p4, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p0, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_5

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p3, :cond_4

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->d:Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/datasource/pdp/GetProductAvailabilitiesTwistDataSource;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    goto :goto_1

    :cond_4
    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->k:Lcom/vuitton/android/data/net/atg/ATGSessionManager;

    new-instance p3, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;

    invoke-direct {p3, p0, p1, v5}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$productStockDtoResult$1$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductAvailabilities$1;->d:I

    invoke-interface {p2, p3, v0}, Lcom/vuitton/android/data/net/atg/ATGSessionManager;->b(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    :goto_1
    return-object v1

    :cond_5
    :goto_2
    check-cast p4, Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p4}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_4
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_7
    :goto_5
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_8

    :try_start_2
    check-cast p0, Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/product/stock/shared/mapper/SkuAvailabilityMapperKt;->a(Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;)Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :cond_8
    :goto_6
    return-object p0

    :cond_9
    throw p1
.end method

.method public final b(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    move-object/from16 v0, p7

    instance-of v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->h:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v10, :cond_2

    if-ne v2, v9, :cond_1

    iget-object p0, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->d:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    iget-object p1, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->c:Lcom/vuitton/android/data/dto/pdp/ProductDto;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_2
    iget p1, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->g:I

    iget-boolean v2, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->f:Z

    iget-boolean v3, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->e:Z

    iget-object v4, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->c:Lcom/vuitton/android/data/dto/pdp/ProductDto;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_3
    iget-boolean p1, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->f:Z

    iget-boolean v2, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->e:Z

    iget-object v3, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v12, v0

    move v0, p1

    move-object p1, v3

    move-object v3, v12

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->b:Ljava/lang/String;

    iput-boolean p2, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->e:Z

    move/from16 v0, p6

    iput-boolean v0, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->f:Z

    iput v3, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    iget-object v2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;

    move-object v3, p1

    move v4, p2

    move-object/from16 v7, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v8}, Lcom/vuitton/android/data/datasource/pdp/GetProductDataSource;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, v2

    move v2, p2

    :goto_2
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    if-nez v4, :cond_9

    :try_start_2
    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iput-object v11, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->b:Ljava/lang/String;

    iput-object v4, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->c:Lcom/vuitton/android/data/dto/pdp/ProductDto;

    iput-boolean v2, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->e:Z

    iput-boolean v0, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->f:Z

    iput v3, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->g:I

    iput v10, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    invoke-virtual {p0, p1, v8}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->q(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_5

    :cond_6
    move v12, v0

    move-object v0, p1

    move p1, v3

    move v3, v2

    move v2, v12

    :goto_3
    check-cast v0, Ljava/util/List;

    move-object v12, v4

    move v4, p1

    move-object p1, v12

    goto :goto_4

    :cond_7
    move-object p1, v4

    move v4, v3

    move v3, v2

    move v2, v0

    move-object v0, v11

    :goto_4
    iget-object v5, p1, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    iput-object v11, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->b:Ljava/lang/String;

    iput-object p1, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->c:Lcom/vuitton/android/data/dto/pdp/ProductDto;

    move-object v6, v0

    check-cast v6, Ljava/util/List;

    iput-object v6, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->d:Ljava/util/List;

    iput-boolean v3, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->e:Z

    iput-boolean v2, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->f:Z

    iput v4, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->g:I

    iput v9, v8, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProduct$1;->j:I

    invoke-virtual {p0, v5, v8}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->r(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_5
    return-object v1

    :cond_8
    move-object v12, v0

    move-object v0, p0

    move-object p0, v12

    :goto_6
    check-cast v0, Ljava/util/List;

    invoke-static {p1, v0, p0}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ProductDto;Ljava/util/List;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    move-result-object p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_9
    return-object v3
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->g:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    if-eqz p2, :cond_5

    :try_start_3
    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;->d:I

    invoke-interface {p0, p2, v0}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getSizeGuideById(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p3, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/product/sizeguide/mapper/SizeGuideMapperKt;->a(Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;)Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;

    move-result-object p0

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_7

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getSizeGuide$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getSizeGuide-ClitKSM(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    :goto_3
    check-cast p3, Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;

    invoke-static {p3}, Lcom/vuitton/android/data/dto/product/sizeguide/mapper/SizeGuideMapperKt;->a(Lcom/vuitton/android/data/dto/product/sizeguide/SizeGuideDto;)Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;

    move-result-object p0

    :goto_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Either productId or sizeGuideId must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_6

    :cond_8
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_9

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p0
.end method

.method public final d()Lkotlin/Unit;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->i:Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;->a:Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p4, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->h:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->e:I

    iget p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->d:I

    iget p3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->c:I

    iget-object v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p4

    move p4, p1

    move-object p1, v2

    move-object v2, v6

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    const/4 p4, 0x0

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->b:Ljava/lang/String;

    iput p4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->c:I

    iput p4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->d:I

    iput p4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->h:I

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;->getThemes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p2

    move p2, p4

    move p3, p2

    :goto_1
    check-cast v2, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/catalog/thematicplp/mapper/ThematicPlpThemesMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;)Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    move-result-object v2

    move v6, p4

    move p4, p3

    move p3, v6

    goto :goto_2

    :cond_5
    move p2, p4

    move p3, p2

    move-object v2, v5

    :goto_2
    if-nez v2, :cond_7

    iput-object v5, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->b:Ljava/lang/String;

    iput p4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->c:I

    iput p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->d:I

    iput p3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->e:I

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getThematicPlpThemes$1;->h:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;->getThemes(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    :goto_3
    return-object v1

    :cond_6
    :goto_4
    check-cast p4, Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;

    invoke-static {p4}, Lcom/vuitton/android/data/dto/catalog/thematicplp/mapper/ThematicPlpThemesMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/thematicplp/ThematicPlpThemesDto;)Lcom/vuitton/foundation/model/domain/model/catalog/thematicplp/ThematicPlpThemes;

    move-result-object v2

    :cond_7
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v2}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_9

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_6
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_9
    throw p1
.end method

.method public final f(Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 11

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;->b:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;->d:I

    const/4 v10, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v10, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    iput v10, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getExclusivePLP$1;->d:I

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_3

    return-object v9

    :cond_3
    :goto_1
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_3
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_5
    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;->b:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;->d:I

    const/4 v11, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v11, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    iput v11, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPlp$1;->d:I

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_3

    return-object v10

    :cond_3
    :goto_1
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_3
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_5
    throw v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 12

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;->d:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v0, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;->b:Ljava/lang/Object;

    sget-object v10, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;->d:I

    const/4 v11, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v11, :cond_1

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    iput v11, v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPLegacy$1;->d:I

    invoke-static {v0, v2, v1}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_3

    return-object v10

    :cond_3
    :goto_1
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_3
    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_5
    throw v0
.end method

.method public final i(Ljava/util/List;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object p3, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p3, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    new-instance v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$2$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Ljava/util/List;ZLkotlin/coroutines/Continuation;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getPLPBySkus$1;->d:I

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_5

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_3
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p1
.end method

.method public final j(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->f:Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getStoreModeCatalog$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/catalog/CatalogApi;->getCatalog(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/catalog/CatalogDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/catalog/mapper/CatalogMapperKt;->a(Lcom/vuitton/android/data/dto/catalog/CatalogDto;)Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_5
    throw p0
.end method

.method public final k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductListForSkus$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->g:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    invoke-interface {p1, p2, v0}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getProducts(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p2, Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->o:Lkotlin/jvm/functions/Function1;

    invoke-static {p2, p0}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final l(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->g:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getReinsurance$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getReinsurance(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_c

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object p1, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_5

    :try_start_2
    check-cast p1, Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;

    invoke-static {p1}, Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceSectionMapperKt;->a(Lcom/vuitton/android/data/dto/product/reinsurance/ReinsuranceResultDto;)Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceSection;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :cond_5
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "CatalogRepositoryImpl"

    const-string v2, "Failed to get reinsurance"

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {v4, v1, v2, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    instance-of p1, v0, Lretrofit2/HttpException;

    if-eqz p1, :cond_a

    :try_start_3
    check-cast v0, Lretrofit2/HttpException;

    iget-object p1, v0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    :cond_8
    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->l:Lkotlinx/serialization/json/Json;

    if-nez v3, :cond_9

    const-string v3, ""

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;->Companion:Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto$Companion;

    invoke-virtual {p1}, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, p1, v3}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceErrorMapperKt;->a(Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;)Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p1

    goto :goto_6

    :cond_a
    instance-of p0, v0, Ljava/io/IOException;

    if-eqz p0, :cond_b

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NetworkErrorException;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NetworkErrorException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_b
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_7
    return-object p1

    :cond_c
    throw p1
.end method

.method public final m()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$prefetchCatalog$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$prefetchCatalog$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->m:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {v3, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->n:Lkotlinx/coroutines/Deferred;

    return-void
.end method

.method public final n()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 9

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getCatalog$2;

    const-string v6, "getOrAwaitCatalogResult-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;

    const-string v5, "getOrAwaitCatalogResult"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getCatalog$3;

    const-string v7, "getCatalogNavigation-xLWZpok()Lkotlin/Result;"

    const/4 v8, 0x4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->i:Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    const-class v5, Lcom/vuitton/android/data/datasource/catalog/CatalogLocalDataSource;

    const-string v6, "getCatalogNavigation"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final q(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->g:Lcom/vuitton/android/data/api/bff/catalog/ProductApi;

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getEnvironmentInfo$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/catalog/ProductApi;->getAGEC-hd8RJmg(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductAGECMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_4
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, p0

    :goto_5
    return-object v3

    :cond_6
    throw p0
.end method

.method public final r(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->i:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->f:I

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->e:I

    iget v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->d:I

    iget-object v5, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->c:Ljava/util/Iterator;

    iget-object v6, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->b:Ljava/util/Collection;

    check-cast v6, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v5, p1

    move-object v6, p2

    move p1, v2

    move v4, p1

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/pdp/MediaDto;

    iget-object v7, p2, Lcom/vuitton/android/data/dto/pdp/MediaDto;->a:Ljava/lang/String;

    iget-object v8, p2, Lcom/vuitton/android/data/dto/pdp/MediaDto;->c:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/data/dto/pdp/MediaType;->VIDEO:Lcom/vuitton/android/data/dto/pdp/MediaType;

    invoke-virtual {v9}, Lcom/vuitton/android/data/dto/pdp/MediaType;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move-object p2, v6

    check-cast p2, Ljava/util/Collection;

    iput-object p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->b:Ljava/util/Collection;

    iput-object v5, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->c:Ljava/util/Iterator;

    iput v4, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->e:I

    iput p1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->f:I

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getProductMediaList$1;->i:I

    invoke-virtual {p0, v8, v0}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->s(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/product/ProductMedia;

    goto :goto_3

    :cond_5
    sget-object v9, Lcom/vuitton/android/data/dto/pdp/MediaType;->IMAGE:Lcom/vuitton/android/data/dto/pdp/MediaType;

    invoke-virtual {v9}, Lcom/vuitton/android/data/dto/pdp/MediaType;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    const-string v9, "?"

    invoke-static {v8, v9}, Lkotlin/text/StringsKt;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object p2, p2, Lcom/vuitton/android/data/dto/pdp/MediaDto;->b:Ljava/lang/String;

    invoke-direct {v7, v8, p2}, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v7

    :goto_3
    if-eqz p2, :cond_3

    invoke-interface {v6, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Wrong media type"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    return-object v6

    :cond_9
    :goto_4
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public final s(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;-><init>(Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->e:Lcom/vuitton/android/data/api/bff/publication/VideoApi;

    const-string v2, "/"

    invoke-static {p1, v2}, Lkotlin/text/StringsKt;->S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl$getVideo$1;->d:I

    invoke-interface {p2, p1, v4, v4, v0}, Lcom/vuitton/android/data/api/bff/publication/VideoApi;->getVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    check-cast p2, Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;

    iget-object p0, p2, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->b:Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    iget-object p1, p2, Lcom/vuitton/android/data/dto/common/AssetVideoDto;->c:Ljava/lang/String;

    invoke-direct {v4, p0, p1}, Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p1, "CatalogRepositoryImpl"

    const-string p2, "Unable to retrieve the freecaster video"

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CatalogRepositoryImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-interface {p0, p1, p2, v4}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-object v4
.end method
