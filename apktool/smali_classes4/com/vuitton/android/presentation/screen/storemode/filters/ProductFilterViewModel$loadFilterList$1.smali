.class final Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$loadFilterList$1"
    f = "ProductFilterViewModel.kt"
    l = {
        0x5c,
        0x64
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->d:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->g:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->d:Z

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->f:Ljava/lang/String;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->c:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->b:I

    const/4 v10, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->f:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->d:Z

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->h:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->e:Ljava/lang/String;

    if-eqz v12, :cond_6

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_6
    const-string v3, ""

    if-eqz v12, :cond_9

    move-object v4, v0

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->c:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    if-nez v4, :cond_7

    move-object v1, v3

    goto :goto_0

    :cond_7
    move-object v1, v4

    :goto_0
    if-nez v11, :cond_8

    goto :goto_1

    :cond_8
    move-object v3, v11

    :goto_1
    iput v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->b:I

    move-object v2, v3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->g:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->h:Ljava/lang/String;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_b

    goto :goto_3

    :cond_9
    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->b:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    if-nez v11, :cond_a

    goto :goto_2

    :cond_a
    move-object v3, v11

    :goto_2
    iget-boolean v5, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->e:Z

    iput v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->b:I

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->g:Ljava/lang/String;

    move-object v1, v3

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$loadFilterList$1;->h:Ljava/lang/String;

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_b

    :goto_3
    return-object v9

    :cond_b
    :goto_4
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_c
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_d
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    iget v4, v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_e
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_f
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    iget-boolean v6, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->c:Z

    if-eqz v6, :cond_10

    goto :goto_5

    :cond_11
    move-object v5, v10

    :goto_5
    check-cast v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    if-eqz v5, :cond_12

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->a:Ljava/lang/String;

    goto :goto_6

    :cond_12
    move-object v4, v10

    :goto_6
    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_13
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v1, v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_14
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->a:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v12, :cond_15

    const-string v2, "search"

    goto :goto_7

    :cond_15
    const-string v2, "category"

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Cannot retrieve "

    const-string v4, " filters: "

    invoke-static {v3, v2, v4, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProductFilterViewModel"

    invoke-interface {v1, v2, v0, v10}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_16
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_17
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
