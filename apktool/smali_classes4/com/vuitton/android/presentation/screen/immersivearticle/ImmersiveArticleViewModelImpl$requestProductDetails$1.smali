.class final Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$requestProductDetails$1"
    f = "ImmersiveArticleViewModelImpl.kt"
    l = {
        0x25c,
        0x272
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

.field public d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:Ljava/util/Iterator;

.field public i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

.field public j:Ljava/util/List;

.field public k:Ljava/util/Iterator;

.field public l:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

.field public q:Ljava/util/List;

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public synthetic y:Ljava/lang/Object;

.field public final synthetic z:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->z:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->z:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;Lcom/vuitton/android/domain/monitoring/MonitorAction;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->y:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->y:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->x:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->w:I

    iget v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->v:I

    iget v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->u:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->t:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->s:I

    iget v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->r:I

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->q:Ljava/util/List;

    check-cast v11, Ljava/util/List;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->p:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->o:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->n:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->m:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->l:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->k:Ljava/util/Iterator;

    const/16 v16, 0x0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->j:Ljava/util/List;

    check-cast v6, Ljava/util/List;

    move/from16 v17, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->h:Ljava/util/Iterator;

    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->g:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    move-object/from16 v20, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->f:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->e:Ljava/util/List;

    check-cast v2, Ljava/util/List;

    move-object/from16 v22, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    move-object v15, v5

    move-object v13, v12

    move-object/from16 v5, v23

    move v12, v7

    move-object v7, v6

    move v6, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p1

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    move-object/from16 v5, v23

    goto/16 :goto_15

    :cond_0
    const/16 v16, 0x0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v16

    :cond_1
    const/16 v16, 0x0

    iget v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->s:I

    iget v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->r:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v7, v3

    move v3, v2

    move-object v2, v6

    move v6, v7

    move-object v7, v4

    const/4 v8, 0x0

    move-object/from16 v4, p1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto/16 :goto_15

    :cond_2
    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->z:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v3, :cond_1a

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v3, :cond_1a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    :cond_3
    :goto_0
    move-object v7, v6

    check-cast v7, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/StateListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    if-eqz v8, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    if-eqz v8, :cond_5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v8, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v7, ","

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->A:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    const-string v8, "sku"

    invoke-interface {v7, v6, v8}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    :try_start_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    sget-object v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v8, v16

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->y:Ljava/lang/Object;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    const/4 v8, 0x0

    iput v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->r:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->s:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->x:I

    iget-object v4, v6, Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;->a:Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-interface {v4, v5, v0}, Lcom/vuitton/android/domain/repository/CatalogRepository;->k(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v4, v1, :cond_9

    move-object v2, v1

    goto/16 :goto_e

    :cond_9
    move-object v5, v2

    move-object v2, v7

    move v6, v8

    move-object v7, v3

    move v3, v6

    :goto_4
    :try_start_3
    check-cast v4, Ljava/util/List;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move v11, v8

    move v12, v11

    move-object v10, v9

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    instance-of v14, v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    if-eqz v14, :cond_12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v13

    check-cast v15, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    if-eqz v15, :cond_11

    check-cast v15, Ljava/lang/Iterable;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 p1, v3

    move-object v3, v2

    move-object v2, v14

    move/from16 v14, p1

    move-object/from16 p1, v4

    move v4, v8

    move v8, v6

    move v6, v4

    :goto_6
    :try_start_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v9

    move-object/from16 v9, v17

    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    move-object/from16 v17, p1

    check-cast v17, Ljava/lang/Iterable;

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v10

    move-object/from16 v10, v19

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    sget-object v21, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v22, v2

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    sget-object v21, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v10, v20

    move-object/from16 v2, v22

    goto :goto_7

    :goto_8
    move-object v2, v3

    goto/16 :goto_15

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_b
    move-object/from16 v22, v2

    move-object/from16 v20, v10

    const/16 v19, 0x0

    :goto_9
    move-object/from16 v2, v19

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    if-eqz v2, :cond_f

    iget-object v10, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->a:Ljava/lang/String;

    if-eqz v10, :cond_c

    sget-object v17, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_a
    move-object/from16 v17, v1

    goto :goto_b

    :cond_c
    const/4 v10, 0x0

    goto :goto_a

    :goto_b
    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    move/from16 v19, v4

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v4, :cond_d

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->b:Ljava/lang/String;

    :goto_c
    move/from16 v21, v6

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    goto :goto_c

    :goto_d
    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    sget-object v23, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v24, v6

    iget-object v6, v9, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a:Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    move-object/from16 v23, v6

    const/4 v6, 0x0

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->y:Ljava/lang/Object;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->d:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    move-object/from16 v6, p1

    check-cast v6, Ljava/util/List;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->e:Ljava/util/List;

    move-object/from16 v6, v18

    check-cast v6, Ljava/util/List;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->f:Ljava/util/List;

    move-object/from16 v6, v20

    check-cast v6, Ljava/util/List;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->g:Ljava/util/List;

    iput-object v7, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->h:Ljava/util/Iterator;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;

    move-object/from16 v6, v22

    check-cast v6, Ljava/util/List;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->j:Ljava/util/List;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->k:Ljava/util/Iterator;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->l:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->m:Ljava/lang/String;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->n:Ljava/lang/String;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->o:Ljava/lang/String;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->p:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    move-object/from16 v6, v22

    check-cast v6, Ljava/util/List;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->q:Ljava/util/List;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->r:I

    iput v14, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->s:I

    iput v11, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->t:I

    iput v12, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->u:I

    move/from16 v6, v21

    iput v6, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->v:I

    move-object/from16 v21, v1

    move/from16 v1, v19

    iput v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->w:I

    move/from16 v19, v1

    const/4 v1, 0x2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl$requestProductDetails$1;->x:I

    move-object/from16 v1, v23

    move-object/from16 v23, v2

    move-object v2, v1

    move-object/from16 v1, v24

    invoke-virtual {v1, v2, v0}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, v17

    if-ne v1, v2, :cond_e

    :goto_e
    return-object v2

    :cond_e
    move-object/from16 v26, v4

    move-object/from16 v24, v10

    move/from16 v17, v19

    move-object/from16 v25, v21

    move-object/from16 v4, v23

    move-object/from16 v19, v7

    move v10, v8

    move v8, v11

    move-object/from16 v21, v18

    move-object/from16 v7, v22

    move-object v11, v7

    move-object/from16 v22, p1

    move-object/from16 v18, v13

    move-object v13, v9

    move v9, v14

    :goto_f
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    iget-boolean v1, v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->p:Z

    new-instance v23, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    const/16 v28, 0x0

    const/16 v30, 0x10

    const/16 v31, 0x0

    move/from16 v29, v1

    invoke-direct/range {v23 .. v31}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v23

    invoke-static {v13, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v7

    move v11, v8

    move v14, v9

    move v8, v10

    move/from16 v4, v17

    move-object/from16 v13, v18

    move-object/from16 v7, v19

    move-object/from16 v9, v21

    :goto_10
    move-object/from16 v10, v20

    goto :goto_11

    :cond_f
    move-object v2, v1

    move/from16 v19, v4

    move-object/from16 v1, v22

    invoke-interface {v1, v9}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v22, p1

    move-object/from16 v9, v18

    move/from16 v4, v19

    goto :goto_10

    :goto_11
    move-object/from16 p1, v2

    move-object v2, v1

    move-object/from16 v1, p1

    move-object/from16 p1, v22

    goto/16 :goto_6

    :cond_10
    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move-object/from16 v4, p1

    move-object/from16 v17, v2

    move-object v2, v3

    move v6, v8

    move v3, v14

    move-object v14, v1

    goto :goto_12

    :catchall_3
    move-exception v0

    goto :goto_15

    :cond_11
    move-object/from16 v17, v1

    :goto_12
    :try_start_5
    move-object v1, v14

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    check-cast v13, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    invoke-static {v13, v14}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_12
    move-object/from16 v17, v1

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_13
    move-object/from16 v1, v17

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_14
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_16

    :goto_14
    move-object v5, v2

    move-object v2, v7

    goto :goto_15

    :catchall_4
    move-exception v0

    goto :goto_14

    :goto_15
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_16
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_17

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v3, :cond_15

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->clear()V

    :cond_15
    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    if-eqz v3, :cond_16

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v3, :cond_16

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->addAll(Ljava/util/Collection;)Z

    :cond_16
    invoke-interface {v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_17

    invoke-interface {v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_17
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleUiModel;->c:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v1, :cond_18

    new-instance v3, Lx20;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lx20;-><init>(I)V

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->a0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    :cond_18
    new-instance v1, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersiveProducts;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$LoadImmersiveProducts;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    invoke-interface {v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v1, :cond_19

    new-instance v2, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/monitoring/immersivearticle/ImmersiveArticleMonitoring$Error$OpenImmersiveArticleFull;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_19
    iget-object v0, v5, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;->I:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
