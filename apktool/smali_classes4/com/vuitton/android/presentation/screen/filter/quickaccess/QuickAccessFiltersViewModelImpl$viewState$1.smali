.class final Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;",
        "Ljava/lang/Boolean;",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;",
        "filtersOptions",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;",
        "isBottomBarVisible",
        "",
        "dropDownType",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;",
        "buttonState",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;",
        "isActionable"
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
    c = "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$viewState$1"
    f = "QuickAccessFiltersViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public synthetic c:Z

.field public synthetic d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

.field public synthetic e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

.field public synthetic f:Z

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->b:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;

    iget-boolean v4, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->c:Z

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->f:Z

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;->a:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v8, :cond_1

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->b:Ljava/util/List;

    if-eqz v8, :cond_1

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;

    sget-object v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;->RANGE:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryTypeUiModel;

    if-eq v11, v12, :cond_0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v9, v6

    :cond_2
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->f:Z

    sget-object v8, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->OpenActiveFiltersAnimation:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    if-ne v3, v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v5, :cond_f

    iget-object v12, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v12, :cond_8

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->b:Ljava/util/List;

    if-eqz v13, :cond_8

    check-cast v13, Ljava/lang/Iterable;

    instance-of v14, v13, Ljava/util/Collection;

    if-eqz v14, :cond_4

    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel;

    instance-of v15, v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    if-eqz v15, :cond_5

    check-cast v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterDataTypeUiModel$Simple;->a:Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    instance-of v15, v14, Ljava/util/Collection;

    if-eqz v15, :cond_6

    move-object v15, v14

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-boolean v15, v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->e:Z

    if-eqz v15, :cond_7

    const/4 v13, 0x1

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v13, 0x0

    :goto_4
    if-eqz v12, :cond_b

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    if-eqz v12, :cond_b

    check-cast v12, Ljava/lang/Iterable;

    instance-of v14, v12, Ljava/util/Collection;

    if-eqz v14, :cond_9

    move-object v14, v12

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_5

    :cond_9
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-boolean v14, v14, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    if-eqz v14, :cond_a

    const/4 v12, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 v12, 0x0

    :goto_6
    iget-object v14, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    instance-of v15, v14, Ljava/util/Collection;

    if-eqz v15, :cond_d

    move-object v15, v14

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    :cond_d
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-boolean v15, v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->c:Z

    if-eqz v15, :cond_e

    const/4 v14, 0x1

    :goto_7
    if-nez v13, :cond_10

    if-nez v12, :cond_10

    if-eqz v14, :cond_f

    goto :goto_8

    :cond_f
    move-object v12, v6

    const/4 v6, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    move-object v12, v6

    const/4 v6, 0x1

    :goto_9
    if-eqz v5, :cond_11

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v13, :cond_11

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->a:Ljava/lang/String;

    goto :goto_a

    :cond_11
    move-object v13, v12

    :goto_a
    if-eqz v5, :cond_14

    iget-object v14, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    if-eqz v14, :cond_14

    check-cast v14, Ljava/lang/Iterable;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object v10, v15

    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->c:Z

    if-eqz v10, :cond_12

    goto :goto_b

    :cond_13
    move-object v15, v12

    :goto_b
    check-cast v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    if-eqz v15, :cond_14

    iget-object v10, v15, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->a:Ljava/lang/String;

    goto :goto_c

    :cond_14
    move-object v10, v12

    :goto_c
    if-nez v9, :cond_15

    sget-object v14, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_d

    :cond_15
    move-object v14, v9

    :goto_d
    if-eqz v9, :cond_19

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_17

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;->b:Ljava/lang/String;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    goto :goto_f

    :cond_16
    const/4 v12, 0x0

    goto :goto_e

    :cond_17
    const/16 v16, 0x0

    :goto_f
    check-cast v16, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    if-nez v16, :cond_18

    goto :goto_11

    :cond_18
    :goto_10
    move-object/from16 v12, v16

    goto :goto_12

    :cond_19
    :goto_11
    if-eqz v9, :cond_1a

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    goto :goto_10

    :cond_1a
    const/4 v12, 0x0

    :goto_12
    if-eqz v5, :cond_1b

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v11, :cond_1b

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    goto :goto_13

    :cond_1b
    const/4 v11, 0x0

    :goto_13
    if-nez v11, :cond_1c

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1c
    if-eqz v5, :cond_1d

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    goto :goto_14

    :cond_1d
    const/4 v15, 0x0

    :goto_14
    if-nez v15, :cond_1e

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1e
    move/from16 v16, v0

    if-eqz v5, :cond_1f

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->b:Ljava/util/List;

    if-eqz v0, :cond_1f

    check-cast v0, Ljava/lang/Iterable;

    move/from16 v18, v2

    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    invoke-direct {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    new-instance v0, Lyn0;

    move-object/from16 v19, v3

    const/16 v3, 0x15

    invoke-direct {v0, v3}, Lyn0;-><init>(I)V

    invoke-static {v2, v0}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$getActiveFiltersSimpleValueList$$inlined$filterIsInstance$1;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$getActiveFiltersSimpleValueList$$inlined$filterIsInstance$1;

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->f(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    new-instance v2, Lyn0;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lyn0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->k(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FlatteningSequence;

    move-result-object v0

    new-instance v2, Lyn0;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Lyn0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/sequences/SequencesKt;->f(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->x(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    goto :goto_15

    :cond_1f
    move/from16 v18, v2

    move-object/from16 v19, v3

    const/4 v0, 0x0

    :goto_15
    if-nez v0, :cond_20

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_20
    if-eqz v5, :cond_23

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v2, :cond_23

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    if-eqz v2, :cond_23

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_22

    move-object/from16 v20, v0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v2

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    if-eqz v2, :cond_21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object/from16 v0, v20

    move-object/from16 v2, v21

    goto :goto_16

    :cond_22
    move-object/from16 v20, v0

    goto :goto_17

    :cond_23
    move-object/from16 v20, v0

    const/4 v3, 0x0

    :goto_17
    if-nez v3, :cond_24

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_24
    if-eqz v5, :cond_27

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    if-eqz v0, :cond_27

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_26

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v3

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->c:Z

    if-eqz v3, :cond_25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    move-object/from16 v0, v21

    move-object/from16 v3, v22

    goto :goto_18

    :cond_26
    move-object/from16 v22, v3

    goto :goto_19

    :cond_27
    move-object/from16 v22, v3

    const/4 v2, 0x0

    :goto_19
    if-nez v2, :cond_28

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_28
    if-eqz v9, :cond_29

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_29
    if-eqz v5, :cond_2a

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    goto :goto_1a

    :cond_2a
    const/4 v0, 0x0

    :goto_1a
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d

    :cond_2b
    if-eqz v5, :cond_2c

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    goto :goto_1b

    :cond_2c
    const/4 v0, 0x0

    :goto_1b
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object/from16 v3, v19

    const/16 v19, 0x1

    goto :goto_1c

    :cond_2d
    move-object/from16 v3, v19

    const/16 v19, 0x0

    :goto_1c
    if-eqz v9, :cond_2e

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2e
    if-eqz v5, :cond_2f

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a:Ljava/util/List;

    goto :goto_1d

    :cond_2f
    const/4 v0, 0x0

    :goto_1d
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    if-eqz v5, :cond_31

    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v0, :cond_31

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    goto :goto_1e

    :cond_31
    const/4 v0, 0x0

    :goto_1e
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_1f

    :cond_32
    const/4 v0, 0x0

    :goto_1f
    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;->c:Z

    move-object/from16 v17, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    move/from16 v21, v1

    move-object v9, v13

    move/from16 v5, v16

    move-object/from16 v16, v22

    move-object v13, v11

    move-object v11, v14

    move-object v14, v15

    move-object/from16 v15, v20

    move/from16 v20, v0

    invoke-direct/range {v2 .. v21}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZZZ)V

    return-object v2
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersOptionsState;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    check-cast p4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->g:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    invoke-direct {v0, p0, p6}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->b:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->c:Z

    iput-object p3, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->d:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;

    iput-object p4, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->e:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    iput-boolean p5, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->f:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$viewState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
