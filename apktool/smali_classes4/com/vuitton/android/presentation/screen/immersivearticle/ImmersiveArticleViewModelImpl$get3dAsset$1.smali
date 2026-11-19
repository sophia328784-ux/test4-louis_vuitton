.class final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$get3dAsset$1"
    f = "ImmersiveArticleViewModelImpl.kt"
    l = {
        0x155
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public d:I

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public final synthetic g:Lcom/vuitton/android/domain/monitoring/MonitorAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->e:Ljava/lang/String;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->e:Ljava/lang/String;

    if-eqz p1, :cond_15

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->k:Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->g:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->c:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$get3dAsset$1;->d:I

    invoke-virtual {v4, p1, p0}, Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    move-object v0, v5

    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_12

    move-object v1, p1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;->a:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;

    sget-object v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x2

    if-eq v7, v2, :cond_5

    if-eq v7, v8, :cond_4

    const/4 v9, 0x3

    if-ne v7, v9, :cond_3

    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;->ASSET_IOS_3D:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    goto :goto_2

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_4
    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;->ASSET_ANDROID_3D:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;->IMAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    :goto_2
    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;->c:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;

    sget-object v10, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModelMapperKt$WhenMappings;->b:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v10, v5

    if-eq v5, v2, :cond_7

    if-ne v5, v8, :cond_6

    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;->BACKGROUND_3D:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;

    goto :goto_3

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_7
    sget-object v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;->LD_R:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;

    :goto_3
    invoke-direct {v6, v7, v9, v5}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;->ASSET_ANDROID_3D:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    if-ne v6, v7, :cond_9

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;->LD_R:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;

    if-ne v5, v6, :cond_9

    goto :goto_4

    :cond_a
    move-object v2, v3

    :goto_4
    check-cast v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;->IMAGE:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;

    if-ne v6, v7, :cond_b

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;->BACKGROUND_3D:Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;

    if-ne v5, v6, :cond_b

    goto :goto_5

    :cond_c
    move-object v4, v3

    :goto_5
    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_d
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->F:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    if-eqz v2, :cond_e

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;->b:Ljava/lang/String;

    goto :goto_6

    :cond_e
    move-object v7, v3

    :goto_6
    const-string v8, ""

    if-nez v7, :cond_f

    move-object v7, v8

    :cond_f
    if-eqz v4, :cond_10

    iget-object v9, v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetUiModel;->b:Ljava/lang/String;

    goto :goto_7

    :cond_10
    move-object v9, v3

    :goto_7
    if-nez v9, :cond_11

    goto :goto_8

    :cond_11
    move-object v8, v9

    :goto_8
    const/16 v9, 0x78

    invoke-static {v6, v7, v8, v3, v9}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;I)Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Lv3dViewerUiModel;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_12
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "ImmersiveArticleViewModelImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;->MissingModel:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->Q2(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;)V

    new-instance v1, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersive3DModelsError;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersive3DModelsError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_13

    new-instance v1, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;

    invoke-direct {v1, p1}, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_13
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz p1, :cond_14

    invoke-interface {p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_14
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_15
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
