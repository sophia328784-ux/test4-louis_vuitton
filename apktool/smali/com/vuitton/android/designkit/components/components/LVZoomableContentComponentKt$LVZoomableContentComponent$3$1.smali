.class final Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
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
.field public final synthetic a:F

.field public final synthetic b:F

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Landroidx/compose/runtime/MutableState;

.field public final synthetic e:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic h:Landroidx/compose/runtime/MutableFloatState;


# direct methods
.method public constructor <init>(FFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->a:F

    iput p2, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->b:F

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->d:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->e:Landroidx/compose/runtime/MutableFloatState;

    iput-object p6, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->f:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->g:Landroidx/compose/runtime/MutableFloatState;

    iput-object p8, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->h:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    new-instance v0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;

    iget-object v8, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->h:Landroidx/compose/runtime/MutableFloatState;

    const/4 v9, 0x0

    iget v1, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->a:F

    iget v2, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->b:F

    iget-object v3, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->c:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->d:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->e:Landroidx/compose/runtime/MutableFloatState;

    iget-object v6, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->f:Landroidx/compose/runtime/MutableState;

    iget-object v7, p0, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1;->g:Landroidx/compose/runtime/MutableFloatState;

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt$LVZoomableContentComponent$3$1$1;-><init>(FFLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableFloatState;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v0, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
