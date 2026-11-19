.class final Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$resetAllFilters$1"
    f = "ProductFilterViewModel.kt"
    l = {
        0xcf,
        0xd7
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->e:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->c:I

    const/4 v8, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-boolean v9, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->e:Z

    const-string v10, ""

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v9, :cond_6

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->c:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_4

    move-object v1, v10

    :cond_4
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    iput-object v12, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->c:I

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_1

    :cond_6
    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->b:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_7

    move-object v2, v10

    :cond_7
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-boolean v5, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->e:Z

    iput-object v12, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$resetAllFilters$1;->c:I

    move-object v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_8

    :goto_0
    return-object v7

    :cond_8
    :goto_1
    move-object v0, v12

    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_10

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_9
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_a
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    if-eqz v9, :cond_b

    :goto_3
    move-object v5, v10

    goto :goto_4

    :cond_b
    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_c

    goto :goto_3

    :cond_c
    :goto_4
    invoke-interface {v4, v3, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_d
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_e
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    iget v5, v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v3, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_f
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_10
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->a:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v9, :cond_11

    const-string v3, "search"

    goto :goto_5

    :cond_11
    const-string v3, "category"

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Cannot reset all "

    const-string v5, " filters: "

    invoke-static {v4, v3, v5, v1}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProductFilterViewModel"

    invoke-interface {v2, v3, v1, v8}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_12
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_13
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_14
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
