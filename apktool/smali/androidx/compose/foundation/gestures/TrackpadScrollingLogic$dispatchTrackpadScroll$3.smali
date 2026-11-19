.class final Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/gestures/NestedScrollScope;",
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
        "Landroidx/compose/foundation/gestures/NestedScrollScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3"
    f = "TrackpadScrollingLogic.kt"
    l = {
        0xb2
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

.field public final synthetic f:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->e:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    iput-object p2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->f:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->f:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v2, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->e:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    invoke-direct {v0, p0, v1, v2, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/gestures/NestedScrollScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->c:I

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->f:Landroidx/compose/foundation/gestures/ScrollingLogic;

    const/4 v5, 0x1

    iget-object v6, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->e:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->d:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/gestures/NestedScrollScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v8, v2

    move-object/from16 v2, p1

    goto :goto_1

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/NestedScrollScope;

    iget-object v8, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    iget-wide v8, v8, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    invoke-virtual {v4, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroidx/compose/foundation/gestures/ScrollingLogic;->k(J)F

    move-result v8

    iget-object v9, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v9, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(F)F

    move-result v8

    invoke-virtual {v9, v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(F)J

    move-result-wide v10

    sget-object v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->a:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->b:I

    invoke-interface {v2, v8, v10, v11}, Landroidx/compose/foundation/gestures/NestedScrollScope;->a(IJ)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(J)F

    move-object v8, v2

    :goto_0
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    iget-boolean v2, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->c:Z

    if-nez v2, :cond_4

    iget-object v2, v7, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    iput-object v8, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->d:Ljava/lang/Object;

    iput-object v6, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput v5, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$dispatchTrackpadScroll$3;->c:I

    new-instance v9, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2;

    invoke-direct {v9, v2, v3}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogicKt$busyReceive$2;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v0}, Lkotlinx/coroutines/CoroutineScopeKt;->d(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    :cond_2
    move-object v9, v8

    move-object v8, v6

    :goto_1
    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    iget-object v8, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    iget-wide v10, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->b:J

    iget-wide v12, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    iget-object v2, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const/16 p1, 0x20

    shr-long v14, v12, p1

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual {v2, v14, v10, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(FJ)V

    iget-object v2, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    long-to-int v8, v12

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v2, v8, v10, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(FJ)V

    iget-object v2, v7, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->f:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->e(Lkotlinx/coroutines/channels/BufferedChannel;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v8, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->e:Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;

    iget-wide v10, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->b:J

    iget-wide v12, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    iget-object v3, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->a:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    move-wide/from16 v16, v14

    shr-long v14, v12, p1

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    invoke-virtual {v3, v14, v10, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(FJ)V

    iget-object v3, v8, Landroidx/compose/foundation/gestures/DifferentialVelocityTracker;->b:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    and-long v12, v12, v16

    long-to-int v8, v12

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    invoke-virtual {v3, v8, v10, v11}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->a(FJ)V

    iget-object v3, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;)Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    move-result-object v2

    iput-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_3
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;

    iget-wide v2, v2, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$TrackpadScrollDelta;->a:J

    invoke-virtual {v4, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Landroidx/compose/foundation/gestures/ScrollingLogic;->k(J)F

    move-result v2

    iget-object v3, v7, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->f(F)F

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->j(F)J

    move-result-wide v10

    sget-object v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->a:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->b:I

    invoke-interface {v9, v2, v10, v11}, Landroidx/compose/foundation/gestures/NestedScrollScope;->a(IJ)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->g(J)J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Landroidx/compose/foundation/gestures/ScrollingLogic;->i(J)F

    move-object v8, v9

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
