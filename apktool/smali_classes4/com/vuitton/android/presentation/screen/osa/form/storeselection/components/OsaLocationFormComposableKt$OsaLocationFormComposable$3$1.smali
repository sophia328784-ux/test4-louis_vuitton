.class final Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;
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
    c = "com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt$OsaLocationFormComposable$3$1"
    f = "OsaLocationFormComposable.kt"
    l = {
        0x59
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

.field public final synthetic e:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->f:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->g:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->f:Landroid/content/Context;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->g:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->e:Landroidx/compose/material3/SnackbarHostState;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->b()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1$1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->e:Landroidx/compose/material3/SnackbarHostState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->f:Landroid/content/Context;

    invoke-direct {v1, v4, v5, v2}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1$1;-><init>(Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->b:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt$OsaLocationFormComposable$3$1;->g:Landroidx/compose/runtime/State;

    if-nez v0, :cond_3

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->q:Z

    if-eqz v0, :cond_3

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->v:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_3
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->w:Z

    if-eqz p0, :cond_5

    :cond_4
    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->e4()V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
