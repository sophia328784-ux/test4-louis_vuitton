.class final Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel$updateFilter$1"
    f = "ProductFilterViewModel.kt"
    l = {
        0x8a,
        0x92
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->g:Z

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->h:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->g:Z

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->h:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->f:Ljava/lang/String;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v6, p0

    sget-object v7, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->c:I

    iget-boolean v8, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->h:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v9, 0x0

    iget-object v10, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->d:Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_12

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v4, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v5, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_0
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v12, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2d

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object v13, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->f:Ljava/lang/String;

    iget-boolean v14, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->g:Z

    const/16 v15, 0xa

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    move/from16 v16, v2

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->a:Ljava/lang/String;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v14, :cond_3

    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->c:Z

    xor-int/lit8 v9, v9, 0x1

    invoke-static {v2, v9}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;Z)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    move-result-object v2

    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    goto :goto_1

    :cond_4
    move/from16 v16, v2

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->e:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    check-cast v0, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 p1, v1

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;

    move-object/from16 v18, v0

    instance-of v0, v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    if-eqz v0, :cond_8

    if-nez v14, :cond_8

    check-cast v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    iget-object v0, v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object/from16 v19, v3

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->d:Ljava/lang/String;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->e:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;Z)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    move-result-object v4

    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v15, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;Ljava/util/ArrayList;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    :goto_4
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v5, v21

    const/16 v15, 0xa

    goto :goto_2

    :cond_9
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_5

    :cond_a
    move-object/from16 p1, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    const/4 v9, 0x0

    :goto_5
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v0, :cond_c

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    if-nez v14, :cond_b

    iget-boolean v4, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;Z)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    move-result-object v3

    :cond_b
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :cond_d
    :goto_7
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v3, :cond_12

    if-nez p1, :cond_e

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_8

    :cond_e
    move-object/from16 v4, p1

    :goto_8
    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v5, :cond_11

    if-nez v9, :cond_f

    sget-object v14, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_9

    :cond_f
    move-object v14, v9

    :goto_9
    if-nez v1, :cond_10

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v17, v1

    :goto_a
    move-object/from16 v18, v2

    move/from16 v1, v16

    const/4 v2, 0x0

    goto :goto_b

    :cond_10
    move-object v15, v1

    move-object/from16 v17, v15

    goto :goto_a

    :goto_b
    invoke-static {v5, v2, v14, v15, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    move-result-object v5

    move-object v2, v5

    goto :goto_c

    :cond_11
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_c
    const/4 v1, 0x4

    invoke-static {v3, v4, v2, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;I)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v2

    goto :goto_d

    :cond_12
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    const/4 v2, 0x0

    :goto_d
    invoke-interface {v11, v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, ""

    if-eqz v8, :cond_18

    move-object v1, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->c:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_13

    move-object v2, v1

    :cond_13
    if-nez v18, :cond_15

    invoke-interface/range {v21 .. v21}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_14

    move-object/from16 v22, v2

    move-object v2, v1

    move-object/from16 v1, v22

    goto :goto_e

    :cond_14
    move-object v1, v2

    move-object v2, v3

    goto :goto_e

    :cond_15
    move-object v1, v2

    move-object/from16 v2, v18

    :goto_e
    invoke-interface/range {v20 .. v20}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    if-nez v13, :cond_16

    invoke-interface/range {v19 .. v19}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    :cond_16
    move-object v3, v13

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    const/4 v4, 0x1

    iput v4, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->c:I

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_17

    goto :goto_10

    :cond_17
    move-object v1, v0

    goto :goto_11

    :cond_18
    move-object v1, v0

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->b:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    if-nez v18, :cond_1a

    invoke-interface/range {v21 .. v21}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_19

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->l:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_19

    goto :goto_f

    :cond_19
    move-object v1, v2

    goto :goto_f

    :cond_1a
    move-object/from16 v1, v18

    :goto_f
    invoke-interface/range {v20 .. v20}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    if-nez v13, :cond_1b

    invoke-interface/range {v19 .. v19}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    :cond_1b
    move-object v2, v13

    iget-boolean v5, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->e:Z

    iput-object v12, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    const/4 v3, 0x2

    iput v3, v6, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel$updateFilter$1;->c:I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v7, :cond_1c

    :goto_10
    return-object v7

    :cond_1c
    :goto_11
    move-object v0, v12

    :goto_12
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, v1, Lkotlin/Result$Failure;

    if-nez v2, :cond_26

    move-object v2, v1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1d
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1e
    invoke-interface {v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    iget v6, v2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v3, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1f
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_20
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->a:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    iget-boolean v7, v7, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->c:Z

    if-eqz v7, :cond_21

    goto :goto_13

    :cond_22
    const/4 v6, 0x0

    :goto_13
    check-cast v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;

    if-eqz v6, :cond_23

    iget-object v4, v6, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductSort;->a:Ljava/lang/String;

    goto :goto_14

    :cond_23
    const/4 v4, 0x0

    :goto_14
    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_24
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v4, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;

    if-eqz v4, :cond_25

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->a:Ljava/lang/String;

    goto :goto_15

    :cond_25
    const/4 v4, 0x0

    :goto_15
    invoke-interface {v3, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    :cond_26
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2b

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->a:Lcom/vuitton/foundation/logger/Logger;

    if-eqz v8, :cond_27

    const-string v3, "search"

    goto :goto_16

    :cond_27
    const-string v3, "category"

    :goto_16
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Cannot update "

    const-string v5, " filters: "

    invoke-static {v4, v3, v5, v1}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "ProductFilterViewModel"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v1, v5}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_28
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_29
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->h:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2a
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-interface {v1, v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_2b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_2c
    const/16 v16, 0x1

    move-object/from16 v6, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    goto/16 :goto_7

    :cond_2d
    move-object/from16 v20, v4

    move-object/from16 v6, p0

    goto/16 :goto_0
.end method
