.class public final Landroidx/compose/foundation/gestures/ScrollableNode;
.super Landroidx/compose/foundation/gestures/DragGestureNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/key/KeyInputModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/foundation/gestures/OnScrollChangedDispatcher;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004BO\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\r\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/foundation/gestures/ScrollableNode;",
        "Landroidx/compose/foundation/gestures/DragGestureNode;",
        "Landroidx/compose/ui/input/key/KeyInputModifierNode;",
        "Landroidx/compose/ui/node/SemanticsModifierNode;",
        "Landroidx/compose/foundation/gestures/OnScrollChangedDispatcher;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "state",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "overscrollEffect",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "flingBehavior",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "orientation",
        "",
        "enabled",
        "reverseDirection",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "bringIntoViewSpec",
        "<init>",
        "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public K:Landroidx/compose/foundation/OverscrollEffect;

.field public L:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public final M:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field public final N:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

.field public final O:Landroidx/compose/foundation/gestures/ScrollingLogic;

.field public final P:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

.field public final Q:Landroidx/compose/ui/focus/FocusTargetModifierNode;

.field public final R:Landroidx/compose/foundation/gestures/ContentInViewNode;

.field public S:Landroidx/compose/foundation/gestures/d;

.field public T:Lkotlin/jvm/functions/Function2;

.field public V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

.field public W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v9, p5

    sget-object v0, Landroidx/compose/foundation/gestures/ScrollableKt;->a:Lyt0;

    move-object/from16 v2, p4

    move-object/from16 v1, p7

    invoke-direct {v7, v0, v9, v1, v2}, Landroidx/compose/foundation/gestures/DragGestureNode;-><init>(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;)V

    move-object/from16 v0, p2

    iput-object v0, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->K:Landroidx/compose/foundation/OverscrollEffect;

    move-object/from16 v0, p3

    iput-object v0, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->L:Landroidx/compose/foundation/gestures/FlingBehavior;

    new-instance v6, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {v6}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    iput-object v6, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->M:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    new-instance v0, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    sget-object v1, Landroidx/compose/foundation/gestures/ScrollableKt;->d:Landroidx/compose/foundation/gestures/ScrollableKt$UnityDensity$1;

    new-instance v3, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    invoke-direct {v3, v1}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    invoke-static {v3}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->c(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4, v3}, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;-><init>(Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/ui/MotionDurationScale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->N:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    iget-object v2, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->K:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v1, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->L:Landroidx/compose/foundation/gestures/FlingBehavior;

    if-nez v1, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    new-instance v0, Landroidx/compose/foundation/gestures/ScrollingLogic;

    new-instance v8, Lju0;

    const/4 v1, 0x0

    invoke-direct {v8, v7, v1}, Lju0;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move/from16 v5, p6

    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZLandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/foundation/gestures/OnScrollChangedDispatcher;Lkotlin/jvm/functions/Function0;)V

    move-object v3, v0

    move-object v0, v6

    iput-object v3, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->O:Landroidx/compose/foundation/gestures/ScrollingLogic;

    new-instance v8, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    invoke-direct {v8, v3, v9}, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;-><init>(Landroidx/compose/foundation/gestures/ScrollLogic;Z)V

    iput-object v8, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->P:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    sget-object v1, Landroidx/compose/ui/focus/Focusability;->a:Landroidx/compose/ui/focus/Focusability$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/focus/Focusability;->c:I

    new-instance v9, Landroidx/compose/ui/focus/FocusTargetNode;

    const/16 v14, 0xa

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/focus/FocusTargetNode;-><init>(IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v9}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v9, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->Q:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    new-instance v1, Landroidx/compose/foundation/gestures/ContentInViewNode;

    new-instance v6, Lju0;

    const/4 v2, 0x1

    invoke-direct {v6, v7, v2}, Lju0;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;I)V

    move-object/from16 v2, p4

    move/from16 v4, p6

    move-object/from16 v5, p8

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;-><init>(Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollingLogic;ZLandroidx/compose/foundation/gestures/BringIntoViewSpec;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v7, v1}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, v7, Landroidx/compose/foundation/gestures/ScrollableNode;->R:Landroidx/compose/foundation/gestures/ContentInViewNode;

    new-instance v2, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-direct {v2, v8, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    invoke-virtual {v7, v2}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;

    invoke-direct {v0, v1}, Landroidx/compose/foundation/relocation/BringIntoViewResponderNode;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewResponder;)V

    invoke-virtual {v7, v0}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/foundation/gestures/DragGestureNode;->f1()V

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->N:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    invoke-direct {v2, v0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    invoke-static {v2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->c(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v0

    iput-object v0, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/DecayAnimationSpec;

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    :cond_2
    return-void
.end method

.method public final C2(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p4, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->P:Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;

    iput-boolean p4, v0, Landroidx/compose/foundation/gestures/ScrollableNestedScrollConnection;->c:Z

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p6, :cond_1

    iget-object v3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->N:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    goto :goto_1

    :cond_1
    move-object v3, p6

    :goto_1
    iget-object v4, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->O:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iput-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    move v2, v1

    :cond_2
    iput-object p3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->b:Landroidx/compose/foundation/OverscrollEffect;

    iget-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    if-eq p1, p2, :cond_3

    iput-object p2, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    move v2, v1

    :cond_3
    iget-boolean p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->e:Z

    if-eq p1, p5, :cond_4

    iput-boolean p5, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->e:Z

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-object v3, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->c:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->M:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->f:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->R:Landroidx/compose/foundation/gestures/ContentInViewNode;

    iput-object p2, p1, Landroidx/compose/foundation/gestures/ContentInViewNode;->p:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p5, p1, Landroidx/compose/foundation/gestures/ContentInViewNode;->r:Z

    iput-object p8, p1, Landroidx/compose/foundation/gestures/ContentInViewNode;->s:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-object p3, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->K:Landroidx/compose/foundation/OverscrollEffect;

    iput-object p6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->L:Landroidx/compose/foundation/gestures/FlingBehavior;

    sget-object p3, Landroidx/compose/foundation/gestures/ScrollableKt;->a:Lyt0;

    iget-object p1, v4, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne p1, p2, :cond_5

    :goto_3
    move-object p6, p2

    move-object p5, p7

    move p7, v1

    move-object p2, p0

    goto :goto_4

    :cond_5
    sget-object p2, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    goto :goto_3

    :goto_4
    invoke-virtual/range {p2 .. p7}, Landroidx/compose/foundation/gestures/DragGestureNode;->B2(Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/Orientation;Z)V

    if-eqz v0, :cond_6

    const/4 p0, 0x0

    iput-object p0, p2, Landroidx/compose/foundation/gestures/ScrollableNode;->S:Landroidx/compose/foundation/gestures/d;

    iput-object p0, p2, Landroidx/compose/foundation/gestures/ScrollableNode;->T:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Landroidx/compose/ui/node/SemanticsModifierNodeKt;->b(Landroidx/compose/ui/node/SemanticsModifierNode;)V

    :cond_6
    return-void
.end method

.method public final L0(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final L1(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->S:Landroidx/compose/foundation/gestures/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->T:Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/compose/foundation/gestures/d;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/gestures/d;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->S:Landroidx/compose/foundation/gestures/d;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/gestures/ScrollableNode$setScrollSemanticsActions$2;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    iput-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->T:Lkotlin/jvm/functions/Function2;

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->S:Landroidx/compose/foundation/gestures/d;

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object v2, Landroidx/compose/ui/semantics/SemanticsActions;->d:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v3, Landroidx/compose/ui/semantics/AccessibilityAction;

    invoke-direct {v3, v1, v0}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-interface {p1, v2, v3}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->T:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_3

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->a:[Lkotlin/reflect/KProperty;

    sget-object v0, Landroidx/compose/ui/semantics/SemanticsActions;->e:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-interface {p1, v0, p0}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final W1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Z1()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->N:Landroidx/compose/foundation/gestures/DefaultFlingBehavior;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;

    invoke-direct {v2, v0}, Landroidx/compose/animation/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    invoke-static {v2}, Landroidx/compose/animation/core/DecayAnimationSpecKt;->c(Landroidx/compose/animation/core/FloatDecayAnimationSpec;)Landroidx/compose/animation/core/DecayAnimationSpec;

    move-result-object v0

    iput-object v0, v1, Landroidx/compose/foundation/gestures/DefaultFlingBehavior;->a:Landroidx/compose/animation/core/DecayAnimationSpec;

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    iput-object v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-eqz v0, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    iput-object p0, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->c:Landroidx/compose/ui/unit/Density;

    :cond_2
    return-void
.end method

.method public final b1(Landroid/view/KeyEvent;)Z
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->a(Landroid/view/KeyEvent;)J

    move-result-wide v2

    sget-object v0, Landroidx/compose/ui/input/key/Key;->a:Landroidx/compose/ui/input/key/Key$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v4, Landroidx/compose/ui/input/key/Key;->E:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v2

    sget-wide v4, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    invoke-static {p1}, Landroidx/compose/ui/input/key/KeyEvent_androidKt;->b(Landroid/view/KeyEvent;)I

    move-result v0

    sget-object v2, Landroidx/compose/ui/input/key/KeyEventType;->a:Landroidx/compose/ui/input/key/KeyEventType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/key/KeyEventType;->c:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->O:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v0, v0, Landroidx/compose/foundation/gestures/ScrollingLogic;->d:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v1, v3

    :cond_1
    const/4 v0, 0x0

    const/16 v2, 0x20

    const-wide v4, 0xffffffffL

    iget-object v6, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->R:Landroidx/compose/foundation/gestures/ContentInViewNode;

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->i2()J

    move-result-wide v6

    and-long/2addr v6, v4

    long-to-int v1, v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v6

    sget-wide v8, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_2

    int-to-float p1, v1

    goto :goto_0

    :cond_2
    int-to-float p1, v1

    neg-float p1, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v6, p1

    shl-long/2addr v0, v2

    and-long/2addr v4, v6

    or-long/2addr v0, v4

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroidx/compose/foundation/gestures/ContentInViewNode;->i2()J

    move-result-wide v6

    shr-long/2addr v6, v2

    long-to-int v1, v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-static {p1}, Landroidx/compose/ui/input/key/Key_androidKt;->a(I)J

    move-result-wide v6

    sget-wide v8, Landroidx/compose/ui/input/key/Key;->D:J

    invoke-static {v6, v7, v8, v9}, Landroidx/compose/ui/input/key/Key;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    int-to-float p1, v1

    goto :goto_1

    :cond_4
    int-to-float p1, v1

    neg-float p1, p1

    :goto_1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v6, p1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    shl-long/2addr v6, v2

    and-long/2addr v0, v4

    or-long/2addr v0, v6

    sget-object p1, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v2, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v1, v4}, Landroidx/compose/foundation/gestures/ScrollableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/gestures/ScrollableNode;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v4, v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return v3

    :cond_5
    return v1
.end method

.method public final f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 18

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p3

    iget-object v11, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->a:Ljava/util/List;

    move-object v0, v11

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v4, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->s:Lkotlin/jvm/functions/Function1;

    iget v3, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->i:I

    new-instance v5, Landroidx/compose/ui/input/pointer/PointerType;

    invoke-direct {v5, v3}, Landroidx/compose/ui/input/pointer/PointerType;-><init>(I)V

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-super/range {p0 .. p4}, Landroidx/compose/foundation/gestures/DragGestureNode;->f0(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v0, :cond_2

    invoke-static {v2}, Landroidx/compose/foundation/GestureNodeKt;->a(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v0, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->v:Landroidx/compose/ui/node/DelegatableNode;

    :cond_2
    iget-boolean v0, v2, Landroidx/compose/foundation/gestures/DragGestureNode;->t:Z

    if-eqz v0, :cond_12

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v14, 0x0

    iget-object v15, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->O:Landroidx/compose/foundation/gestures/ScrollingLogic;

    if-ne v8, v0, :cond_4

    iget v0, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->g:I

    if-ne v0, v1, :cond_4

    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    new-instance v1, Landroidx/compose/foundation/gestures/AndroidConfig;

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNode_androidKt;->a(Landroidx/compose/ui/node/DelegatableNode;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/compose/foundation/gestures/AndroidConfig;-><init>(Landroid/view/ViewConfiguration;)V

    move-object v3, v0

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$ensureMouseWheelScrollingLogicInitialized$1;

    const-string v5, "onWheelScrollStopped-TH1AsA0(J)V"

    const/4 v6, 0x4

    move-object v4, v1

    const/4 v1, 0x2

    move-object/from16 v16, v3

    const-class v3, Landroidx/compose/foundation/gestures/ScrollableNode;

    move-object/from16 v17, v4

    const-string v4, "onWheelScrollStopped"

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    invoke-direct {v12, v15, v13, v0, v1}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Landroidx/compose/foundation/gestures/ScrollConfig;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V

    iput-object v12, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    :cond_3
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->h:Lkotlinx/coroutines/Job;

    if-nez v3, :cond_4

    new-instance v3, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;

    invoke-direct {v3, v0, v14}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v14, v14, v3, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->h:Lkotlinx/coroutines/Job;

    :cond_4
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->V:Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;

    if-eqz v0, :cond_8

    iget v1, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/input/pointer/PointerEventType;->g:I

    if-ne v1, v3, :cond_8

    move-object v1, v11

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_6

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v8, v1, :cond_7

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0, v7, v9, v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    invoke-static {v7}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_7
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v8, v1, :cond_8

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    if-nez v1, :cond_8

    invoke-virtual {v0, v7, v9, v10}, Landroidx/compose/foundation/gestures/MouseWheelScrollingLogic;->f(Landroidx/compose/ui/input/pointer/PointerEvent;J)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v7}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_8
    :goto_3
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v8, v0, :cond_c

    iget v0, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->k:I

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    iget v0, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->l:I

    if-ne v0, v1, :cond_a

    goto :goto_4

    :cond_a
    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->m:I

    if-ne v0, v1, :cond_c

    :goto_4
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-nez v0, :cond_b

    new-instance v9, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    new-instance v0, Landroidx/compose/foundation/gestures/ScrollableNode$ensureTrackpadScrollingLogicInitialized$1;

    const-string v5, "onTrackpadScrollStopped-TH1AsA0(J)V"

    const/4 v6, 0x4

    const/4 v1, 0x2

    const-class v3, Landroidx/compose/foundation/gestures/ScrollableNode;

    const-string v4, "onTrackpadScrollStopped"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/unit/Density;

    invoke-direct {v9, v15, v0, v1}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/unit/Density;)V

    iput-object v9, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    :cond_b
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-eqz v0, :cond_c

    invoke-virtual {v2}, Landroidx/compose/ui/Modifier$Node;->V1()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    iget-object v3, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->g:Lkotlinx/coroutines/Job;

    if-nez v3, :cond_c

    new-instance v3, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;

    invoke-direct {v3, v0, v14}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic$startReceivingEvents$1;-><init>(Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v14, v14, v3, v4}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->g:Lkotlinx/coroutines/Job;

    :cond_c
    iget-object v0, v2, Landroidx/compose/foundation/gestures/ScrollableNode;->W:Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;

    if-eqz v0, :cond_12

    iget v1, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventType;->a:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/ui/input/pointer/PointerEventType;->k:I

    if-ne v1, v2, :cond_d

    goto :goto_5

    :cond_d
    iget v1, v7, Landroidx/compose/ui/input/pointer/PointerEvent;->f:I

    sget v2, Landroidx/compose/ui/input/pointer/PointerEventType;->l:I

    if-ne v1, v2, :cond_e

    goto :goto_5

    :cond_e
    sget v2, Landroidx/compose/ui/input/pointer/PointerEventType;->m:I

    if-ne v1, v2, :cond_12

    :goto_5
    move-object v1, v11

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v1, :cond_10

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputChange;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_10
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v8, v1, :cond_11

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    if-eqz v1, :cond_11

    invoke-virtual {v0, v7}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->d(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    invoke-static {v7}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_11
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne v8, v1, :cond_12

    iget-boolean v1, v0, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->d:Z

    if-nez v1, :cond_12

    invoke-virtual {v0, v7}, Landroidx/compose/foundation/gestures/TrackpadScrollingLogic;->d(Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {v7}, Landroidx/compose/foundation/gestures/NonTouchScrollingLogic;->a(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_12
    :goto_7
    return-void
.end method

.method public final o2(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/compose/foundation/MutatePriority;->UserInput:Landroidx/compose/foundation/MutatePriority;

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;

    const/4 v2, 0x0

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->O:Landroidx/compose/foundation/gestures/ScrollingLogic;

    invoke-direct {v1, p0, v2, p1}, Landroidx/compose/foundation/gestures/ScrollableNode$drag$2$1;-><init>(Landroidx/compose/foundation/gestures/ScrollingLogic;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function2;)V

    check-cast p2, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ScrollingLogic;->h(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final q0(J)V
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->g(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/node/Owner;->x()V

    return-void
.end method

.method public final t2(J)V
    .locals 0

    return-void
.end method

.method public final u2(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->M:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->d()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Landroidx/compose/foundation/gestures/ScrollableNode$onDragStopped$1;-><init>(Landroidx/compose/foundation/gestures/DragEvent$DragStopped;Landroidx/compose/foundation/gestures/ScrollableNode;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final z2()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollableNode;->O:Landroidx/compose/foundation/gestures/ScrollingLogic;

    iget-object v0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->a:Landroidx/compose/foundation/gestures/ScrollableState;

    invoke-interface {v0}, Landroidx/compose/foundation/gestures/ScrollableState;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/gestures/ScrollingLogic;->b:Landroidx/compose/foundation/OverscrollEffect;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/foundation/OverscrollEffect;->n()Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
