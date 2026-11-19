.class final Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.PagingDataPresenter$collectFrom$2$1$2"
    f = "PagingDataPresenter.kt"
    l = {
        0x8d,
        0x9e,
        0xaa,
        0xad,
        0xe1,
        0xe4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/paging/PageEvent;

.field public final synthetic d:Landroidx/paging/PagingDataPresenter;

.field public final synthetic e:Landroidx/paging/PagingData;


# direct methods
.method public constructor <init>(Landroidx/paging/PageEvent;Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iput-object p3, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->e:Landroidx/paging/PagingData;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->e:Landroidx/paging/PagingData;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    invoke-direct {p1, p0, v0, v1, p2}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;-><init>(Landroidx/paging/PageEvent;Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_b

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_9

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_3

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_2

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, p0

    goto/16 :goto_c

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    instance-of v1, p1, Landroidx/paging/PageEvent$StaticList;

    if-eqz v1, :cond_2

    iget-object v5, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    new-instance p1, Landroidx/paging/TransformablePage;

    iget-object v1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    check-cast v1, Landroidx/paging/PageEvent$StaticList;

    iget-object v1, v1, Landroidx/paging/PageEvent$StaticList;->a:Ljava/util/List;

    invoke-direct {p1, v4, v1}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    iget-object v10, p1, Landroidx/paging/PageEvent$StaticList;->b:Landroidx/paging/LoadStates;

    if-nez v10, :cond_1

    iget-object v1, p1, Landroidx/paging/PageEvent$StaticList;->c:Landroidx/paging/LoadStates;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v9, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v9, v3

    :goto_1
    iget-object v11, p1, Landroidx/paging/PageEvent$StaticList;->c:Landroidx/paging/LoadStates;

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->e:Landroidx/paging/PagingData;

    iget-object v12, p1, Landroidx/paging/PagingData;->c:Landroidx/paging/HintReceiver;

    iput v3, p0, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v13, p0

    invoke-static/range {v5 .. v13}, Landroidx/paging/PagingDataPresenter;->a(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, v13

    if-ne p0, v0, :cond_16

    goto/16 :goto_a

    :cond_2
    move-object v9, p0

    instance-of p0, p1, Landroidx/paging/PageEvent$Insert;

    if-eqz p0, :cond_3

    move-object v1, p1

    check-cast v1, Landroidx/paging/PageEvent$Insert;

    iget-object v5, v1, Landroidx/paging/PageEvent$Insert;->a:Landroidx/paging/LoadType;

    sget-object v6, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-ne v5, v6, :cond_3

    move-object v5, v1

    iget-object v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object v2, v5, Landroidx/paging/PageEvent$Insert;->b:Ljava/util/List;

    iget v3, v5, Landroidx/paging/PageEvent$Insert;->c:I

    iget v4, v5, Landroidx/paging/PageEvent$Insert;->d:I

    iget-object v6, v5, Landroidx/paging/PageEvent$Insert;->e:Landroidx/paging/LoadStates;

    iget-object v7, v5, Landroidx/paging/PageEvent$Insert;->f:Landroidx/paging/LoadStates;

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->e:Landroidx/paging/PagingData;

    iget-object v8, p0, Landroidx/paging/PagingData;->c:Landroidx/paging/HintReceiver;

    const/4 p0, 0x2

    iput p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    const/4 v5, 0x1

    invoke-static/range {v1 .. v9}, Landroidx/paging/PagingDataPresenter;->a(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_16

    goto/16 :goto_a

    :cond_3
    if-eqz p0, :cond_12

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    iput p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    invoke-static {v9}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto/16 :goto_a

    :cond_4
    :goto_2
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iget-object v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    invoke-virtual {p1, v1}, Landroidx/paging/PageStore;->g(Landroidx/paging/PageEvent;)Landroidx/paging/PagingDataEvent;

    const/4 p1, 0x4

    iput p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->c()Lkotlin/Unit;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto/16 :goto_a

    :cond_5
    :goto_3
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    iget-object v0, p1, Landroidx/paging/PageEvent$Insert;->e:Landroidx/paging/LoadStates;

    iget-object p1, p1, Landroidx/paging/PageEvent$Insert;->f:Landroidx/paging/LoadStates;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;-><init>(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-virtual {p0, v1}, Landroidx/paging/MutableCombinedLoadStateCollection;->c(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    iget-object p0, p0, Landroidx/paging/MutableCombinedLoadStateCollection;->c:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/CombinedLoadStates;

    if-eqz p0, :cond_6

    iget-object p0, p0, Landroidx/paging/CombinedLoadStates;->d:Landroidx/paging/LoadStates;

    goto :goto_4

    :cond_6
    move-object p0, v2

    :goto_4
    if-eqz p0, :cond_11

    iget-object p1, p0, Landroidx/paging/LoadStates;->b:Landroidx/paging/LoadState;

    iget-boolean p1, p1, Landroidx/paging/LoadState;->a:Z

    iget-object p0, p0, Landroidx/paging/LoadStates;->c:Landroidx/paging/LoadState;

    iget-boolean p0, p0, Landroidx/paging/LoadState;->a:Z

    iget-object v0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    check-cast v0, Landroidx/paging/PageEvent$Insert;

    iget-object v1, v0, Landroidx/paging/PageEvent$Insert;->a:Landroidx/paging/LoadType;

    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne v1, v2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    sget-object p1, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    if-ne v1, p1, :cond_9

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    move p0, v4

    goto :goto_6

    :cond_9
    :goto_5
    move p0, v3

    :goto_6
    iget-object p1, v0, Landroidx/paging/PageEvent$Insert;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/paging/TransformablePage;

    iget-object v0, v0, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    move v3, v4

    :cond_c
    :goto_7
    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    if-nez p0, :cond_d

    iput-boolean v4, p1, Landroidx/paging/PagingDataPresenter;->h:Z

    goto/16 :goto_c

    :cond_d
    iget-boolean p0, p1, Landroidx/paging/PagingDataPresenter;->h:Z

    if-nez p0, :cond_e

    if-eqz v3, :cond_16

    :cond_e
    if-nez v3, :cond_10

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget p0, p0, Landroidx/paging/PagingDataPresenter;->i:I

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object v0, p1, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iget v0, v0, Landroidx/paging/PageStore;->c:I

    if-lt p0, v0, :cond_10

    iget p0, p1, Landroidx/paging/PagingDataPresenter;->i:I

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object v0, p1, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iget v1, v0, Landroidx/paging/PageStore;->c:I

    iget v0, v0, Landroidx/paging/PageStore;->b:I

    add-int/2addr v1, v0

    if-le p0, v1, :cond_f

    goto :goto_8

    :cond_f
    iput-boolean v4, p1, Landroidx/paging/PagingDataPresenter;->h:Z

    goto/16 :goto_c

    :cond_10
    :goto_8
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter;->b:Landroidx/paging/HintReceiver;

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iget p0, p0, Landroidx/paging/PagingDataPresenter;->i:I

    invoke-virtual {v0, p0}, Landroidx/paging/PageStore;->d(I)Landroidx/paging/ViewportHint$Access;

    move-result-object p0

    invoke-interface {p1, p0}, Landroidx/paging/HintReceiver;->a(Landroidx/paging/ViewportHint;)V

    goto/16 :goto_c

    :cond_11
    const-string p0, "PagingDataPresenter.combinedLoadStatesCollection.stateFlow should not hold null CombinedLoadStates after Insert event."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_12
    instance-of p0, p1, Landroidx/paging/PageEvent$Drop;

    if-eqz p0, :cond_15

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x5

    iput p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    invoke-static {v9}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_13

    goto :goto_a

    :cond_13
    :goto_9
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iget-object v1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    invoke-virtual {p1, v1}, Landroidx/paging/PageStore;->g(Landroidx/paging/PageEvent;)Landroidx/paging/PagingDataEvent;

    const/4 p1, 0x6

    iput p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->b:I

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->c()Lkotlin/Unit;

    move-result-object p0

    if-ne p0, v0, :cond_14

    :goto_a
    return-object v0

    :cond_14
    :goto_b
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    iget-object p1, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    check-cast p1, Landroidx/paging/PageEvent$Drop;

    iget-object p1, p1, Landroidx/paging/PageEvent$Drop;->a:Landroidx/paging/LoadType;

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;

    invoke-direct {v1, p1, v0, p0}, Landroidx/paging/MutableCombinedLoadStateCollection$set$2;-><init>(Landroidx/paging/LoadType;Landroidx/paging/LoadState;Landroidx/paging/MutableCombinedLoadStateCollection;)V

    invoke-virtual {p0, v1}, Landroidx/paging/MutableCombinedLoadStateCollection;->c(Lkotlin/jvm/functions/Function1;)V

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iput-boolean v4, p0, Landroidx/paging/PagingDataPresenter;->h:Z

    goto :goto_c

    :cond_15
    instance-of p0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    if-eqz p0, :cond_16

    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    iget-object v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->a:Landroidx/paging/LoadStates;

    iget-object p1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->b:Landroidx/paging/LoadStates;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;

    invoke-direct {v1, p0, v0, p1}, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;-><init>(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-virtual {p0, v1}, Landroidx/paging/MutableCombinedLoadStateCollection;->c(Lkotlin/jvm/functions/Function1;)V

    :cond_16
    :goto_c
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->c:Landroidx/paging/PageEvent;

    instance-of p1, p0, Landroidx/paging/PageEvent$Insert;

    if-nez p1, :cond_17

    instance-of p1, p0, Landroidx/paging/PageEvent$Drop;

    if-nez p1, :cond_17

    instance-of p0, p0, Landroidx/paging/PageEvent$StaticList;

    if-eqz p0, :cond_18

    :cond_17
    iget-object p0, v9, Landroidx/paging/PagingDataPresenter$collectFrom$2$1$2;->d:Landroidx/paging/PagingDataPresenter;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_d

    :cond_18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
