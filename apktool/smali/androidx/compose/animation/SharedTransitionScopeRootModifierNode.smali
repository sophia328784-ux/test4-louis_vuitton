.class final Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/node/DrawModifierNode;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/animation/SharedTransitionScopeImpl;",
        "sharedScope",
        "<init>",
        "(Landroidx/compose/animation/SharedTransitionScopeImpl;)V",
        "animation"
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
.field public p:Landroidx/compose/animation/SharedTransitionScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/SharedTransitionScopeImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    return-void
.end method


# virtual methods
.method public final Z1()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    new-instance v1, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode$onAttach$1;

    invoke-direct {v1, p0}, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode$onAttach$1;-><init>(Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a2()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final e(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    iget p3, p2, Landroidx/compose/ui/layout/Placeable;->b:I

    iget p4, p2, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode$measure$1;

    invoke-direct {v0, p1, p0, p2}, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode$measure$1;-><init>(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;Landroidx/compose/ui/layout/Placeable;)V

    invoke-static {p1, p3, p4, v0}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final j(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->R1()V

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScopeImpl;->h:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Landroidx/compose/animation/SharedTransitionScopeImpl$drawInOverlay$$inlined$sortBy$1;

    invoke-direct {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl$drawInOverlay$$inlined$sortBy$1;-><init>()V

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/LayerRenderer;

    invoke-interface {v2, p1}, Landroidx/compose/animation/LayerRenderer;->b(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final y0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    invoke-virtual {v0}, Landroidx/compose/animation/SharedTransitionScopeImpl;->a()V

    iget-object v0, p0, Landroidx/compose/animation/SharedTransitionScopeRootModifierNode;->p:Landroidx/compose/animation/SharedTransitionScopeImpl;

    iget-object v0, v0, Landroidx/compose/animation/SharedTransitionScopeImpl;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
