.class final Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

.field public final synthetic c:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;->d:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->b:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->q()V

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->f:Landroid/content/Context;

    invoke-direct {p1, v2, v6, v3}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->c:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v6, v3, v3, p1, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInFailedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInFailedEvent;

    invoke-interface {v5, p1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->J8()V

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->m7()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput v4, v0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1$emit$1;->d:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->p(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->R4()V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$2$1$1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
