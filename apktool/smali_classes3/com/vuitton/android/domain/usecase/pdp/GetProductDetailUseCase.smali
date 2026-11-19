.class public final Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001BA\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;",
        "requireCachedConnectedObjectsConfigUseCase",
        "Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;",
        "eCommerceStatusUseCase",
        "Lcom/vuitton/android/domain/repository/CatalogRepository;",
        "catalogRepository",
        "Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;",
        "trunkSpeakerRepository",
        "Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;",
        "horizonSpeakerRepository",
        "Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;",
        "getSotTokenForTwistUserOrNullUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

.field public final b:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

.field public final c:Lcom/vuitton/android/domain/repository/CatalogRepository;

.field public final d:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

.field public final e:Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;

.field public final f:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

.field public final g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->b:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->c:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object p4, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->d:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    iput-object p5, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->e:Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;

    iput-object p6, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->f:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    iput-object p7, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 14

    move-object/from16 v0, p5

    instance-of v1, v0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;

    iget v2, v1, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    :goto_0
    move-object v9, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;

    invoke-direct {v1, p0, v0}, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object v0, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->k:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    packed-switch v2, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v12

    :pswitch_0
    iget-object p0, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->h:Ljava/util/List;

    check-cast p0, Ljava/util/List;

    iget-object v1, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object v1, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :pswitch_1
    iget v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->j:I

    iget-boolean v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iget-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v13, v3

    move v3, v2

    move-object v2, v6

    move-object v6, v4

    move-object v4, v5

    :goto_2
    move v5, v13

    goto/16 :goto_8

    :pswitch_2
    iget v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->j:I

    iget-boolean v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iget-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    :pswitch_3
    iget-boolean v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_4
    iget-boolean v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iget-object v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    iget-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/domain/repository/CatalogRepository;

    iget-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iget-object v6, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iget-object v7, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v13, v4

    move v4, v2

    move-object v2, v13

    move-object v13, v7

    move-object v7, v3

    move-object v3, v13

    :goto_3
    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    goto/16 :goto_5

    :pswitch_5
    iget-boolean v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iget-object v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    iget-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    check-cast v4, Lcom/vuitton/android/domain/repository/CatalogRepository;

    iget-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iget-object v6, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iget-object v7, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/authentication/SotToken;->a:Ljava/lang/String;

    goto :goto_4

    :cond_1
    move-object v0, v12

    goto :goto_4

    :pswitch_6
    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->b:Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;->a()Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;

    move-result-object v3

    iput-object p1, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    move-object/from16 v2, p3

    iput-object v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    move-object/from16 v4, p4

    iput-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->c:Lcom/vuitton/android/domain/repository/CatalogRepository;

    iput-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    iput-object v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    move/from16 v6, p2

    iput-boolean v6, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iput v10, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    iget-object v7, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->f:Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    invoke-virtual {v7, v9}, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_2

    goto/16 :goto_9

    :cond_2
    move v0, v6

    move-object v6, v2

    move v2, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v0

    move-object v0, v7

    move-object v7, p1

    :goto_4
    check-cast v0, Ljava/lang/String;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->AGEC_LAW:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v7, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    iput-object v6, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iput-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iput-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    iput-object v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    iput-object v0, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    iput-boolean v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    const/4 v3, 0x2

    iput v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    iget-object v3, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {v3, v8, v11, v9}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    goto/16 :goto_9

    :cond_3
    move-object v13, v7

    move-object v7, v0

    move-object v0, v3

    move-object v3, v13

    move-object v13, v4

    move v4, v2

    move-object v2, v13

    goto :goto_3

    :goto_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    iput-boolean v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    const/4 v0, 0x3

    iput v0, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    invoke-interface/range {v2 .. v9}, Lcom/vuitton/android/domain/repository/CatalogRepository;->b(Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    goto/16 :goto_9

    :cond_4
    move v2, v4

    :goto_6
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_e

    :try_start_3
    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->a:Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iput-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    iput-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    iput-boolean v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iput v11, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->j:I

    const/4 v3, 0x4

    iput v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    invoke-virtual {v0, v9}, Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto :goto_9

    :cond_5
    move v3, v2

    move v2, v11

    :goto_7
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;

    iget-object v6, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->d:Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iput-object v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    iput-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    iput-object v0, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    iput-boolean v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iput v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->j:I

    const/4 v7, 0x5

    iput v7, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    invoke-interface {v6, v0}, Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;->d(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_6

    goto :goto_9

    :cond_6
    move-object v13, v6

    move-object v6, v0

    move-object v0, v13

    move v13, v3

    move v3, v2

    move-object v2, v5

    goto/16 :goto_2

    :goto_8
    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;->e:Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->b:Ljava/lang/String;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationId;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->d:Ljava/lang/String;

    iput-object v2, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->e:Ljava/lang/Object;

    iput-object v4, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->f:Ljava/lang/Object;

    iput-object v12, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->g:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/List;

    iput-object v7, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->h:Ljava/util/List;

    iput-boolean v5, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->i:Z

    iput v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->j:I

    const/4 v3, 0x6

    iput v3, v9, Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase$run$1;->m:I

    invoke-interface {p0, v6, v9}, Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;->b(Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    :goto_9
    return-object v1

    :cond_7
    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    move-object v1, v4

    :goto_a
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_9

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    move v0, v11

    goto :goto_b

    :cond_9
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v10

    :goto_b
    check-cast p0, Ljava/lang/Iterable;

    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_c

    move-object v3, p0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    move v10, v11

    goto :goto_c

    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    :goto_c
    invoke-static {v2, v10, v0}, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/Product;ZZ)Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    move-result-object p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_e
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
