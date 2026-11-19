.class public final Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/WishlistRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/WishlistRepository;",
        "Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;",
        "legacyWishlistAtgDataSource",
        "Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;",
        "wishlistRemoteDataSource",
        "Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;",
        "wishlistLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic d:I


# instance fields
.field public final a:Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;

.field public final b:Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;

.field public final c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;

    iput-object p3, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;-><init>(Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$refreshWishlist$1;->d:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/vuitton/foundation/util/ResultExtKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;-><init>(Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_9

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->b:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->e:I

    invoke-virtual {p0}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->f()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object p2

    if-ne p2, v1, :cond_5

    goto/16 :goto_8

    :cond_5
    :goto_1
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->e:I

    invoke-interface {p2, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_8

    :cond_6
    :goto_2
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_b

    :try_start_0
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    if-eqz p2, :cond_9

    iget-object p2, p2, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    if-eqz p2, :cond_9

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->b:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_6

    :cond_8
    move-object v2, v6

    :goto_3
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    if-eqz v2, :cond_9

    iget-object p2, v2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->a:Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object p2, v6

    :goto_4
    if-eqz p2, :cond_a

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;

    invoke-direct {v2, p2}, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    move-object v2, v6

    :goto_5
    move-object p2, v2

    goto :goto_7

    :goto_6
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v2, Lkotlin/Result$Failure;

    invoke-direct {v2, p2}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    :goto_7
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;

    if-eqz p2, :cond_c

    iget-object v6, p2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;->a:Ljava/lang/String;

    :cond_c
    iput-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$deleteProductFromWishlist$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;

    invoke-virtual {p2, v6, v0}, Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;->b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_d

    :goto_8
    return-object v1

    :cond_d
    :goto_9
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_e

    :try_start_1
    check-cast p2, Lkotlin/Unit;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;->c(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p2, p0

    goto :goto_a

    :catchall_1
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p2, p1

    :cond_e
    :goto_a
    return-object p2
.end method

.method public final c(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;-><init>(Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p1, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->b:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {p2, p1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->b:Ljava/lang/String;

    iput v4, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->e:I

    invoke-virtual {p0, p2, v0}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->d(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    :try_start_1
    check-cast p2, Lkotlin/Unit;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->b:Ljava/lang/String;

    iput v3, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductToWishlist$1;->e:I

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_3
    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p2, p1

    :goto_4
    move-object p1, p0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_5
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p2, Lkotlin/Result$Failure;

    invoke-direct {p2, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    :goto_6
    instance-of p0, p2, Lkotlin/Result$Failure;

    if-nez p0, :cond_7

    move-object p0, p2

    check-cast p0, Lkotlin/Unit;

    new-instance p0, Lcom/batch/android/BatchEventAttributes;

    invoke-direct {p0}, Lcom/batch/android/BatchEventAttributes;-><init>()V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, "sku"

    invoke-virtual {p0, v0, p1}, Lcom/batch/android/BatchEventAttributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/batch/android/BatchEventAttributes;

    const-string p1, "added_to_wishlist"

    invoke-static {p1, p0}, Lcom/batch/android/Batch$Profile;->trackEvent(Ljava/lang/String;Lcom/batch/android/BatchEventAttributes;)V

    :cond_7
    return-object p2
.end method

.method public final d(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;-><init>(Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p0, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$addProductListToWishlist$1;->d:I

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;

    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;->a(Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0
.end method

.method public final e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;

    check-cast p7, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    move-object v0, p6

    move-object p6, p5

    move-object p5, v0

    invoke-virtual/range {p0 .. p7}, Lcom/vuitton/android/data/datasource/wishlist/LegacyWishlistAtgDataSource;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;
    .locals 9

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    new-instance v1, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getWishlist$2;

    const-string v6, "getAndCacheRemoteWishlist-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;

    const-string v5, "getAndCacheRemoteWishlist"

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getWishlist$3;

    const-string v7, "getWishlistItemList-d1pmJ48()Ljava/lang/Object;"

    const/4 v8, 0x4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    const-class v5, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    const-string v6, "getWishlistItemList"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-virtual {p0}, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;-><init>(Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v4, v0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl$getAndCacheRemoteWishlist$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;

    invoke-virtual {p1, v0}, Lcom/vuitton/android/data/datasource/wishlist/WishlistRemoteDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    move-object v3, p1

    :cond_4
    instance-of p1, v3, Lkotlin/Result$Failure;

    if-nez p1, :cond_7

    move-object p1, v3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/WishlistRepositoryImpl;->c:Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/vuitton/android/data/datasource/wishlist/WishlistLocalDataSource;->a:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_6

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    return-object v3

    :cond_6
    throw p0

    :cond_7
    return-object v3
.end method
