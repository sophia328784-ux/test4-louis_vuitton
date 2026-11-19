.class final Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;
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
    c = "com.vuitton.android.designkit.components.components.LVZoomableContentComponentKt$LVZoomableContentComponent$1$1"
    f = "LVZoomableContentComponent.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic f:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic g:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->b:Z

    iput-object p2, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->d:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->e:Landroidx/compose/runtime/MutableFloatState;

    iput-object p5, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->f:Landroidx/compose/runtime/MutableFloatState;

    iput-object p6, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->g:Landroidx/compose/runtime/MutableFloatState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8

    new-instance v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;

    iget-object v5, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->f:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->g:Landroidx/compose/runtime/MutableFloatState;

    iget-boolean v1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->b:Z

    iget-object v2, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object v4, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->e:Landroidx/compose/runtime/MutableFloatState;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;-><init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->d:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->e:Landroidx/compose/runtime/MutableFloatState;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    iget-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->f:Landroidx/compose/runtime/MutableFloatState;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    iget-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->g:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableFloatState;->w(F)V

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$1$1;->c:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
