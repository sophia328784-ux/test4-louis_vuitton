.class public final Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/WishlistRepository;",
        "wishlistRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/WishlistRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/WishlistRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/WishlistRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;->a:Lcom/vuitton/android/domain/repository/WishlistRepository;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v5, v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;->a:Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/WishlistRepository;->f()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v4, v0, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase$run$1;->d:I

    invoke-interface {p1, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->g(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Lkotlin/Result;

    if-eqz p1, :cond_a

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_8

    :try_start_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    new-instance p1, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;

    if-eqz p0, :cond_6

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    if-eqz p0, :cond_7

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->d:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object p0, v3

    :goto_5
    invoke-direct {p1, v0, p0}, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_6
    move-object p0, p1

    goto :goto_8

    :goto_7
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    :goto_8
    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_9

    goto :goto_9

    :cond_9
    move-object v3, p0

    :goto_9
    check-cast v3, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;

    if-eqz v3, :cond_a

    goto :goto_a

    :cond_a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;->c:Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;->d:Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistSummary;

    :goto_a
    return-object v3
.end method
