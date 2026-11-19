.class final Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;",
        "Lkotlin/coroutines/Continuation<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "T",
        "atgSessionStatus",
        "Lcom/vuitton/android/data/net/atg/ATGSessionStatus;"
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
    c = "com.vuitton.android.data.net.atg.ATGSessionManagerImpl$withAuthATGSessionOrThrow$2"
    f = "ATGSessionManagerImpl.kt"
    l = {
        0x23
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->d:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;

    iget-object p0, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->d:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/vuitton/android/data/net/atg/ATGSessionStatus$Authenticated;

    if-eqz p1, :cond_3

    iput-object v3, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->b:I

    iget-object p1, p0, Lcom/vuitton/android/data/net/atg/ATGSessionManagerImpl$withAuthATGSessionOrThrow$2;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    return-object p0

    :cond_3
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;

    invoke-direct {p0}, Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;-><init>()V

    throw p0
.end method
