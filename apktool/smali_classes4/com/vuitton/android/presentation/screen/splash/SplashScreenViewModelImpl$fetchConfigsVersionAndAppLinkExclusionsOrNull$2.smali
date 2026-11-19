.class final Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;
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
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;",
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
    c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2"
    f = "SplashScreenViewModelImpl.kt"
    l = {
        0x174,
        0x175
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->e:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->e:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->c:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/Deferred;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$configsVersionDeferred$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->e:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    invoke-direct {p1, v2, v5}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$configsVersionDeferred$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v0, v5, p1, v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    new-instance v7, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1;

    invoke-direct {v7, v2, v5}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2$appLinkExclusionsDeferred$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v5, v7, v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Deferred;

    move-result-object v0

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->d:Ljava/lang/Object;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->c:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->d:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->b:Ljava/lang/Object;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;->c:I

    invoke-interface {v0, p0}, Lkotlinx/coroutines/Deferred;->k(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_1
    return-object v1

    :cond_5
    return-object p0
.end method
