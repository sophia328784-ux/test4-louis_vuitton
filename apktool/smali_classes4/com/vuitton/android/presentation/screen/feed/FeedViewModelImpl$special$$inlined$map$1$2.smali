.class public final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    if-eqz p2, :cond_f

    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;->a:Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;->a:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p2, p1

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v8, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v8, :cond_4

    check-cast v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    goto :goto_2

    :cond_4
    instance-of v8, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-eqz v8, :cond_5

    check-cast v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    goto :goto_2

    :cond_5
    move-object v7, v3

    :goto_2
    sget-object v8, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->DYNAMIC_YIELD:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-ne v7, v8, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_6

    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v6, :cond_9

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-boolean v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->g:Z

    if-nez v6, :cond_a

    iget-object v5, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_8

    goto :goto_3

    :cond_9
    instance-of v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-eqz v6, :cond_8

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-boolean v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->g:Z

    if-nez v6, :cond_a

    iget-object v5, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->e:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_8

    :cond_a
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    if-eqz v6, :cond_b

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    goto :goto_5

    :cond_b
    instance-of v6, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    if-eqz v6, :cond_c

    check-cast v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$GridSmallUiModel;->c:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    goto :goto_5

    :cond_c
    move-object v5, v3

    :goto_5
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;->MOST_PURCHASED_WITH:Lcom/vuitton/foundation/model/domain/model/common/editorial/AlgorithmType;

    if-ne v5, v6, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    :goto_6
    new-instance p2, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;

    invoke-direct {p2, p1}, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;-><init>(Ljava/util/List;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;

    invoke-direct {p1, p2}, Lcom/vuitton/android/presentation/screen/feed/models/FeedTabState$Success;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/uimodels/FeedUiModel;)V

    :cond_f
    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2$1;->c:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$special$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_10

    return-object v1

    :cond_10
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
