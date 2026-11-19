.class public final Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/SharedTransitionScope$OverlayClip;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/SharedTransitionScopeKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/compose/animation/SharedTransitionScopeKt$ParentClip$1",
        "Landroidx/compose/animation/SharedTransitionScope$OverlayClip;",
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


# virtual methods
.method public final a(Landroidx/compose/animation/SharedTransitionScope$SharedContentState;)Landroidx/compose/ui/graphics/Path;
    .locals 1

    iget-object p0, p1, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->c:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedElementEntry;

    const-string p1, "Error: SharedContentState has not been added to a sharedElement/sharedBoundsmodifier yet. Therefore the internal state has not been initialized."

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->l:Landroidx/compose/animation/SharedElementEntry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->j:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->c:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/animation/SharedElementEntry;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/animation/SharedElementEntry;->k:Landroidx/compose/ui/graphics/Path;

    return-object p0

    :cond_1
    invoke-static {p1}, Lmd;->n(Ljava/lang/String;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-static {p1}, Lmd;->n(Ljava/lang/String;)V

    return-object v0
.end method
