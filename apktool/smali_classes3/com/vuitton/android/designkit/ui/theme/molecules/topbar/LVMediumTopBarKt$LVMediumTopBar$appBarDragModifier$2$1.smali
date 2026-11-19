.class final Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljava/lang/Float;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "velocity",
        ""
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
    c = "com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1"
    f = "LVMediumTopBar.kt"
    l = {
        0x97
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:F

.field public final synthetic d:Landroidx/compose/material3/TopAppBarScrollBehavior;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->d:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->d:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-direct {p2, p0, p3}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;-><init>(Landroidx/compose/material3/TopAppBarScrollBehavior;Lkotlin/coroutines/Continuation;)V

    iput p1, p2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->c:F

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->c:F

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->d:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-interface {p1}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v2

    invoke-interface {p1}, Landroidx/compose/material3/TopAppBarScrollBehavior;->b()Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v4

    invoke-interface {p1}, Landroidx/compose/material3/TopAppBarScrollBehavior;->c()Landroidx/compose/animation/core/AnimationSpec;

    move-result-object p1

    iput v0, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->c:F

    iput v3, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1;->b:I

    invoke-static {v2, v0, v4, p1, p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->c(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
