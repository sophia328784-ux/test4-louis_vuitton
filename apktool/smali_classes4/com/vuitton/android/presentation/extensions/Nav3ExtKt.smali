.class public abstract Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/navigation3/runtime/NavBackStack;->clear()V

    invoke-virtual {p0, p1}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    return-void
.end method

.method public static final b(Landroidx/navigation3/runtime/NavBackStack;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation3/runtime/NavBackStack;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->remove(I)Ljava/lang/Object;

    return v1
.end method

.method public static final c(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;Z)Z
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation3/runtime/NavBackStack;->b:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/navigation3/runtime/NavBackStack;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    move-object v2, v1

    check-cast v2, Landroidx/compose/runtime/snapshots/StateListIterator;

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListIterator;->hasPrevious()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/StateListIterator;->previous()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/navigation3/runtime/NavKey;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget p1, v2, Landroidx/compose/runtime/snapshots/StateListIterator;->c:I

    add-int/2addr p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    const/4 v1, 0x0

    if-ne p1, v5, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :goto_1
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result p2

    if-le p2, p1, :cond_4

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    return v1
.end method
