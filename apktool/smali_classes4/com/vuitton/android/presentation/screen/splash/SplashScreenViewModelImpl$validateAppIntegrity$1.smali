.class final Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;
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
    c = "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl$validateAppIntegrity$1"
    f = "SplashScreenViewModelImpl.kt"
    l = {
        0xba,
        0xbc,
        0xbf,
        0xc1,
        0xc2,
        0xc3,
        0xc4,
        0xc5,
        0xc6,
        0xc7,
        0xc8,
        0xd5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->f:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->f:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->d:Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    packed-switch v1, :pswitch_data_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_7
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_9
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :pswitch_a
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    check-cast p0, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_b
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->e:Ljava/lang/String;

    invoke-static {v6, p1, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Bc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_b

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->f:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;

    if-eqz p1, :cond_2

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p1, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfig;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1

    goto/16 :goto_b

    :cond_1
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto/16 :goto_b

    :cond_3
    :goto_2
    const/4 p1, 0x4

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Jc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto/16 :goto_b

    :cond_4
    :goto_3
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/4 p1, 0x5

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Ec(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto/16 :goto_b

    :cond_5
    :goto_4
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/4 p1, 0x6

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Fc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto/16 :goto_b

    :cond_6
    :goto_5
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/4 p1, 0x7

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;

    invoke-direct {p1, v6, v5}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$fetchConfigsVersionAndAppLinkExclusionsOrNull$2;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto/16 :goto_b

    :cond_7
    :goto_6
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/16 p1, 0x8

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Kc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_b

    :cond_8
    :goto_7
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/16 p1, 0x9

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Gc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    :goto_8
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/16 p1, 0xa

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Hc(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    :goto_9
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    const/16 p1, 0xb

    iput p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Ic(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    goto :goto_b

    :cond_b
    :goto_a
    check-cast p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    if-nez p1, :cond_c

    new-instance p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->O:Ljava/lang/String;

    invoke-direct {p1, v1}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$GoMain;-><init>(Ljava/lang/String;)V

    :cond_c
    new-array v1, v4, [Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    sget-object v7, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$DispatchPage;

    const/4 v8, 0x0

    aput-object v7, v1, v8

    sget-object v7, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$RetryPopup;

    aput-object v7, v1, v3

    sget-object v3, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$ShowSecurityDialog;

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v6}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$launchAvatarsPreloadIfNeeded$1;

    invoke-direct {v2, v6, v5}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$launchAvatarsPreloadIfNeeded$1;-><init>(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v1, v5, v5, v2, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_d
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->b:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;

    const/16 v1, 0xc

    iput v1, p0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl$validateAppIntegrity$1;->c:I

    invoke-static {v6, p1, p0}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_e

    :goto_b
    return-object v0

    :cond_e
    move-object p0, p1

    :goto_c
    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;->a:Lcom/vuitton/android/presentation/screen/splash/SplashScreenAction$Idle;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
