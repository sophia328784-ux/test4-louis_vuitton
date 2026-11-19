.class final Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;
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
    c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getAndCacheAccountDetails$2"
    f = "AccountRepositoryImpl.kt"
    l = {
        0x79,
        0x7a,
        0x7b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

.field public e:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

.field public f:I

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;


# direct methods
.method public constructor <init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->i:Z

    iput-object p2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->j:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;

    iget-boolean v1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->i:Z

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->j:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;-><init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->h:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->g:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->j:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->e:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    check-cast v0, Ljava/util/List;

    iget-object v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->c:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    iget v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->f:I

    iget-object v2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->e:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v6, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    iget-object v4, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->c:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v5, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;

    iget-boolean v2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->i:Z

    invoke-direct {p1, v2, v6, v7}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1;-><init>(ZLcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, p1, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    new-instance v2, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncAddresses$1;

    invoke-direct {v2, v6, v7}, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncAddresses$1;-><init>(Lcom/vuitton/android/data/repository/AccountRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v7, v2, v3}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->h:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->g:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_9

    move-object v2, p1

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->h:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->c:Ljava/lang/Object;

    iput-object v6, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    iput-object v2, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->e:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    const/4 v5, 0x0

    iput v5, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->f:I

    iput v4, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->g:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_6

    move-object v0, v7

    :cond_6
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->c(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_2
    iget-object v4, v6, Lcom/vuitton/android/data/repository/AccountRepositoryImpl;->g:Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;

    const v6, 0x7feff

    invoke-static {v2, v0, v7, v6}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->a(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;Ljava/lang/Boolean;I)Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    move-result-object v0

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->h:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->c:Ljava/lang/Object;

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->d:Lcom/vuitton/android/data/repository/AccountRepositoryImpl;

    iput-object v7, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->e:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iput v5, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->f:I

    iput v3, p0, Lcom/vuitton/android/data/repository/AccountRepositoryImpl$getAndCacheAccountDetails$2;->g:I

    invoke-virtual {v4, v0, p0}, Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;->c(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    :goto_3
    return-object v1

    :cond_8
    move-object p0, p1

    :goto_4
    move-object p1, p0

    :cond_9
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
