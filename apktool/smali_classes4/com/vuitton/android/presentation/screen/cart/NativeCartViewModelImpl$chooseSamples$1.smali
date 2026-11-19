.class final Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;
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
    c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$chooseSamples$1"
    f = "NativeCartViewModelImpl.kt"
    l = {
        0x3a6,
        0x3ae,
        0x3af,
        0x3b2
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->g:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->K:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->W:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->M:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->f:I

    const/16 v7, 0xa

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v11, :cond_3

    if-eq v6, v10, :cond_2

    if-eq v6, v9, :cond_1

    if-ne v6, v8, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_9

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v13

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->e:I

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->d:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v23, v3

    move v3, v2

    move-object v2, v7

    move-object v7, v6

    move-object/from16 v6, v23

    goto/16 :goto_6

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v6, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v16, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    iget-object v8, v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a:Ljava/lang/String;

    iget-object v9, v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->b:Ljava/lang/String;

    iget-object v10, v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->c:Ljava/lang/String;

    iget-object v12, v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->d:Ljava/lang/String;

    iget-object v13, v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->e:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    sget-object v7, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->SELECTED:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    if-ne v15, v7, :cond_5

    move/from16 v22, v11

    :goto_1
    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    goto :goto_2

    :cond_5
    const/16 v22, 0x0

    goto :goto_1

    :goto_2
    invoke-direct/range {v16 .. v22}, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v7, v16

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v7, 0xa

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v13, 0x0

    goto :goto_0

    :cond_6
    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v7, :cond_7

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    if-nez v7, :cond_8

    :cond_7
    sget-object v7, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    :cond_8
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    if-eqz v2, :cond_9

    iget-boolean v2, v2, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->b:Z

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :goto_3
    iput v11, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->f:I

    invoke-virtual {v6, v7, v14, v0, v2}, Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;->a(Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;Z)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_a

    goto/16 :goto_8

    :cond_a
    :goto_4
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v2, Lkotlin/Result$Failure;

    if-nez v6, :cond_e

    move-object v6, v2

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->V:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_b
    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/util/List;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    const/16 v13, 0x3f

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;->a(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;I)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-interface {v7, v8, v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->C:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->d:Ljava/lang/Object;

    const/4 v8, 0x0

    iput v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->e:I

    const/4 v8, 0x2

    iput v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->f:I

    invoke-virtual {v3, v7, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_d

    goto :goto_8

    :cond_d
    move-object v7, v1

    const/4 v3, 0x0

    :goto_6
    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->b:Ljava/lang/Object;

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->d:Ljava/lang/Object;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->e:I

    const/4 v9, 0x3

    iput v9, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->f:I

    invoke-virtual {v7, v6, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->Dc(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_10

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->b:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->d:Ljava/lang/Object;

    const/4 v8, 0x0

    iput v8, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->e:I

    const/4 v2, 0x4

    iput v2, v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl$chooseSamples$1;->f:I

    invoke-static {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_f

    :goto_8
    return-object v5

    :cond_f
    :goto_9
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    const-string v1, "NativeCartViewModelImpl"

    const-string v2, "Unable to choose sample"

    invoke-interface {v0, v1, v2, v3}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
