.class final Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;
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
    c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$requestStoreModeCatalog$1"
    f = "StoreModeViewModelImpl.kt"
    l = {
        0xaf,
        0xb0,
        0xb1,
        0xb5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->d:Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->c:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9

    :cond_1
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->b:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v8, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->c:I

    sget-object v4, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;->a:Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    :goto_0
    move-object v4, v3

    goto/16 :goto_c

    :cond_5
    :goto_1
    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput v7, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->c:I

    invoke-virtual {v4, v1, v0}, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto :goto_0

    :cond_6
    :goto_2
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-nez v4, :cond_13

    move-object v4, v1

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;

    new-instance v7, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;->a:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v8

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/catalog/Catalog;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/catalog/Section;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/catalog/Section;->b:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_3

    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v10, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/catalog/Category;

    iget-object v13, v12, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->a:Ljava/lang/String;

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->b:Ljava/lang/String;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;->c:Ljava/util/List;

    if-nez v12, :cond_8

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_8
    check-cast v12, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryGroups;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryGroups;->b:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v15, v9}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v15, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;

    iget-object v5, v15, Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;->a:Ljava/lang/String;

    iget-object v6, v15, Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;->b:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/catalog/Subcategory;->c:Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;

    if-eqz v15, :cond_a

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/catalog/SubcategoryRedirection;->a:Ljava/util/List;

    goto :goto_7

    :cond_a
    const/4 v15, 0x0

    :goto_7
    if-nez v15, :cond_b

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_b
    check-cast v15, Ljava/lang/Iterable;

    move-object/from16 p1, v10

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    invoke-static {v15, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;

    new-instance v11, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;

    move-object/from16 v18, v12

    iget-object v12, v15, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->a:Ljava/lang/String;

    move-object/from16 v19, v3

    iget-object v3, v15, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->c:Ljava/lang/String;

    iget-object v15, v15, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->b:Ljava/lang/String;

    invoke-direct {v11, v12, v3, v15}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL3UiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v18

    move-object/from16 v3, v19

    const/16 v11, 0xa

    goto :goto_8

    :cond_c
    move-object/from16 v19, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;

    invoke-direct {v3, v5, v6, v10}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move-object/from16 v12, v17

    move-object/from16 v3, v19

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/16 v11, 0xa

    goto :goto_6

    :cond_d
    move-object/from16 v19, v3

    move-object/from16 p1, v10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;->c:Ljava/util/List;

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    new-instance v5, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    invoke-direct {v5, v13, v14, v3}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p1

    move-object/from16 v3, v19

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/16 v11, 0xa

    goto/16 :goto_4

    :cond_10
    move-object/from16 v19, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->c:Ljava/util/List;

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    new-instance v4, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    invoke-direct {v4, v8, v3}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;)V

    invoke-direct {v7, v4}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->b:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->c:I

    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v4, v19

    if-ne v3, v4, :cond_14

    goto :goto_c

    :cond_13
    :goto_b
    move-object v4, v3

    :cond_14
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_15

    new-instance v5, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Error;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Error;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->b:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl$requestStoreModeCatalog$1;->c:I

    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_15

    :goto_c
    return-object v4

    :cond_15
    :goto_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
