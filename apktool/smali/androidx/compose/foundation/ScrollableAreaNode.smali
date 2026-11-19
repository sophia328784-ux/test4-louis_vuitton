.class final Landroidx/compose/foundation/ScrollableAreaNode;
.super Landroidx/compose/ui/node/DelegatingNode;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BW\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/compose/foundation/ScrollableAreaNode;",
        "Landroidx/compose/ui/node/DelegatingNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/foundation/gestures/ScrollableState;",
        "state",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "orientation",
        "",
        "enabled",
        "reverseScrolling",
        "Landroidx/compose/foundation/gestures/FlingBehavior;",
        "flingBehavior",
        "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
        "interactionSource",
        "Landroidx/compose/foundation/gestures/BringIntoViewSpec;",
        "bringIntoViewSpec",
        "useLocalOverscrollFactory",
        "Landroidx/compose/foundation/OverscrollEffect;",
        "userProvidedOverscrollEffect",
        "<init>",
        "(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ZLandroidx/compose/foundation/OverscrollEffect;)V",
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
.field public A:Landroidx/compose/foundation/gestures/ScrollableNode;

.field public B:Landroidx/compose/ui/node/DelegatableNode;

.field public C:Landroidx/compose/foundation/OverscrollFactory;

.field public D:Landroidx/compose/foundation/OverscrollEffect;

.field public E:Z

.field public r:Landroidx/compose/foundation/gestures/ScrollableState;

.field public s:Landroidx/compose/foundation/gestures/Orientation;

.field public t:Z

.field public u:Z

.field public v:Landroidx/compose/foundation/gestures/FlingBehavior;

.field public w:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public x:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

.field public y:Z

.field public z:Landroidx/compose/foundation/OverscrollEffect;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ZLandroidx/compose/foundation/OverscrollEffect;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/DelegatingNode;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->r:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p2, p0, Landroidx/compose/foundation/ScrollableAreaNode;->s:Landroidx/compose/foundation/gestures/Orientation;

    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->t:Z

    iput-boolean p4, p0, Landroidx/compose/foundation/ScrollableAreaNode;->u:Z

    iput-object p5, p0, Landroidx/compose/foundation/ScrollableAreaNode;->v:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p6, p0, Landroidx/compose/foundation/ScrollableAreaNode;->w:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p7, p0, Landroidx/compose/foundation/ScrollableAreaNode;->x:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    iput-boolean p8, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    iput-object p9, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    return-void
.end method


# virtual methods
.method public final W1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Z1()V
    .locals 10

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollableAreaNode;->l2()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->E:Z

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollableAreaNode;->k2()V

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->A:Landroidx/compose/foundation/gestures/ScrollableNode;

    if-nez v0, :cond_1

    new-instance v1, Landroidx/compose/foundation/gestures/ScrollableNode;

    iget-object v2, p0, Landroidx/compose/foundation/ScrollableAreaNode;->r:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->D:Landroidx/compose/foundation/OverscrollEffect;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    goto :goto_0

    :goto_1
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaNode;->v:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v5, p0, Landroidx/compose/foundation/ScrollableAreaNode;->s:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v6, p0, Landroidx/compose/foundation/ScrollableAreaNode;->t:Z

    iget-boolean v7, p0, Landroidx/compose/foundation/ScrollableAreaNode;->E:Z

    iget-object v8, p0, Landroidx/compose/foundation/ScrollableAreaNode;->w:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, p0, Landroidx/compose/foundation/ScrollableAreaNode;->x:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-direct/range {v1 .. v9}, Landroidx/compose/foundation/gestures/ScrollableNode;-><init>(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->A:Landroidx/compose/foundation/gestures/ScrollableNode;

    :cond_1
    return-void
.end method

.method public final a2()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->i2(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    return-void
.end method

.method public final k2()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/c;-><init>(Landroidx/compose/ui/Modifier$Node;I)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->D:Landroidx/compose/foundation/OverscrollEffect;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/compose/foundation/OverscrollEffect;->l()Landroidx/compose/ui/node/DelegatableNode;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    iput-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    return-void

    :cond_2
    invoke-interface {v0}, Landroidx/compose/ui/node/DelegatableNode;->l()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/DelegatingNode;->h2(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;

    :cond_3
    return-void
.end method

.method public final l2()Z
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/unit/LayoutDirection;

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->s:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean p0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->u:Z

    xor-int/lit8 v2, p0, 0x1

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v3, :cond_1

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-eq v1, v0, :cond_1

    return p0

    :cond_1
    return v2
.end method

.method public final m2(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ZLandroidx/compose/foundation/OverscrollEffect;)V
    .locals 9

    move-object/from16 v0, p9

    iput-object p1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->r:Landroidx/compose/foundation/gestures/ScrollableState;

    iput-object p2, p0, Landroidx/compose/foundation/ScrollableAreaNode;->s:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p3, :cond_0

    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    :cond_2
    iget-object p3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Landroidx/compose/ui/node/DelegatingNode;->i2(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_3
    const/4 p3, 0x0

    iput-object p3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollableAreaNode;->k2()V

    :cond_4
    iput-boolean p4, p0, Landroidx/compose/foundation/ScrollableAreaNode;->t:Z

    move/from16 p3, p8

    iput-boolean p3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->u:Z

    iput-object p5, p0, Landroidx/compose/foundation/ScrollableAreaNode;->v:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p6, p0, Landroidx/compose/foundation/ScrollableAreaNode;->w:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v8, p7

    iput-object v8, p0, Landroidx/compose/foundation/ScrollableAreaNode;->x:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollableAreaNode;->l2()Z

    move-result v5

    iput-boolean v5, p0, Landroidx/compose/foundation/ScrollableAreaNode;->E:Z

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->A:Landroidx/compose/foundation/gestures/ScrollableNode;

    if-eqz v0, :cond_6

    iget-boolean p3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    if-eqz p3, :cond_5

    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->D:Landroidx/compose/foundation/OverscrollEffect;

    :goto_2
    move-object v3, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    goto :goto_3

    :cond_5
    iget-object p0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v8}, Landroidx/compose/foundation/gestures/ScrollableNode;->C2(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    :cond_6
    return-void
.end method

.method public final p0()V
    .locals 12

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollableAreaNode;->l2()Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->E:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->E:Z

    iget-object v3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->r:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaNode;->s:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v5, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    if-eqz v5, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->D:Landroidx/compose/foundation/OverscrollEffect;

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    goto :goto_0

    :goto_1
    iget-boolean v6, p0, Landroidx/compose/foundation/ScrollableAreaNode;->t:Z

    iget-boolean v10, p0, Landroidx/compose/foundation/ScrollableAreaNode;->u:Z

    iget-object v7, p0, Landroidx/compose/foundation/ScrollableAreaNode;->v:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v8, p0, Landroidx/compose/foundation/ScrollableAreaNode;->w:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v9, p0, Landroidx/compose/foundation/ScrollableAreaNode;->x:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    move-object v2, p0

    invoke-virtual/range {v2 .. v11}, Landroidx/compose/foundation/ScrollableAreaNode;->m2(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;ZLandroidx/compose/foundation/OverscrollEffect;)V

    :cond_1
    return-void
.end method

.method public final y0()V
    .locals 11

    sget-object v0, Landroidx/compose/foundation/OverscrollKt;->a:Landroidx/compose/runtime/ComputedProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/OverscrollFactory;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->C:Landroidx/compose/foundation/OverscrollFactory;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->C:Landroidx/compose/foundation/OverscrollFactory;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->D:Landroidx/compose/foundation/OverscrollEffect;

    iget-object v1, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/DelegatingNode;->i2(Landroidx/compose/ui/node/DelegatableNode;)V

    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->B:Landroidx/compose/ui/node/DelegatableNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/ScrollableAreaNode;->k2()V

    iget-object v2, p0, Landroidx/compose/foundation/ScrollableAreaNode;->A:Landroidx/compose/foundation/gestures/ScrollableNode;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/compose/foundation/ScrollableAreaNode;->r:Landroidx/compose/foundation/gestures/ScrollableState;

    iget-object v4, p0, Landroidx/compose/foundation/ScrollableAreaNode;->s:Landroidx/compose/foundation/gestures/Orientation;

    iget-boolean v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->D:Landroidx/compose/foundation/OverscrollEffect;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/ScrollableAreaNode;->z:Landroidx/compose/foundation/OverscrollEffect;

    goto :goto_0

    :goto_1
    iget-boolean v6, p0, Landroidx/compose/foundation/ScrollableAreaNode;->t:Z

    iget-boolean v7, p0, Landroidx/compose/foundation/ScrollableAreaNode;->E:Z

    iget-object v8, p0, Landroidx/compose/foundation/ScrollableAreaNode;->v:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v9, p0, Landroidx/compose/foundation/ScrollableAreaNode;->w:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v10, p0, Landroidx/compose/foundation/ScrollableAreaNode;->x:Landroidx/compose/foundation/gestures/BringIntoViewSpec;

    invoke-virtual/range {v2 .. v10}, Landroidx/compose/foundation/gestures/ScrollableNode;->C2(Landroidx/compose/foundation/gestures/ScrollableState;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/OverscrollEffect;ZZLandroidx/compose/foundation/gestures/FlingBehavior;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/gestures/BringIntoViewSpec;)V

    :cond_2
    return-void
.end method
