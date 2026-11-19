.class final Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;
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
    c = "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl$toggleUiTestMode$1"
    f = "OptionsViewModelImpl.kt"
    l = {
        0xa0,
        0xa1,
        0xa3,
        0xa5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->d:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->d:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;-><init>(Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->d:Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->h:Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->c:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v7, :cond_2

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput v7, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iput v6, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->c:I

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;->b()Lkotlin/Result$Failure;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_2

    :cond_5
    iput v5, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->c:I

    invoke-interface {v1}, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;->c()Lkotlin/Result$Failure;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->b:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl$toggleUiTestMode$1;->c:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p0, v2, :cond_7

    :goto_2
    return-object v2

    :cond_7
    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_3
    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
