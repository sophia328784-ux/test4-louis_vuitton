.class public final Lcom/vuitton/android/data/repository/StoreRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/StoreRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/StoreRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/StoreRepository;",
        "Lcom/vuitton/android/data/api/bff/catalog/StoreApi;",
        "storeApi",
        "<init>",
        "(Lcom/vuitton/android/data/api/bff/catalog/StoreApi;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/data/api/bff/catalog/StoreApi;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/bff/catalog/StoreApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;-><init>(Lcom/vuitton/android/data/repository/StoreRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;->d:I

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

    iget-object p0, p0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    const-string v5, ","

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    iput v3, v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getStoreListByCodes$1;->d:I

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;->getStoreListByCodes(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 p1, 0xa

    invoke-static {p2, p1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/data/dto/storelocator/StoreDto;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/storelocator/mapper/StoreMapperKt;->a(Lcom/vuitton/android/data/dto/storelocator/StoreDto;)Lcom/vuitton/foundation/model/domain/model/storelocator/Store;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
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

    return-object p0

    :cond_6
    throw p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;

    iget v4, v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;->d:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;-><init>(Lcom/vuitton/android/data/repository/StoreRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;->b:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;->d:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/data/repository/StoreRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    iget-wide v7, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->b:D

    move-wide v10, v7

    iget-wide v8, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->c:D

    move-wide v12, v10

    iget-wide v10, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->d:D

    move-wide v14, v12

    iget-wide v12, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->e:D

    move-wide/from16 v16, v14

    iget-wide v14, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->f:D

    iget-wide v1, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->g:D

    iput v6, v3, Lcom/vuitton/android/data/repository/StoreRepositoryImpl$getLocatedStoreList$1;->d:I

    const/4 v5, 0x0

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    move-object/from16 v18, v3

    move-wide/from16 v6, v16

    move-wide/from16 v16, v1

    invoke-interface/range {v4 .. v18}, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;->searchStoresForAppointment(Ljava/lang/String;DDDDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast v2, Lcom/vuitton/android/data/dto/storelocator/StoreListDto;

    iget-object v0, v2, Lcom/vuitton/android/data/dto/storelocator/StoreListDto;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/storelocator/StoreDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/storelocator/mapper/StoreMapperKt;->a(Lcom/vuitton/android/data/dto/storelocator/StoreDto;)Lcom/vuitton/foundation/model/domain/model/storelocator/Store;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_4
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_6
    throw v1
.end method
