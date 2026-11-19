.class public final synthetic Landroidx/compose/foundation/gestures/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic e:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/gestures/c;->b:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/c;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/c;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Landroidx/compose/foundation/gestures/c;->e:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p5, p0, Landroidx/compose/foundation/gestures/c;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/c;->b:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    iget-object v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->g(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    iget-wide v3, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->b:J

    iget-wide v5, v1, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    iget-object v7, v0, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const/16 v8, 0x20

    shr-long v8, v5, v8

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v7, v8, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(FJ)V

    iget-object v0, v0, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-virtual {v0, v5, v3, v4}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(FJ)V

    iget-object v0, p0, Landroidx/compose/foundation/gestures/c;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    invoke-virtual {v3, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;)Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-wide v3, v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$MouseWheelScrollDelta;->a:J

    iget-object v0, p0, Landroidx/compose/foundation/gestures/c;->e:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroidx/compose/foundation/gestures/ScrollingLogic;->k(J)F

    move-result v0

    iget-object v3, p0, Landroidx/compose/foundation/gestures/c;->d:Lkotlin/jvm/internal/Ref$FloatRef;

    iput v0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogicKt;->a(F)Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/c;->f:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
