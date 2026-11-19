.class final Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;
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
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;",
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
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;",
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
    c = "com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2"
    f = "DispatchLocalStorageDataSource.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->d:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->d:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;-><init>(Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->d:Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;

    iget-object v1, v0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->c:Ldagger/Lazy;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    const-string v3, "dispatch_country_model"

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->a(Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;

    invoke-direct {v1, p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lkotlin/Result$Failure;

    invoke-direct {v1, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    instance-of p1, v1, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_4

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, v1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v1, Lkotlin/Result;

    invoke-direct {v1, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, v1

    :goto_1
    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->b:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2;->c:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/data/datasource/dispatch/DispatchLocalStorageDataSource;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_3

    return-object v2

    :cond_3
    move-object p0, p1

    :goto_2
    move-object p1, p0

    goto :goto_3

    :cond_4
    throw v1

    :cond_5
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No legacy dispatch to migrate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
