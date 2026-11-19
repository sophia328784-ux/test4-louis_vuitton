.class final Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;
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
    c = "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2"
    f = "QuickAccessFiltersViewModelImpl.kt"
    l = {
        0x98
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->d:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->b:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->c:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_2
    invoke-interface {p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->d:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {p1, v1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl$updateFiltersContainerVisibility$2;->b:I

    const-wide/16 v4, 0x320

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
