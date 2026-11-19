.class public final Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;
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
        "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;",
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
    c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModePLPFiltersDelegate$special$$inlined$combine$1$3"
    f = "StoreModePLPFiltersDelegate.kt"
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

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->e:Ljava/lang/String;

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

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->e:Ljava/lang/String;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aget-object v7, v2, v4

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    aget-object v8, v2, v6

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v2, v2, v8

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v2, v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v2

    move-object v15, v2

    goto :goto_0

    :cond_2
    move-object v15, v5

    :goto_0
    if-eqz v7, :cond_b

    iget-object v2, v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;

    if-eqz v2, :cond_b

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->b:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    instance-of v9, v8, Ljava/util/Collection;

    if-eqz v9, :cond_4

    move-object v9, v8

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    move v8, v4

    goto :goto_2

    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;->d:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;

    instance-of v10, v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;

    if-eqz v10, :cond_5

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Simple;->a:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    instance-of v10, v9, Ljava/util/Collection;

    if-eqz v10, :cond_6

    move-object v10, v9

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;

    iget-boolean v10, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterValue;->e:Z

    if-eqz v10, :cond_7

    move v8, v6

    :goto_2
    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v9, v2, Ljava/util/Collection;

    if-eqz v9, :cond_9

    move-object v9, v2

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    move v2, v4

    goto :goto_3

    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;

    iget-boolean v9, v9, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductBooleanFilter;->d:Z

    if-eqz v9, :cond_a

    move v2, v6

    :goto_3
    if-nez v8, :cond_c

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    if-eqz v12, :cond_d

    :cond_c
    :goto_4
    move v14, v6

    goto :goto_5

    :cond_d
    move v14, v4

    :goto_5
    if-eqz v7, :cond_17

    iget-object v2, v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    if-eqz v2, :cond_17

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;

    if-eqz v8, :cond_f

    iget-object v9, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->b:Ljava/util/List;

    if-eqz v9, :cond_f

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v4, v13

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategory;->c:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;->RANGE:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFiltersCategoryType;

    if-eq v4, v5, :cond_e

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :cond_10
    invoke-static {v10}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_13

    if-eqz v8, :cond_11

    iget-object v4, v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilters;->c:Ljava/util/List;

    goto :goto_7

    :cond_11
    const/4 v4, 0x0

    :goto_7
    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->a:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    goto :goto_9

    :cond_13
    :goto_8
    move v2, v6

    :goto_9
    iget v4, v7, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    if-le v4, v6, :cond_14

    if-nez v2, :cond_15

    :cond_14
    if-eqz v14, :cond_16

    :cond_15
    move v4, v6

    goto :goto_a

    :cond_16
    const/4 v4, 0x0

    :goto_a
    move v13, v4

    goto :goto_b

    :cond_17
    const/4 v13, 0x0

    :goto_b
    new-instance v9, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->e:Ljava/lang/String;

    invoke-direct/range {v9 .. v15}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->d:[Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModePLPFiltersDelegate$special$$inlined$combine$1$3;->b:I

    invoke-interface {v1, v9, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_18

    return-object v3

    :cond_18
    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
