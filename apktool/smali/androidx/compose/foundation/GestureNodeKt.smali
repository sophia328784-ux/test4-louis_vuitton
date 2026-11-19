.class public abstract Landroidx/compose/foundation/GestureNodeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/foundation/gestures/DragGestureNode;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/GestureNode;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/GestureNode;-><init>(Landroidx/compose/foundation/GestureConnection;)V

    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/node/DelegatingNode;)Landroidx/compose/foundation/GestureConnection;
    .locals 2

    sget-object v0, Landroidx/compose/foundation/GestureNode;->q:Landroidx/compose/foundation/GestureNode$TraverseKey;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/TraversableNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Ljava/lang/Object;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    instance-of v0, p0, Landroidx/compose/foundation/GestureNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/compose/foundation/GestureNode;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/GestureNode;->p:Landroidx/compose/foundation/GestureConnection;

    return-object p0

    :cond_1
    return-object v1
.end method
