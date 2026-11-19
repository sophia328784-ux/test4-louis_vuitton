.class public final Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/AccountRepository;",
        "accountRepository",
        "Lcom/vuitton/android/domain/repository/OrderRepository;",
        "orderRepository",
        "Lcom/vuitton/android/domain/repository/WishlistRepository;",
        "wishlistRepository",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V",
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
.field public final a:Lcom/vuitton/android/domain/repository/AccountRepository;

.field public final b:Lcom/vuitton/android/domain/repository/OrderRepository;

.field public final c:Lcom/vuitton/android/domain/repository/WishlistRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;->a:Lcom/vuitton/android/domain/repository/AccountRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;->b:Lcom/vuitton/android/domain/repository/OrderRepository;

    iput-object p3, p0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;->c:Lcom/vuitton/android/domain/repository/WishlistRepository;

    return-void
.end method


# virtual methods
.method public final a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-boolean p1, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->b:Z

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->b:Z

    iput v4, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;->b:Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/OrderRepository;->a()Lkotlin/Unit;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;->c:Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-interface {p2}, Lcom/vuitton/android/domain/repository/WishlistRepository;->g()Ljava/lang/Object;

    iput-boolean p1, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->b:Z

    iput v3, v0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase$run$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/account/ResetLoginDetailsUseCase;->a:Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-interface {p0, p1, v0}, Lcom/vuitton/android/domain/repository/AccountRepository;->m(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
