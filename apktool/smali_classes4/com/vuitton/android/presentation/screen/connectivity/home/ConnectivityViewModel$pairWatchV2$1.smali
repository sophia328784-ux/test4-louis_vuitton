.class final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Exception;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;"
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
    c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$pairWatchV2$1"
    f = "ConnectivityViewModel.kt"
    l = {
        0x8c,
        0x94
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Exception;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->b:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_5

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lretrofit2/HttpException;

    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, v0, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    goto :goto_0

    :cond_3
    move-object v2, v6

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lvg;

    const/16 v7, 0x13

    invoke-direct {v2, p1, v0, v7}, Lvg;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->b:I

    sget p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->o:I

    invoke-virtual {v3, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_4

    :cond_4
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_3
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    new-instance p1, Lbp;

    invoke-direct {p1, v4}, Lbp;-><init>(I)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$pairWatchV2$1;->b:I

    sget v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->o:I

    invoke-virtual {v3, p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    :goto_4
    return-object v1

    :cond_6
    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
