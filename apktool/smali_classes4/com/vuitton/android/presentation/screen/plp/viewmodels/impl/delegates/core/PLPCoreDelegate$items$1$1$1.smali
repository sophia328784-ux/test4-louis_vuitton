.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "pageIndex",
        ""
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$items$1$1$1"
    f = "PLPCoreDelegate.kt"
    l = {
        0x4a,
        0x4c,
        0x4f,
        0x52,
        0x55
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:Ljava/lang/Object;

.field public e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

.field public f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

.field public g:Ljava/util/Iterator;

.field public h:Lcom/vuitton/foundation/model/domain/model/product/SkuId;

.field public i:Ljava/util/LinkedHashMap;

.field public j:I

.field public synthetic k:I

.field public final synthetic l:Lkotlin/jvm/functions/Function3;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->l:Lkotlin/jvm/functions/Function3;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->m:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->m:Ljava/lang/Object;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->l:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;-><init>(Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    iput p0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->j:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->n:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v3, :cond_5

    if-eq v3, v9, :cond_4

    if-eq v3, v8, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_f

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v11

    :cond_1
    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_2
    iget v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->c:I

    iget v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->b:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->i:Ljava/util/LinkedHashMap;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->h:Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->g:Ljava/util/Iterator;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v5, v3

    move-object v3, v6

    move-object/from16 v6, p1

    goto/16 :goto_6

    :cond_3
    iget v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->b:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->j:I

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->l:Lkotlin/jvm/functions/Function3;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->m:Ljava/lang/Object;

    invoke-interface {v6, v9, v3, v0}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    goto/16 :goto_e

    :cond_6
    :goto_0
    check-cast v3, Lkotlin/Result;

    iget-object v9, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v3, v9, Lkotlin/Result$Failure;

    if-nez v3, :cond_1a

    move-object v6, v9

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    iput v10, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->b:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->j:I

    invoke-interface {v3, v6, v0}, Lkotlinx/coroutines/flow/MutableSharedFlow;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_7

    goto/16 :goto_e

    :cond_7
    move-object v8, v4

    move v3, v10

    :goto_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v6, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;

    instance-of v15, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    if-eqz v15, :cond_8

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$Products;->b:Ljava/util/List;

    check-cast v14, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v14, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    iget-object v14, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v14}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    goto :goto_3

    :cond_8
    instance-of v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;

    if-eqz v5, :cond_9

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductHighlight;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-static {v5}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_4

    :cond_9
    instance-of v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;

    if-eqz v5, :cond_a

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductSlider;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-static {v5}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_4

    :cond_a
    instance-of v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;

    if-eqz v5, :cond_b

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$ProductFullscreen;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-static {v5}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_4

    :cond_b
    instance-of v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;

    if-eqz v5, :cond_c

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;

    iget-object v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$HalfEdito;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-static {v5}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_4

    :cond_c
    instance-of v5, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpSection$CuratedText;

    if-eqz v5, :cond_e

    sget-object v15, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_d
    :goto_4
    check-cast v15, Ljava/lang/Iterable;

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    const/4 v5, 0x5

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lv40;->g()V

    return-object v11

    :cond_f
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v13, v5

    move-object v14, v6

    move-object v15, v8

    const/4 v5, 0x0

    move v8, v3

    move-object v3, v9

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    iget-object v9, v15, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->j:Ljava/util/LinkedHashMap;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v12, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    iget-object v10, v15, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->h:Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iput-object v14, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iput-object v13, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->g:Ljava/util/Iterator;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->h:Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->i:Ljava/util/LinkedHashMap;

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->b:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->c:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->j:I

    invoke-virtual {v10, v6, v0}, Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_10

    goto/16 :goto_e

    :cond_10
    :goto_6
    invoke-interface {v9, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_11
    iget-object v5, v15, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->b:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    iget-object v6, v15, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->f:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    if-nez v5, :cond_12

    goto :goto_a

    :cond_12
    if-nez v6, :cond_13

    goto :goto_a

    :cond_13
    iget-object v7, v14, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v7

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v9, :cond_14

    iget-object v10, v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->a:Ljava/lang/String;

    if-nez v10, :cond_16

    :cond_14
    iget-object v10, v15, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->g:Lkotlin/jvm/functions/Function0;

    if-eqz v10, :cond_15

    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto :goto_7

    :cond_15
    move-object v10, v11

    :cond_16
    :goto_7
    if-eqz v9, :cond_17

    const/4 v12, 0x6

    invoke-static {v9, v10, v11, v11, v12}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    move-result-object v9

    :goto_8
    const/4 v10, 0x5

    goto :goto_9

    :cond_17
    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-direct {v9, v10, v12, v12}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_8

    :goto_9
    invoke-static {v7, v11, v9, v10}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->a(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;I)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object v7

    iget-object v10, v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_18
    invoke-interface {v10}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/util/Map;

    invoke-static {v12}, Lkotlin/collections/MapsKt;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v12

    invoke-interface {v12, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v9, v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    :goto_a
    if-eqz v6, :cond_1b

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->g:Ljava/util/Iterator;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->h:Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->i:Ljava/util/LinkedHashMap;

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->b:I

    const/4 v12, 0x4

    iput v12, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->j:I

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;->d:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v5, v6, :cond_19

    goto :goto_b

    :cond_19
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_b
    if-ne v5, v2, :cond_1b

    goto :goto_e

    :cond_1a
    move-object v3, v9

    :cond_1b
    :goto_c
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_1e

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->f:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    if-eqz v4, :cond_1e

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->d:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->e:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->f:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->g:Ljava/util/Iterator;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->h:Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->i:Ljava/util/LinkedHashMap;

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->k:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->b:I

    const/4 v10, 0x5

    iput v10, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$1;->j:I

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;->d:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v1, :cond_1c

    goto :goto_d

    :cond_1c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_d
    if-ne v0, v2, :cond_1d

    :goto_e
    return-object v2

    :cond_1d
    move-object v0, v3

    :goto_f
    move-object v3, v0

    :cond_1e
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, v3}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
