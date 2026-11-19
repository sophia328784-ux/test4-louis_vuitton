.class final Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
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
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"
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
    c = "androidx.compose.foundation.text.handwriting.StylusHandwritingNode$suspendingPointerInputModifierNode$1$1"
    f = "StylusHandwriting.kt"
    l = {
        0x74,
        0x90,
        0xb6
    }
    m = "invokeSuspend"
    v = 0x1
.end annotation


# instance fields
.field public c:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public d:Landroidx/compose/ui/input/pointer/PointerEventPass;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->g:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;

    iget-object p0, p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->g:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    invoke-direct {v0, p0, p2}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;-><init>(Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->e:I

    const/4 v3, 0x3

    iget-object v4, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->g:Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->c:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v6, v3

    move-object v14, v8

    const/4 v12, 0x0

    move-object/from16 v3, p1

    goto/16 :goto_17

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->d:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iget-object v9, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->c:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v10, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    check-cast v10, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto/16 :goto_6

    :cond_2
    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v9, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    iput v7, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->e:I

    invoke-static {v2, v7, v9, v0}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;ZLandroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_4

    goto/16 :goto_16

    :cond_4
    :goto_0
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    iget-wide v11, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    sget-object v13, Landroidx/compose/ui/input/pointer/PointerType;->b:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v13, Landroidx/compose/ui/input/pointer/PointerType;->e:I

    if-ne v10, v13, :cond_5

    goto :goto_1

    :cond_5
    iget v10, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    sget v13, Landroidx/compose/ui/input/pointer/PointerType;->f:I

    if-ne v10, v13, :cond_2d

    :goto_1
    const/16 v10, 0x20

    shr-long v13, v11, v10

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_6

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->a()J

    move-result-wide v16

    move-object/from16 p1, v9

    shr-long v8, v16, v10

    long-to-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v13, v8

    if-gez v8, :cond_7

    const-wide v8, 0xffffffffL

    and-long v10, v11, v8

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    cmpl-float v11, v11, v15

    if-ltz v11, :cond_7

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    invoke-interface {v2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->a()J

    move-result-wide v11

    and-long/2addr v8, v11

    long-to-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v10, v8

    if-gez v8, :cond_7

    move v8, v7

    goto :goto_2

    :cond_6
    move-object/from16 p1, v9

    :cond_7
    const/4 v8, 0x0

    :goto_2
    iget-boolean v9, v4, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->s:Z

    if-nez v9, :cond_9

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    goto :goto_4

    :cond_9
    :goto_3
    sget-object v8, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    :goto_4
    move-object/from16 v9, p1

    move-object v10, v2

    move-object v2, v8

    :goto_5
    iput-object v10, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    iput-object v9, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->c:Landroidx/compose/ui/input/pointer/PointerInputChange;

    iput-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->d:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput v5, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->e:I

    invoke-interface {v10, v2, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_a

    goto/16 :goto_16

    :cond_a
    :goto_6
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v11, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v12, v11

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_7
    if-ge v13, v12, :cond_d

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v16

    if-nez v16, :cond_b

    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-object/from16 v18, v4

    iget-wide v3, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-static {v6, v7, v3, v4}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-boolean v3, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_b
    move-object/from16 v18, v4

    :cond_c
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v18

    const/4 v3, 0x3

    const/4 v7, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v18, v4

    const/4 v15, 0x0

    :goto_8
    check-cast v15, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v15, :cond_e

    goto :goto_9

    :cond_e
    iget-wide v3, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    iget-wide v6, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->b:J

    sub-long/2addr v3, v6

    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v6

    invoke-interface {v6}, Landroidx/compose/ui/platform/ViewConfiguration;->b()J

    move-result-wide v6

    cmp-long v3, v3, v6

    if-ltz v3, :cond_f

    goto :goto_9

    :cond_f
    iget v3, v8, Landroidx/compose/ui/input/pointer/PointerEvent;->c:I

    if-ne v3, v5, :cond_10

    :goto_9
    const/4 v15, 0x0

    goto :goto_a

    :cond_10
    iget-wide v3, v15, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    iget-wide v6, v9, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-static {v3, v4, v6, v7}, Landroidx/compose/ui/geometry/Offset;->e(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->d(J)F

    move-result v3

    invoke-interface {v10}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/ui/platform/ViewConfiguration;->d()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2c

    :goto_a
    if-nez v15, :cond_11

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_11
    move-object/from16 v3, v18

    iget-boolean v2, v3, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->s:Z

    if-nez v2, :cond_27

    iget-object v2, v3, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    :goto_b
    const/16 v5, 0x10

    if-eqz v2, :cond_19

    instance-of v6, v2, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v6, :cond_12

    check-cast v2, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v2}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->t0(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    goto/16 :goto_14

    :cond_12
    iget v6, v2, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_18

    instance-of v6, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_18

    move-object v6, v2

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    :goto_c
    if-eqz v6, :cond_17

    iget v8, v6, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_16

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    move-object v2, v6

    goto :goto_d

    :cond_13
    if-nez v4, :cond_14

    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v5, [Landroidx/compose/ui/Modifier$Node;

    const/4 v11, 0x0

    invoke-direct {v4, v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_14
    if-eqz v2, :cond_15

    invoke-virtual {v4, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :cond_15
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_16
    :goto_d
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_c

    :cond_17
    const/4 v8, 0x1

    if-ne v7, v8, :cond_18

    goto :goto_b

    :cond_18
    invoke-static {v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_b

    :cond_19
    iget-object v2, v3, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v2, :cond_1a

    const-string v2, "visitChildren called on an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_1a
    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    new-array v4, v5, [Landroidx/compose/ui/Modifier$Node;

    const/4 v11, 0x0

    invoke-direct {v2, v4, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iget-object v4, v3, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-object v6, v4, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    if-nez v6, :cond_1b

    invoke-static {v2, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_e

    :cond_1b
    invoke-virtual {v2, v6}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_1c
    :goto_e
    iget v4, v2, Landroidx/compose/runtime/collection/MutableVector;->d:I

    if-eqz v4, :cond_27

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/collection/MutableVector;->o(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/Modifier$Node;

    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->e:I

    and-int/lit16 v6, v6, 0x400

    if-nez v6, :cond_1d

    invoke-static {v2, v4}, Landroidx/compose/ui/node/DelegatableNodeKt;->a(Landroidx/compose/runtime/collection/MutableVector;Landroidx/compose/ui/Modifier$Node;)V

    goto :goto_e

    :cond_1d
    :goto_f
    if-eqz v4, :cond_1c

    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_26

    const/4 v6, 0x0

    :goto_10
    if-eqz v4, :cond_1c

    instance-of v7, v4, Landroidx/compose/ui/focus/FocusTargetNode;

    if-eqz v7, :cond_1e

    check-cast v4, Landroidx/compose/ui/focus/FocusTargetNode;

    invoke-static {v4}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->t0(Landroidx/compose/ui/focus/FocusTargetModifierNode;)Z

    goto :goto_14

    :cond_1e
    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit16 v7, v7, 0x400

    if-eqz v7, :cond_24

    instance-of v7, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v7, :cond_24

    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v7, v7, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    const/4 v11, 0x0

    :goto_11
    if-eqz v7, :cond_23

    iget v8, v7, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1f

    add-int/lit8 v11, v11, 0x1

    const/4 v8, 0x1

    if-ne v11, v8, :cond_20

    move-object v4, v7

    :cond_1f
    const/4 v12, 0x0

    goto :goto_13

    :cond_20
    if-nez v6, :cond_21

    new-instance v6, Landroidx/compose/runtime/collection/MutableVector;

    new-array v8, v5, [Landroidx/compose/ui/Modifier$Node;

    const/4 v12, 0x0

    invoke-direct {v6, v8, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    goto :goto_12

    :cond_21
    const/4 v12, 0x0

    :goto_12
    if-eqz v4, :cond_22

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    const/4 v4, 0x0

    :cond_22
    invoke-virtual {v6, v7}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :goto_13
    iget-object v7, v7, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_11

    :cond_23
    const/4 v8, 0x1

    const/4 v12, 0x0

    if-ne v11, v8, :cond_25

    goto :goto_10

    :cond_24
    const/4 v8, 0x1

    const/4 v12, 0x0

    :cond_25
    invoke-static {v6}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_10

    :cond_26
    const/4 v8, 0x1

    const/4 v12, 0x0

    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_f

    :cond_27
    :goto_14
    const/4 v12, 0x0

    iget-object v2, v3, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode;->r:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {v15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    move-object v2, v9

    move-object v4, v10

    :goto_15
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    iput-object v4, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->f:Ljava/lang/Object;

    iput-object v2, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->c:Landroidx/compose/ui/input/pointer/PointerInputChange;

    const/4 v14, 0x0

    iput-object v14, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->d:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v6, 0x3

    iput v6, v0, Landroidx/compose/foundation/text/handwriting/StylusHandwritingNode$suspendingPointerInputModifierNode$1$1;->e:I

    invoke-interface {v4, v3, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->N0(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_28

    :goto_16
    return-object v1

    :cond_28
    :goto_17
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerEvent;

    iget-object v3, v3, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    move v11, v12

    :goto_18
    if-ge v11, v5, :cond_2a

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v9

    if-nez v9, :cond_29

    iget-wide v9, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    move-object/from16 p1, v7

    iget-wide v6, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->a:J

    invoke-static {v9, v10, v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-boolean v6, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->d:Z

    if-eqz v6, :cond_29

    move-object/from16 v3, p1

    goto :goto_19

    :cond_29
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x3

    goto :goto_18

    :cond_2a
    move-object v3, v14

    :goto_19
    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v3, :cond_2b

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_2b
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    goto :goto_15

    :cond_2c
    move-object/from16 v4, v18

    const/4 v3, 0x3

    const/4 v7, 0x1

    goto/16 :goto_5

    :cond_2d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
