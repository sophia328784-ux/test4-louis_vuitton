.class public final Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;",
        "repository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;->a:Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;

    iget v4, v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;->d:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;

    invoke-direct {v3, v0, v2}, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v2, v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;->d:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v2, Lkotlin/Result;

    iget-object v0, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object v0

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/availability/GetProductAvailabilityInStoreParam;->b:Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;

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

    iput v6, v3, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase$run$1;->d:I

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;->a:Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    move-object/from16 v18, v3

    move-wide/from16 v6, v16

    move-wide/from16 v16, v1

    invoke-interface/range {v4 .. v18}, Lcom/vuitton/android/domain/repository/AvailabilityInStoreRepository;->a(Ljava/lang/String;DDDDDDLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    return-object v1
.end method
