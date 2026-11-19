.class final Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;
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
    c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$1$1"
    f = "MainActivity.kt"
    l = {
        0x149
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v3, Llb0;

    move p1, v2

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->c:Lcom/vuitton/android/presentation/screen/main/MainActivity;

    const/4 v1, 0x3

    invoke-direct {v3, v2, v1}, Llb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    new-instance v4, Ljx;

    const/16 v5, 0x13

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {v4, v2, v6, v7, v5}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v5, Lkb0;

    invoke-direct {v5, v2, v1}, Lkb0;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;I)V

    iput p1, p0, Lcom/vuitton/android/presentation/screen/main/MainActivity$onCreate$1$1$1$1;->b:I

    sget-object p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {v2}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/main/MainActivity$listenLinkSideEffect$2;-><init>(Lcom/vuitton/android/presentation/screen/main/MainActivity;Llb0;Ljx;Lkb0;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v7, v1, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->a(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
