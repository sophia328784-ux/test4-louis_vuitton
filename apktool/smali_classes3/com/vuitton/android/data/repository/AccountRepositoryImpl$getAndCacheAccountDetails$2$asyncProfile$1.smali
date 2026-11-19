.class final Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;
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
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
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
    c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1"
    f = "AccountRepositoryImpl.kt"
    l = {
        0x71,
        0x73
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->c:Z

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;

    iget-boolean v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->c:Z

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;-><init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_0

    if-ne v1, v2, :cond_1

    :cond_0
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

    iget-boolean p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->c:Z

    iget-object v1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    if-eqz p1, :cond_3

    iget-object p1, v1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->a:Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;

    iput v3, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteTwistDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_3
    iget-object p1, v1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->b:Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;

    iput v2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/data/datasource/account/AccountRemoteFacadeDataSource;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_0
    return-object v0

    :cond_4
    :goto_1
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
