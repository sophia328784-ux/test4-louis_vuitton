.class final Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;
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
    c = "com.vuitton.android.presentation.screen.catalog.thematicplp.screen.ThematicPlpComposableKt$ThematicPlpComposable$3$1"
    f = "ThematicPlpComposable.kt"
    l = {
        0x12b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

.field public final synthetic d:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic g:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Landroidx/compose/runtime/MutableState;

.field public final synthetic j:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->f:Landroidx/compose/material3/SnackbarHostState;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->g:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->h:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->i:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->j:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->i:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->j:Landroidx/compose/runtime/State;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->f:Landroidx/compose/material3/SnackbarHostState;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->g:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->h:Lkotlin/jvm/functions/Function0;

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    new-instance v4, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;

    iget-object v12, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->j:Landroidx/compose/runtime/State;

    const/4 v13, 0x0

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->d:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->e:Landroid/content/Context;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->f:Landroidx/compose/material3/SnackbarHostState;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->g:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->h:Lkotlin/jvm/functions/Function0;

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->i:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpComposableKt$ThematicPlpComposable$3$1;->b:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/flow/FlowKt;->g(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    const-string p0, "SharedFlow never completes, this call should never return."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method
