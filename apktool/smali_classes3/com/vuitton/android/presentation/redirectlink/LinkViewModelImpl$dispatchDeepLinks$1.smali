.class final Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.vuitton.android.presentation.redirectlink.LinkViewModelImpl$dispatchDeepLinks$1"
    f = "LinkViewModelImpl.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;

.field public final synthetic d:Landroid/app/Activity;

.field public final synthetic e:Landroid/net/Uri;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->c:Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->d:Landroid/app/Activity;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->e:Landroid/net/Uri;

    iput-object p4, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->f:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->f:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->g:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->c:Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->e:Landroid/net/Uri;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;Landroid/app/Activity;Landroid/net/Uri;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->c:Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;

    iget-object v4, p1, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;->a:Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iput v2, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->b:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->d:Landroid/app/Activity;

    iget-object v5, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->e:Landroid/net/Uri;

    invoke-static {p1, v5}, Lcom/vuitton/android/presentation/push/UtmNotificationTracker;->a(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance v3, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->g:Z

    iget-object v7, p0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl$dispatchDeepLinks$1;->f:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$dispatchLvDeepLinks$2;-><init>(Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Landroid/net/Uri;ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, p0}, Lkotlinx/coroutines/SupervisorKt;->c(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
