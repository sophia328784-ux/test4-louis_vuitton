.class public final Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;",
        "",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "Lcom/vuitton/android/domain/repository/WishlistRepository;",
        "wishlistRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

.field public final c:Lcom/vuitton/android/domain/repository/WishlistRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->c:Lcom/vuitton/android/domain/repository/WishlistRepository;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p5, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->h:I

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;

    invoke-direct {v0, p0, p5}, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    goto :goto_0

    :goto_1
    iget-object p5, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->f:Ljava/lang/Object;

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_2
    iget-object p1, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->e:Ljava/lang/Object;

    move-object p4, p1

    check-cast p4, Ljava/util/List;

    iget-object p3, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->d:Ljava/lang/String;

    iget-object p2, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->c:Ljava/lang/String;

    iget-object p1, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->b:Ljava/lang/String;

    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p5, Lkotlin/Result;

    iget-object p5, p5, Lkotlin/Result;->b:Ljava/lang/Object;

    :cond_3
    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    goto :goto_2

    :cond_4
    invoke-static {p5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->b:Ljava/lang/String;

    iput-object p2, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->c:Ljava/lang/String;

    iput-object p3, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->d:Ljava/lang/String;

    iput-object p4, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->e:Ljava/lang/Object;

    iput v3, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->h:I

    iget-object p5, p0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-interface {p5, v8}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->e(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_3

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p5, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    :try_start_1
    move-object v7, p5

    check-cast v7, Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->c:Lcom/vuitton/android/domain/repository/WishlistRepository;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;->a:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    iput-object v4, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->b:Ljava/lang/String;

    iput-object v4, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->c:Ljava/lang/String;

    iput-object v4, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->d:Ljava/lang/String;

    iput-object v4, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->e:Ljava/lang/Object;

    iput v2, v8, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase$run$1;->h:I

    move-object v2, p0

    move-object v4, p2

    invoke-interface/range {v1 .. v8}, Lcom/vuitton/android/domain/repository/WishlistRepository;->e(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v0, :cond_5

    :goto_3
    return-object v0

    :cond_5
    :goto_4
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p5

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    return-object p1

    :cond_6
    return-object p5
.end method
