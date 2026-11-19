.class final Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;
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
    c = "com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailComposableKt$RepairDetailComposable$5$1"
    f = "RepairDetailComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

.field public final synthetic d:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->d:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->e:Landroid/content/Context;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->f:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->e:Landroid/content/Context;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->f:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->d:Landroidx/compose/material3/SnackbarHostState;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->b:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->d:Landroidx/compose/material3/SnackbarHostState;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->e:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v0, v4, v4, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1;->f:Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailComposableKt$RepairDetailComposable$5$1$2;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v4, v4, p1, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
