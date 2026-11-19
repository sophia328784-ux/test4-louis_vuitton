.class final Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1;
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
.field public final synthetic a:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic b:Landroidx/compose/animation/core/Animatable;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1;->a:Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1;->b:Landroidx/compose/animation/core/Animatable;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->a()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    invoke-interface {p1}, Landroidx/compose/ui/input/pointer/PointerInputScope;->a()J

    move-result-wide v3

    shr-long v1, v3, v2

    long-to-int v1, v1

    int-to-float v1, v1

    const v2, 0x3eb33333    # 0.35f

    mul-float/2addr v1, v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/audioguide/components/d;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1;->a:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideSwipeablePushCardKt$AudioGuideSwipeablePushCard$4$1;->b:Landroidx/compose/animation/core/Animatable;

    invoke-direct {v4, v2, p0, v1, v0}, Lcom/vuitton/android/presentation/screen/audioguide/components/d;-><init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/animation/core/Animatable;FF)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/audioguide/components/e;

    invoke-direct {v5, p0, v2}, Lcom/vuitton/android/presentation/screen/audioguide/components/e;-><init>(Landroidx/compose/animation/core/Animatable;Lkotlinx/coroutines/CoroutineScope;)V

    const/4 v7, 0x5

    const/4 v3, 0x0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Landroidx/compose/foundation/gestures/DragGestureDetectorKt;->g(Landroidx/compose/ui/input/pointer/PointerInputScope;Lnz;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
