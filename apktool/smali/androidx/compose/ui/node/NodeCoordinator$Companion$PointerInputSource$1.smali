.class public final Landroidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/NodeCoordinator;
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
        "androidx/compose/ui/node/NodeCoordinator$Companion$PointerInputSource$1",
        "Landroidx/compose/ui/node/NodeCoordinator$HitTestSource;",
        "ui"
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
.method public final a()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 0

    invoke-virtual/range {p1 .. p6}, Landroidx/compose/ui/node/LayoutNode;->S(JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void
.end method

.method public final c(Landroidx/compose/ui/Modifier$Node;)Z
    .locals 7

    const/4 p0, 0x0

    move-object v0, p0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v2, :cond_0

    check-cast p1, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {p1}, Landroidx/compose/ui/node/PointerInputModifierNode;->m0()V

    goto :goto_3

    :cond_0
    iget v2, p1, Landroidx/compose/ui/Modifier$Node;->d:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    instance-of v2, p1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v2, v2, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v4, v1

    :goto_1
    const/4 v5, 0x1

    if-eqz v2, :cond_5

    iget v6, v2, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v6, v3

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    move-object p1, v2

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v5, v3, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v0, v5, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object p1, p0

    :cond_3
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_6

    goto :goto_0

    :cond_6
    :goto_3
    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    goto :goto_0

    :cond_7
    return v1
.end method

.method public final d(Landroidx/compose/ui/node/HitTestResult;Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 8

    iget-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->H:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->d:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x10

    invoke-static {p2}, Landroidx/compose/ui/node/NodeKindKt;->g(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->w1(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->o:Z

    if-nez v1, :cond_1

    const-string v1, "visitLocalDescendants called on an unattached node"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->b:Landroidx/compose/ui/Modifier$Node;

    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->e:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_a

    :goto_0
    if-eqz p0, :cond_a

    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_9

    instance-of v4, v2, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    check-cast v2, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {v2}, Landroidx/compose/ui/node/PointerInputModifierNode;->H1()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p1, Landroidx/compose/ui/node/HitTestResult;->b:Landroidx/collection/MutableObjectList;

    iget p0, p0, Landroidx/collection/ObjectList;->b:I

    sub-int/2addr p0, v5

    iput p0, p1, Landroidx/compose/ui/node/HitTestResult;->d:I

    return v5

    :cond_2
    iget v4, v2, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v4, p2

    if-eqz v4, :cond_8

    instance-of v4, v2, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_8

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->q:Landroidx/compose/ui/Modifier$Node;

    move v6, v0

    :goto_2
    if-eqz v4, :cond_7

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->d:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_3

    move-object v2, v4

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, p2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v7, v0}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_5
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_7
    if-ne v6, v5, :cond_8

    goto :goto_1

    :cond_8
    invoke-static {v3}, Landroidx/compose/ui/node/DelegatableNodeKt;->b(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    goto :goto_1

    :cond_9
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->g:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_a
    :goto_4
    return v0
.end method

.method public final e(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
