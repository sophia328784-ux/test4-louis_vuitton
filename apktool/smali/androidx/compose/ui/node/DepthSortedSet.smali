.class public final Landroidx/compose/ui/node/DepthSortedSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/compose/ui/node/DepthSortedSet;",
        "",
        "",
        "extraAssertions",
        "<init>",
        "(Z)V",
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


# instance fields
.field public final a:Z

.field public b:Landroidx/collection/MutableObjectIntMap;

.field public final c:Landroidx/compose/ui/node/SortedSet;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    new-instance p1, Landroidx/compose/ui/node/SortedSet;

    sget-object v0, Landroidx/compose/ui/node/DepthSortedSetKt;->a:Landroidx/compose/ui/node/DepthSortedSetKt$DepthComparator$1;

    invoke-direct {p1, v0}, Landroidx/compose/ui/node/SortedSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Landroidx/compose/ui/node/DepthSortedSet;->c:Landroidx/compose/ui/node/SortedSet;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.add called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    if-nez v0, :cond_1

    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->a()Landroidx/collection/MutableObjectIntMap;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x7fffffff

    if-ltz v1, :cond_2

    iget-object v3, v0, Landroidx/collection/ObjectIntMap;->c:[I

    aget v1, v3, v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget v3, p1, Landroidx/compose/ui/node/LayoutNode;->r:I

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v3, p1}, Landroidx/collection/MutableObjectIntMap;->h(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "invalid node depth"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->c:Landroidx/compose/ui/node/SortedSet;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->c:Landroidx/compose/ui/node/SortedSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    if-nez v1, :cond_0

    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->a()Landroidx/collection/MutableObjectIntMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-ne v0, p0, :cond_2

    return v0

    :cond_2
    const-string p0, "inconsistency in TreeSet"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_3
    return v0
.end method

.method public final c(Landroidx/compose/ui/node/LayoutNode;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DepthSortedSet.remove called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/DepthSortedSet;->c:Landroidx/compose/ui/node/SortedSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->a:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    if-nez v1, :cond_1

    invoke-static {}, Landroidx/collection/ObjectIntMapKt;->a()Landroidx/collection/MutableObjectIntMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->b:Landroidx/collection/MutableObjectIntMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->b(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, p1}, Landroidx/collection/ObjectIntMap;->a(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroidx/collection/MutableObjectIntMap;->g(I)V

    :cond_2
    if-eqz v0, :cond_3

    iget p0, p1, Landroidx/compose/ui/node/LayoutNode;->r:I

    goto :goto_0

    :cond_3
    const p0, 0x7fffffff

    :goto_0
    if-ne v1, p0, :cond_4

    return v0

    :cond_4
    const-string p0, "invalid node depth"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    :cond_5
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/DepthSortedSet;->c:Landroidx/compose/ui/node/SortedSet;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
