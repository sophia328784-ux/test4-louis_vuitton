.class public abstract Landroidx/paging/PagingDataPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagingDataPresenter$InitialUiReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001:\u0001\tB#\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/paging/PagingDataPresenter;",
        "",
        "T",
        "Lkotlin/coroutines/CoroutineContext;",
        "mainContext",
        "Landroidx/paging/PagingData;",
        "cachedPagingData",
        "<init>",
        "(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V",
        "InitialUiReceiver",
        "paging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lkotlin/coroutines/CoroutineContext;

.field public b:Landroidx/paging/HintReceiver;

.field public c:Landroidx/paging/UiReceiver;

.field public d:Landroidx/paging/PageStore;

.field public final e:Landroidx/paging/MutableCombinedLoadStateCollection;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:Landroidx/paging/SingleRunner;

.field public volatile h:Z

.field public volatile i:I

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/StateFlow;

.field public final l:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Landroidx/paging/PagingDataPresenter;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Landroidx/paging/PagingData<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance p1, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;

    invoke-direct {p1}, Landroidx/paging/PagingDataPresenter$InitialUiReceiver;-><init>()V

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->c:Landroidx/paging/UiReceiver;

    sget-object p1, Landroidx/paging/PageStore;->e:Landroidx/paging/PageStore$Companion;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Landroidx/paging/PagingData;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/PageEvent$Insert;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_1

    new-instance p1, Landroidx/paging/PageStore;

    invoke-direct {p1, v1}, Landroidx/paging/PageStore;-><init>(Landroidx/paging/PageEvent$Insert;)V

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/paging/PageStore;->f:Landroidx/paging/PageStore;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    new-instance p1, Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-direct {p1}, Landroidx/paging/MutableCombinedLoadStateCollection;-><init>()V

    if-eqz p2, :cond_2

    iget-object p2, p2, Landroidx/paging/PagingData;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/paging/PageEvent$Insert;

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroidx/paging/PageEvent$Insert;->e:Landroidx/paging/LoadStates;

    iget-object p2, p2, Landroidx/paging/PageEvent$Insert;->f:Landroidx/paging/LoadStates;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;

    invoke-direct {v2, p1, v1, p2}, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;-><init>(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-virtual {p1, v2}, Landroidx/paging/MutableCombinedLoadStateCollection;->c(Lkotlin/jvm/functions/Function1;)V

    :cond_2
    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Landroidx/paging/PagingDataPresenter;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/paging/SingleRunner;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v0}, Landroidx/paging/SingleRunner;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Landroidx/paging/PagingDataPresenter;->g:Landroidx/paging/SingleRunner;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/PagingDataPresenter;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object p1, p1, Landroidx/paging/MutableCombinedLoadStateCollection;->c:Lkotlinx/coroutines/flow/StateFlow;

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->k:Lkotlinx/coroutines/flow/StateFlow;

    const/16 p1, 0x40

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    invoke-static {v3, p1, v0}, Lkotlinx/coroutines/flow/SharedFlowKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/paging/PagingDataPresenter;->l:Lkotlinx/coroutines/flow/SharedFlowImpl;

    new-instance p1, Landroidx/paging/PagingDataPresenter$1;

    invoke-direct {p1, p0}, Landroidx/paging/PagingDataPresenter$1;-><init>(Landroidx/paging/PagingDataPresenter;)V

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 130
    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    .line 131
    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 132
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/paging/PagingDataPresenter;-><init>(Lkotlin/coroutines/CoroutineContext;Landroidx/paging/PagingData;)V

    return-void
.end method

.method public static final a(Landroidx/paging/PagingDataPresenter;Ljava/util/List;IIZLandroidx/paging/LoadStates;Landroidx/paging/LoadStates;Landroidx/paging/HintReceiver;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p8, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    if-eqz v0, :cond_0

    move-object v0, p8

    check-cast v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    iget v1, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;

    invoke-direct {v0, p0, p8}, Landroidx/paging/PagingDataPresenter$presentNewList$1;-><init>(Landroidx/paging/PagingDataPresenter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p8, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->k:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->m:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p4, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->j:Z

    iget p3, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->i:I

    iget p2, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->h:I

    iget-object p0, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->g:Landroidx/paging/PageStore;

    iget-object p7, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->f:Landroidx/paging/HintReceiver;

    iget-object p6, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->e:Landroidx/paging/LoadStates;

    iget-object p5, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->d:Landroidx/paging/LoadStates;

    iget-object p1, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->c:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->b:Landroidx/paging/PagingDataPresenter;

    invoke-static {p8}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object p8, p0

    move-object p0, v0

    goto :goto_2

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p8}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, "Cannot dispatch LoadStates in PagingDataPresenter without source LoadStates set."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_4
    :goto_1
    const/4 p8, 0x0

    iput-boolean p8, p0, Landroidx/paging/PagingDataPresenter;->h:Z

    new-instance p8, Landroidx/paging/PageStore;

    invoke-direct {p8, p1, p2, p3}, Landroidx/paging/PageStore;-><init>(Ljava/util/List;II)V

    iget-object v2, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p8, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iput-object p7, p0, Landroidx/paging/PagingDataPresenter;->b:Landroidx/paging/HintReceiver;

    new-instance v5, Landroidx/paging/PagingDataEvent$Refresh;

    invoke-direct {v5, p8, v2}, Landroidx/paging/PagingDataEvent$Refresh;-><init>(Landroidx/paging/PlaceholderPaddedList;Landroidx/paging/PlaceholderPaddedList;)V

    iput-object p0, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->b:Landroidx/paging/PagingDataPresenter;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->c:Ljava/util/List;

    iput-object p5, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->d:Landroidx/paging/LoadStates;

    iput-object p6, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->e:Landroidx/paging/LoadStates;

    iput-object p7, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->f:Landroidx/paging/HintReceiver;

    iput-object p8, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->g:Landroidx/paging/PageStore;

    iput p2, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->h:I

    iput p3, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->i:I

    iput-boolean p4, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->j:Z

    iput v3, v0, Landroidx/paging/PagingDataPresenter$presentNewList$1;->m:I

    invoke-virtual {p0}, Landroidx/paging/PagingDataPresenter;->c()Lkotlin/Unit;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/paging/PagingLogger;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Presenting data (\n                            |   first item: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/TransformablePage;

    if-eqz v1, :cond_6

    iget-object v1, v1, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    if-eqz v1, :cond_6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_6
    move-object v1, v4

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n                            |   last item: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/paging/TransformablePage;

    if-eqz p1, :cond_7

    iget-object p1, p1, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   placeholdersBefore: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   placeholdersAfter: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   hintReceiver: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   sourceLoadStates: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                        "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|   mediatorLoadStates: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    const-string p2, "|)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    if-eqz p4, :cond_a

    iget-object p1, p0, Landroidx/paging/PagingDataPresenter;->e:Landroidx/paging/MutableCombinedLoadStateCollection;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;

    invoke-direct {p2, p1, p5, p6}, Landroidx/paging/MutableCombinedLoadStateCollection$set$1;-><init>(Landroidx/paging/MutableCombinedLoadStateCollection;Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-virtual {p1, p2}, Landroidx/paging/MutableCombinedLoadStateCollection;->c(Lkotlin/jvm/functions/Function1;)V

    :cond_a
    invoke-virtual {p8}, Landroidx/paging/PageStore;->getSize()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->b:Landroidx/paging/HintReceiver;

    if-eqz p0, :cond_b

    iget p1, p8, Landroidx/paging/PageStore;->b:I

    new-instance p2, Landroidx/paging/ViewportHint$Initial;

    div-int/lit8 p1, p1, 0x2

    iget-object p3, p8, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/paging/TransformablePage;

    iget-object p3, p3, Landroidx/paging/TransformablePage;->a:[I

    invoke-static {p3}, Lkotlin/collections/ArraysKt;->M([I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p8}, Landroidx/paging/PageStore;->f()I

    move-result p4

    invoke-direct {p2, p1, p1, p3, p4}, Landroidx/paging/ViewportHint$Initial;-><init>(IIII)V

    invoke-interface {p0, p2}, Landroidx/paging/HintReceiver;->a(Landroidx/paging/ViewportHint;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final b(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroidx/paging/PagingDataPresenter$collectFrom$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/paging/PagingDataPresenter$collectFrom$2;-><init>(Landroidx/paging/PagingDataPresenter;Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)V

    sget p1, Landroidx/paging/SingleRunner;->b:I

    const/4 p1, 0x0

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->g:Landroidx/paging/SingleRunner;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/paging/SingleRunner;->a(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public abstract c()Lkotlin/Unit;
.end method

.method public final d()Landroidx/paging/ItemSnapshotList;
    .locals 4

    iget-object p0, p0, Landroidx/paging/PagingDataPresenter;->d:Landroidx/paging/PageStore;

    iget v0, p0, Landroidx/paging/PageStore;->c:I

    iget v1, p0, Landroidx/paging/PageStore;->d:I

    iget-object p0, p0, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/TransformablePage;

    iget-object v3, v3, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/paging/ItemSnapshotList;

    invoke-direct {p0, v0, v1, v2}, Landroidx/paging/ItemSnapshotList;-><init>(IILjava/util/List;)V

    return-object p0
.end method
