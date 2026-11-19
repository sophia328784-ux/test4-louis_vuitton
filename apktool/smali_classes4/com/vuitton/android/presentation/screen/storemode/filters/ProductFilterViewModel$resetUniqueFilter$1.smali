.class final Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$resetUniqueFilter$1"
    f = "ProductFilterViewModel.kt"
    l = {
        0xfa,
        0x102
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->e:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->g:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->e:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLjava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v5, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v10, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->e:Z

    iget-boolean v11, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->g:Z

    iget-object v12, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->f:Ljava/lang/String;

    const-string v13, ""

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->c:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v13

    :cond_4
    if-nez v12, :cond_5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_5

    move-object v12, v13

    :cond_5
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    if-eqz v11, :cond_6

    move-object v3, v8

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_0
    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->c:I

    const/4 v4, 0x0

    move-object v6, p0

    move-object v2, v12

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->b:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    if-nez v12, :cond_9

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_9

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_9

    move-object v12, v13

    :cond_9
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-eqz v11, :cond_a

    move-object v2, v8

    goto :goto_1

    :cond_a
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    iget-boolean v5, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->e:Z

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetUniqueFilter$1;->c:I

    const/4 v3, 0x0

    move-object v6, p0

    move-object v1, v12

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_b

    :goto_2
    return-object v7

    :cond_b
    :goto_3
    move-object v0, v10

    :goto_4
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_15

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_c
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_d
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    iget v6, v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_e
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_f
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    iget-boolean v7, v7, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->c:Z

    if-eqz v7, :cond_10

    goto :goto_5

    :cond_11
    move-object v6, v8

    :goto_5
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    if-eqz v6, :cond_12

    iget-object v4, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->a:Ljava/lang/String;

    goto :goto_6

    :cond_12
    move-object v4, v8

    :goto_6
    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_13
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->a:Ljava/lang/String;

    goto :goto_7

    :cond_14
    move-object v4, v8

    :goto_7
    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_15
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Cannot reset filter : "

    const-string v4, "ProductFilterViewModel"

    invoke-static {v3, v1, v2, v4, v8}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_16
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_17
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_18
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
