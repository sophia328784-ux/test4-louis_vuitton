.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;",
        ">;[",
        "Ljava/lang/Object;",
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
        "\u0000\u0016\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000\"\u0006\u0008\u0001\u0010\u0001\u0018\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "",
        "it",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/Array;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$special$$inlined$combine$1$3"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic d:[Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v9, v7

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;

    aget-object v7, v2, v6

    move-object v10, v7

    check-cast v10, Ljava/util/List;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    move-object v11, v7

    check-cast v11, Ljava/util/List;

    const/4 v7, 0x3

    aget-object v7, v2, v7

    move-object v12, v7

    check-cast v12, Ljava/util/List;

    const/4 v7, 0x4

    aget-object v7, v2, v7

    move-object/from16 v17, v7

    check-cast v17, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v7, 0x5

    aget-object v7, v2, v7

    move-object/from16 v18, v7

    check-cast v18, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/4 v7, 0x6

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v13, v7

    check-cast v13, Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;

    const/4 v7, 0x7

    aget-object v7, v2, v7

    move-object v14, v7

    check-cast v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;

    const/16 v7, 0x8

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    const/16 v7, 0x9

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    const/16 v7, 0xa

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const/16 v7, 0xb

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    const/16 v7, 0xc

    aget-object v7, v2, v7

    move-object/from16 v21, v7

    check-cast v21, Lcom/perfectcorp/perfectlib/SkuInfo;

    const/16 v7, 0xd

    aget-object v7, v2, v7

    move-object/from16 v22, v7

    check-cast v22, Lcom/perfectcorp/perfectlib/LookInfo;

    const/16 v7, 0xe

    aget-object v7, v2, v7

    move-object/from16 v23, v7

    check-cast v23, Lcom/perfectcorp/perfectlib/SkuInfo;

    const/16 v7, 0xf

    aget-object v7, v2, v7

    move-object/from16 v24, v7

    check-cast v24, Lcom/perfectcorp/perfectlib/SkuInfo;

    const/16 v7, 0x10

    aget-object v7, v2, v7

    move-object/from16 v25, v7

    check-cast v25, Lcom/perfectcorp/perfectlib/LookInfo;

    const/16 v7, 0x11

    aget-object v7, v2, v7

    move-object/from16 v26, v7

    check-cast v26, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    const/16 v7, 0x12

    aget-object v7, v2, v7

    move-object/from16 v27, v7

    check-cast v27, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    const/16 v7, 0x13

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v30, v7

    check-cast v30, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    const/16 v7, 0x14

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    const/16 v7, 0x15

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v32

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->e:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v7, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->z:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->J:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->B:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-boolean v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    if-nez v4, :cond_3

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_3

    move/from16 v33, v6

    goto :goto_1

    :cond_3
    const/16 v33, 0x0

    :goto_1
    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->y:Z

    move-object/from16 v29, v8

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    const/high16 v36, 0x2000000

    const/16 v37, 0x0

    const/16 v34, 0x0

    move/from16 v35, v2

    move-object/from16 v28, v7

    invoke-direct/range {v8 .. v37}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/PdpAppConfigValues;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyPictureUiModel;ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;ZZLcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/LookInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/SkuInfo;Lcom/perfectcorp/perfectlib/LookInfo;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$special$$inlined$combine$1$3;->b:I

    invoke-interface {v1, v8, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
