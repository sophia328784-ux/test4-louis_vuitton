.class public final Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0095\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001a\u001a\u00020\u0003\u0012\u0006\u0010\u001b\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridItemInfo;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutMeasuredItem;",
        "",
        "index",
        "",
        "key",
        "",
        "isVertical",
        "crossAxisSize",
        "mainAxisSpacing",
        "reverseLayout",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "layoutDirection",
        "beforeContentPadding",
        "afterContentPadding",
        "",
        "Landroidx/compose/ui/layout/Placeable;",
        "placeables",
        "Landroidx/compose/ui/unit/IntOffset;",
        "visualOffset",
        "contentType",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;",
        "animator",
        "Landroidx/compose/ui/unit/Constraints;",
        "constraints",
        "lane",
        "span",
        "<init>",
        "(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:I

.field public final b:Ljava/lang/Object;

.field public final c:Z

.field public final d:I

.field public final e:Z

.field public final f:Landroidx/compose/ui/unit/LayoutDirection;

.field public final g:I

.field public final h:I

.field public final i:Ljava/util/List;

.field public final j:J

.field public final k:Ljava/lang/Object;

.field public final l:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

.field public final m:J

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:J

.field public v:J

.field public w:I

.field public x:I

.field public y:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;ZIIZLandroidx/compose/ui/unit/LayoutDirection;IILjava/util/List;JLjava/lang/Object;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    iput-object p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d:I

    iput-boolean p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->e:Z

    iput-object p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->f:Landroidx/compose/ui/unit/LayoutDirection;

    iput p8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->g:I

    iput p9, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->h:I

    iput-object p10, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i:Ljava/util/List;

    iput-wide p11, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j:J

    iput-object p13, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->k:Ljava/lang/Object;

    move-object/from16 p1, p14

    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->l:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    move-wide/from16 p1, p15

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->m:J

    move/from16 p1, p17

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->n:I

    move/from16 p1, p18

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->o:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    move-object p1, p10

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    move p4, p3

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-interface {p10, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroidx/compose/ui/layout/Placeable;

    iget-boolean p7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    if-eqz p7, :cond_0

    iget p6, p6, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_1

    :cond_0
    iget p6, p6, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_1
    invoke-static {p4, p6}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iput p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p:I

    add-int/2addr p5, p4

    if-gez p5, :cond_2

    goto :goto_2

    :cond_2
    move p2, p5

    :goto_2
    iput p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d:I

    const-wide p5, 0xffffffffL

    const/16 p3, 0x20

    if-eqz p1, :cond_3

    int-to-long p1, p2

    shl-long/2addr p1, p3

    int-to-long p3, p4

    and-long/2addr p3, p5

    or-long/2addr p1, p3

    sget-object p3, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    goto :goto_3

    :cond_3
    int-to-long v0, p4

    shl-long p3, v0, p3

    int-to-long p1, p2

    and-long/2addr p1, p5

    or-long/2addr p1, p3

    sget-object p3, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    :goto_3
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    sget-object p1, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->u:J

    return-wide v0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->m:J

    return-wide v0
.end method

.method public final d(IIII)V
    .locals 7

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r(IIIIII)V

    return-void
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->n:I

    return p0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:J

    return-wide v0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->y:Z

    return p0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->a:I

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->o:I

    return p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    return p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:I

    return p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->q:I

    return p0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/layout/Placeable;

    invoke-interface {p0}, Landroidx/compose/ui/layout/Measured;->e()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->y:Z

    return-void
.end method

.method public final o(I)J
    .locals 0

    iget-wide p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:J

    return-wide p0
.end method

.method public final p(J)I
    .locals 2

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    const-wide v0, 0xffffffffL

    and-long p0, p1, v0

    :goto_0
    long-to-int p0, p0

    return p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 p0, 0x20

    shr-long p0, p1, p0

    goto :goto_0
.end method

.method public final q(Landroidx/compose/ui/layout/Placeable$PlacementScope;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "position() should be called first"

    invoke-static {v2}, Landroidx/compose/foundation/internal/InlineClassHelperKt;->a(Ljava/lang/String;)V

    :goto_0
    iget-object v2, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    iget v6, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->s:I

    iget-boolean v7, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    if-eqz v7, :cond_1

    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_2

    :cond_1
    iget v8, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_2
    sub-int/2addr v6, v8

    iget v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->t:I

    iget-wide v9, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:J

    iget-object v11, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->l:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->b:Ljava/lang/Object;

    invoke-virtual {v11, v4, v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->a(ILjava/lang/Object;)Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;

    move-result-object v11

    if-eqz v11, :cond_7

    if-eqz p2, :cond_2

    iput-wide v9, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->r:J

    goto :goto_4

    :cond_2
    iget-wide v12, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->r:J

    sget-object v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->s:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v14, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->t:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->b(JJ)Z

    move-result v12

    if-nez v12, :cond_3

    iget-wide v12, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->r:J

    goto :goto_3

    :cond_3
    move-wide v12, v9

    :goto_3
    iget-object v14, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->q:Landroidx/compose/runtime/MutableState;

    check-cast v14, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v14}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/unit/IntOffset;

    iget-wide v14, v14, Landroidx/compose/ui/unit/IntOffset;->a:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v12

    invoke-virtual {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p(J)I

    move-result v14

    if-gt v14, v6, :cond_4

    invoke-virtual {v0, v12, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p(J)I

    move-result v14

    if-le v14, v6, :cond_5

    :cond_4
    invoke-virtual {v0, v9, v10}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p(J)I

    move-result v6

    if-lt v6, v8, :cond_6

    invoke-virtual {v0, v12, v13}, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->p(J)I

    move-result v6

    if-lt v6, v8, :cond_6

    :cond_5
    invoke-virtual {v11}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->b()V

    :cond_6
    move-wide v9, v12

    :goto_4
    iget-object v6, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->n:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    iget-boolean v8, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->e:Z

    if-eqz v8, :cond_c

    const/16 v8, 0x20

    sget-object v12, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    if-eqz v7, :cond_8

    shr-long v12, v9, v8

    long-to-int v12, v12

    goto :goto_7

    :cond_8
    shr-long v12, v9, v8

    long-to-int v12, v12

    iget v13, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    sub-int/2addr v13, v12

    if-eqz v7, :cond_9

    iget v12, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_6

    :cond_9
    iget v12, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_6
    sub-int v12, v13, v12

    :goto_7
    const-wide v13, 0xffffffffL

    if-eqz v7, :cond_b

    and-long/2addr v9, v13

    long-to-int v9, v9

    iget v10, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    sub-int/2addr v10, v9

    if-eqz v7, :cond_a

    iget v9, v5, Landroidx/compose/ui/layout/Placeable;->c:I

    goto :goto_8

    :cond_a
    iget v9, v5, Landroidx/compose/ui/layout/Placeable;->b:I

    :goto_8
    sub-int/2addr v10, v9

    :goto_9
    move v15, v8

    goto :goto_a

    :cond_b
    and-long/2addr v9, v13

    long-to-int v10, v9

    goto :goto_9

    :goto_a
    int-to-long v8, v12

    shl-long/2addr v8, v15

    move-wide v15, v13

    int-to-long v13, v10

    and-long v12, v13, v15

    or-long v9, v8, v12

    :cond_c
    iget-wide v12, v0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->j:J

    invoke-static {v9, v10, v12, v13}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v8

    if-nez p2, :cond_d

    if-eqz v11, :cond_d

    iput-wide v8, v11, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->m:J

    :cond_d
    if-eqz v7, :cond_f

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->c(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v10, v5, Landroidx/compose/ui/layout/Placeable;->f:J

    invoke-static {v8, v9, v10, v11}, Landroidx/compose/ui/unit/IntOffset;->d(JJ)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9, v6}, Landroidx/compose/ui/layout/Placeable;->o0(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_b

    :cond_e
    invoke-static {v1, v5, v8, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->H(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    goto :goto_b

    :cond_f
    if-eqz v6, :cond_10

    invoke-static {v1, v5, v8, v9, v6}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->C(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;JLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_b

    :cond_10
    invoke-static {v1, v5, v8, v9}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->B(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method public final r(IIIIII)V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->c:Z

    if-eqz v0, :cond_0

    move v1, p4

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->r:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    if-eqz v0, :cond_2

    iget-object p4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->f:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, v2, :cond_2

    sub-int/2addr p3, p2

    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->d:I

    sub-int p2, p3, p2

    :cond_2
    const-wide p3, 0xffffffffL

    const/16 v2, 0x20

    if-eqz v0, :cond_3

    int-to-long v3, p2

    shl-long v2, v3, v2

    int-to-long p1, p1

    and-long/2addr p1, p3

    or-long/2addr p1, v2

    sget-object p3, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    goto :goto_2

    :cond_3
    int-to-long v3, p1

    shl-long v2, v3, v2

    int-to-long p1, p2

    and-long/2addr p1, p3

    or-long/2addr p1, v2

    sget-object p3, Landroidx/compose/ui/unit/IntOffset;->b:Landroidx/compose/ui/unit/IntOffset$Companion;

    :goto_2
    iput-wide p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->v:J

    iput p5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->w:I

    iput p6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->x:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->g:I

    neg-int p1, p1

    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->s:I

    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->h:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridMeasuredItem;->t:I

    return-void
.end method
