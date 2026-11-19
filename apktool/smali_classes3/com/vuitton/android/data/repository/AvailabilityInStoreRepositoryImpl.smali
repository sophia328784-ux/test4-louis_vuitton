.class public final Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;",
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

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;DDDDDDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p14

    instance-of v2, v1, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;-><init>(Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->d:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v0, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl;->a:Lcom/vuitton/android/data/api/bff/catalog/StoreApi;

    iput v5, v2, Lcom/vuitton/android/data/repository/AvailabilityInStoreRepositoryImpl$getProductAvailabilityInStore$1;->d:I

    move-object v4, v3

    move-object v3, v0

    move-object v0, v4

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move-wide/from16 v13, p10

    move-wide/from16 v15, p12

    move-object/from16 v17, v2

    invoke-interface/range {v3 .. v17}, Lcom/vuitton/android/data/api/bff/catalog/StoreApi;->searchStoresForProduct(Ljava/lang/String;DDDDDDLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    check-cast v1, Lcom/vuitton/android/data/dto/storelocator/StoreListDto;

    iget-object v0, v1, Lcom/vuitton/android/data/dto/storelocator/StoreListDto;->a:Ljava/util/List;

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
