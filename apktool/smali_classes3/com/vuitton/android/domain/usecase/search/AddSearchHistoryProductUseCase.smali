.class public final Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/SearchHistoryRepository;",
        "searchHistoryRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/domain/repository/SearchHistoryRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;->a:Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object p2

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;->a:Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;->b()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v2, Ljava/util/Collection;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_3
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;

    instance-of v7, v6, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    if-eqz v7, :cond_5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    iget-object v7, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v2, Lc1;

    const/4 v6, 0x5

    invoke-direct {v2, p1, v6}, Lc1;-><init>(Ljava/lang/Object;I)V

    new-instance v6, Lb4;

    const/4 v7, 0x2

    invoke-direct {v6, v2, v7}, Lb4;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v4, v6}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {p1, p2}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b(Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;Ljava/time/LocalDateTime;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    move-result-object p1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/16 v6, 0xf

    if-ne v2, v6, :cond_7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {p1, p2}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b(Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;Ljava/time/LocalDateTime;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    move-result-object p1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {p1, p2}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b(Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;Ljava/time/LocalDateTime;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    move-result-object p1

    invoke-interface {v4, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_2
    iput v3, v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase$run$1;->d:I

    invoke-interface {p0, v4, v0}, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
