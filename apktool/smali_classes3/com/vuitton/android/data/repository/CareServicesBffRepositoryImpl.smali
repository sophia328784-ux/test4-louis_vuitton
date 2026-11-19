.class public final Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/CareServicesBffRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/CareServicesBffRepository;",
        "Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;",
        "careServicesBffRemoteDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    move-result-object v4

    :cond_3
    iput v3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$acceptCareService$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {p0, p1, v4, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->f(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceList$1;->d:I

    iget-object v0, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {v0, v2}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_17

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;

    const-string v3, "\'creationDate\' must be Iso8601: "

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    if-nez v9, :cond_4

    const-string v9, "null from BFF"

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p0, v2

    goto/16 :goto_10

    :cond_4
    :goto_3
    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "inStore"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->InStore:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    goto :goto_4

    :cond_5
    const-string v12, "distant"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->Distant:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    goto :goto_4

    :cond_6
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->InStore:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    :goto_4
    iget-object v12, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "onGoing"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    goto :goto_5

    :cond_7
    const-string v13, "history"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->History:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    goto :goto_5

    :cond_8
    sget-object v12, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->History:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    :goto_5
    iget-object v13, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    invoke-static {v14}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_a

    :try_start_1
    new-instance v15, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v5, v8, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->a:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 p0, v2

    :try_start_3
    iget-object v2, v8, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->b:Ljava/lang/String;

    move-object/from16 v16, v6

    iget-object v6, v8, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v6, :cond_9

    invoke-static {v6}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    move-object/from16 p1, v1

    const/4 v1, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 p1, v1

    :goto_7
    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_9
    const/4 v6, 0x0

    goto :goto_6

    :goto_8
    :try_start_4
    invoke-direct {v15, v5, v2, v6, v1}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p0, v2

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p0, v2

    move-object v1, v5

    goto/16 :goto_10

    :cond_a
    move-object/from16 p1, v1

    move-object/from16 p0, v2

    move-object v1, v5

    move-object/from16 v16, v6

    move-object v15, v1

    :goto_9
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    move-object/from16 v6, v16

    invoke-static {v4}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v16

    if-eqz v16, :cond_11

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_a

    :catchall_4
    move-exception v0

    goto/16 :goto_10

    :cond_b
    move-object/from16 v17, v1

    :goto_a
    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_b

    :cond_c
    move-object/from16 v18, v1

    :goto_b
    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    if-eqz v3, :cond_d

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v3

    move-object/from16 v19, v3

    goto :goto_c

    :cond_d
    move-object/from16 v19, v1

    :goto_c
    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    if-eqz v3, :cond_10

    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    if-eqz v8, :cond_e

    iget-object v4, v8, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    goto :goto_d

    :cond_e
    move-object v4, v1

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v20, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    iget-object v5, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;->a:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;->b:Ljava/lang/String;

    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;->c:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    move-result-object v26

    if-eqz v4, :cond_f

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v3

    move-object/from16 v27, v3

    goto :goto_e

    :cond_f
    const/16 v27, 0x0

    :goto_e
    const/16 v28, 0x0

    move-object/from16 v25, v0

    move-object/from16 v24, v1

    move-object/from16 v22, v5

    move-object/from16 v23, v8

    invoke-direct/range {v20 .. v28}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_f

    :cond_10
    const/16 v20, 0x0

    :goto_f
    const/16 v21, 0x0

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v2

    invoke-direct/range {v6 .. v21}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v6}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_11

    :cond_11
    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_10
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_11
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_12

    goto :goto_12

    :cond_12
    instance-of v0, v1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_15

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_12
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    move-object/from16 v2, p1

    if-eqz v0, :cond_14

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    move-object v1, v2

    const/4 v5, 0x0

    move-object/from16 v2, p0

    goto/16 :goto_2

    :cond_15
    throw v1

    :cond_16
    move-object v2, v1

    return-object v2

    :cond_17
    return-object v0
.end method

.method public final c(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    if-eqz p2, :cond_3

    new-instance v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    iget-object v6, p2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->a:Ljava/lang/String;

    iget-object v7, p2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->c:Ljava/lang/String;

    invoke-direct {v2, v6, v7, p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_1

    :cond_3
    move-object v6, v3

    :goto_1
    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-static {p2}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDtoMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    move-result-object v7

    iget-object v8, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->c:Ljava/lang/String;

    iget-object v9, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->d:Ljava/lang/String;

    iget-object p2, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/mapper/CareServiceCreationMapperKt$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v4, :cond_6

    const/4 v2, 0x2

    if-eq p2, v2, :cond_5

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    sget-object p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;->VIDEO_CALL:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    :goto_2
    move-object v10, p2

    goto :goto_3

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_5
    sget-object p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;->PHONE_CALL:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    goto :goto_2

    :cond_6
    sget-object p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;->EMAIL:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    goto :goto_2

    :goto_3
    iget-object v11, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->f:Ljava/util/List;

    iget-object v12, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->g:Ljava/lang/String;

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;-><init>(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;Ljava/util/List;Ljava/lang/String;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$createCareService$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {p0, v5, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->h(Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$cancelCareService$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {p0, p1, p2, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->e(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p4, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;

    invoke-direct {v0, p0, p4}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p4, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p4, Lkotlin/Result;

    iget-object p0, p4, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    move-result-object p2

    invoke-static {p3}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    move-result-object p3

    iput v3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->d(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final f(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->b:Ljava/lang/String;

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->c:Ljava/lang/String;

    invoke-direct {p3, v2, v4, p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAppointment$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {p0, p1, p3, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->c(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAppointmentDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final g(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p3, Lkotlin/Result;

    iget-object p0, p3, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;)Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    move-result-object v4

    :cond_3
    iput v3, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$updateCareServiceAddress$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    invoke-interface {p0, p1, v4, v0}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->a(Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    return-object p0
.end method

.method public final h(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;

    iget v3, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;->d:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;-><init>(Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/Result;

    iget-object v0, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v6, v2, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl$getCareServiceDetail$1;->d:I

    iget-object v0, v0, Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_1d

    check-cast v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "inStore"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->InStore:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    :goto_2
    move-object v10, v2

    goto :goto_3

    :cond_4
    const-string v3, "distant"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->Distant:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;->InStore:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "onGoing"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->OnGoing:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    :goto_4
    move-object v11, v2

    goto :goto_5

    :cond_6
    const-string v3, "history"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->History:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    goto :goto_4

    :cond_7
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;->History:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    goto :goto_4

    :goto_5
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;

    iget-object v13, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;->a:Ljava/lang/String;

    iget-object v14, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v3, -0x4b4a723d

    if-eq v15, v3, :cond_c

    const v3, 0x346412

    if-eq v15, v3, :cond_a

    const v3, 0x432bbd79

    if-eq v15, v3, :cond_8

    goto :goto_7

    :cond_8
    const-string v3, "current"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_7

    :cond_9
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->CURRENT:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    goto :goto_8

    :cond_a
    const-string v3, "past"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_7

    :cond_b
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->PAST:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    goto :goto_8

    :cond_c
    const-string v3, "future"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    :goto_7
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->FUTURE:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    goto :goto_8

    :cond_d
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;->FUTURE:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;

    :goto_8
    invoke-direct {v6, v13, v14, v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Step;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$StepStatus;)V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xa

    goto :goto_6

    :cond_e
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceBaseMapperKt;->a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    move-result-object v13

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    if-eqz v2, :cond_f

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;-><init>(Ljava/lang/String;)V

    move-object v14, v3

    goto :goto_9

    :cond_f
    move-object v14, v5

    :goto_9
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    if-eqz v2, :cond_11

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->a:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v2, :cond_10

    invoke-static {v2}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v2

    goto :goto_a

    :cond_10
    move-object v2, v5

    :goto_a
    invoke-direct {v3, v4, v6, v2, v5}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v15, v3

    goto :goto_b

    :cond_11
    move-object v15, v5

    :goto_b
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v17

    if-eqz v17, :cond_1c

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    if-eqz v4, :cond_16

    iget-object v6, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v21

    iget-object v1, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    move-object/from16 p1, v2

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->a:Ljava/lang/String;

    if-eqz v2, :cond_12

    move-object/from16 v23, v2

    goto :goto_c

    :cond_12
    const/16 v23, 0x0

    :goto_c
    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->b:Ljava/lang/String;

    move-object/from16 v24, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->c:Ljava/lang/String;

    move-object/from16 v25, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->d:Ljava/lang/String;

    move-object/from16 v26, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->e:Ljava/lang/String;

    move-object/from16 v27, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->f:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->g:Ljava/lang/String;

    move-object/from16 v29, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->h:Ljava/lang/String;

    move-object/from16 v30, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->i:Ljava/lang/String;

    move-object/from16 v31, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->j:Ljava/lang/String;

    move-object/from16 v32, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->k:Ljava/lang/String;

    move-object/from16 v33, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->l:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->m:Ljava/lang/String;

    new-instance v22, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    const/16 v36, 0x0

    move-object/from16 v35, v1

    move-object/from16 v34, v2

    invoke-direct/range {v22 .. v36}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    :cond_13
    const/16 v22, 0x0

    :goto_d
    iget-object v1, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v26, v3

    move-object/from16 v20, v5

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;

    move-object/from16 v18, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    if-eqz v3, :cond_14

    invoke-static {v3}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v3

    goto :goto_f

    :cond_14
    const/4 v3, 0x0

    :goto_f
    invoke-direct {v5, v1, v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    goto :goto_e

    :cond_15
    iget-boolean v1, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    iget-object v3, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    new-instance v18, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    move/from16 v24, v1

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v19, v6

    invoke-direct/range {v18 .. v25}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Ljava/util/List;ZLjava/lang/String;)V

    move-object/from16 v20, v18

    goto :goto_10

    :cond_16
    move-object/from16 v16, v1

    move-object/from16 p1, v2

    move-object/from16 v26, v3

    const/16 v20, 0x0

    :goto_10
    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason;->b:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$CancellationReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_17
    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    if-eqz v2, :cond_1a

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;

    iget-object v5, v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;

    if-eqz v5, :cond_18

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;

    move-object/from16 v21, v1

    iget-object v1, v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ContactInformation;->c:Ljava/lang/String;

    invoke-direct {v6, v1, v5}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_18
    move-object/from16 v21, v1

    const/4 v6, 0x0

    :goto_12
    iget-object v1, v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;->b:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;

    if-eqz v1, :cond_19

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v5

    iget-object v1, v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentDetail;->b:Ljava/lang/String;

    invoke-direct {v2, v5, v1}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;-><init>(Lkotlinx/datetime/Instant;Ljava/lang/String;)V

    goto :goto_13

    :cond_19
    const/4 v2, 0x0

    :goto_13
    invoke-direct {v4, v6, v2}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;-><init>(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ContactInformation;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentDetail;)V

    move-object/from16 v23, v4

    goto :goto_14

    :cond_1a
    move-object/from16 v21, v1

    const/16 v23, 0x0

    :goto_14
    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    if-eqz v0, :cond_1b

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;->a:Ljava/util/List;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;->b:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;->c:Z

    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;->d:Ljava/lang/String;

    invoke-direct {v5, v1, v2, v4, v0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;-><init>(Ljava/util/List;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v24, v5

    goto :goto_15

    :cond_1b
    const/16 v24, 0x0

    :goto_15
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;

    const/16 v25, 0x0

    move-object/from16 v22, v3

    move-object/from16 v18, v16

    move-object/from16 v19, v26

    move-object/from16 v16, p1

    invoke-direct/range {v6 .. v25}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Store;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AppointmentInformation;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$ShippingInformation;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1c
    new-instance v0, Lcom/vuitton/android/data/exception/MappingException;

    const-string v2, "\'creationDate\' must be Iso8601: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/exception/MappingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    return-object v0
.end method
