.class final Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "T"
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
    c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl$withATGSession$performBody$1"
    f = "ATGSessionManagerImpl.kt"
    l = {
        0x33,
        0x34
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->c:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

    iput-object p2, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->d:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;

    iget-object v1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->c:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

    iget-object p0, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;-><init>(Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->b:I

    sget p1, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->f:I

    iget-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->c:Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl;->d(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    iput v2, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->b:I

    iget-object v1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withATGSession$performBody$1;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    return-object p0
.end method
