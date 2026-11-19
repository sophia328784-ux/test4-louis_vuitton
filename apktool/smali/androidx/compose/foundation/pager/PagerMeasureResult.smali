.class public final Landroidx/compose/foundation/pager/PagerMeasureResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/pager/PagerLayoutInfo;
.implements Landroidx/compose/ui/layout/MeasureResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u00d1\u0001\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0006\u0012\u0006\u0010\u0016\u001a\u00020\u000e\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u000e\u0012\u000e\u0008\u0002\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u000e\u0008\u0002\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\u0006\u0010 \u001a\u00020\u001f\u0012\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Landroidx/compose/foundation/pager/PagerMeasureResult;",
        "Landroidx/compose/foundation/pager/PagerLayoutInfo;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "",
        "Landroidx/compose/foundation/pager/MeasuredPage;",
        "visiblePagesInfo",
        "",
        "pageSize",
        "pageSpacing",
        "afterContentPadding",
        "Landroidx/compose/foundation/gestures/Orientation;",
        "orientation",
        "viewportStartOffset",
        "viewportEndOffset",
        "",
        "reverseLayout",
        "beyondViewportPageCount",
        "firstVisiblePage",
        "currentPage",
        "",
        "currentPageOffsetFraction",
        "firstVisiblePageScrollOffset",
        "canScrollForward",
        "Landroidx/compose/foundation/gestures/snapping/SnapPosition;",
        "snapPosition",
        "measureResult",
        "remeasureNeeded",
        "extraPagesBefore",
        "extraPagesAfter",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "Landroidx/compose/ui/unit/Constraints;",
        "childConstraints",
        "<init>",
        "(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Landroidx/compose/foundation/gestures/Orientation;

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:I

.field public final j:Landroidx/compose/foundation/pager/MeasuredPage;

.field public final k:Landroidx/compose/foundation/pager/MeasuredPage;

.field public final l:F

.field public final m:I

.field public final n:Z

.field public final o:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

.field public final p:Landroidx/compose/ui/layout/MeasureResult;

.field public final q:Z

.field public final r:Ljava/util/List;

.field public final s:Ljava/util/List;

.field public final t:Lkotlinx/coroutines/CoroutineScope;

.field public final u:Landroidx/compose/ui/unit/Density;

.field public final v:J


# direct methods
.method public constructor <init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    const/high16 v0, 0x20000

    and-int v0, p24, v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v19, v0

    goto :goto_0

    :cond_0
    move-object/from16 v19, p18

    :goto_0
    const/high16 v0, 0x40000

    and-int v0, p24, v0

    if-eqz v0, :cond_1

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v20, v0

    goto :goto_1

    :cond_1
    move-object/from16 v20, p19

    :goto_1
    const/16 v25, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-wide/from16 v23, p22

    invoke-direct/range {v1 .. v25}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    .line 76
    iput p2, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    .line 77
    iput p3, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    .line 78
    iput p4, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->d:I

    .line 79
    iput-object p5, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    .line 80
    iput p6, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    .line 81
    iput p7, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->g:I

    .line 82
    iput-boolean p8, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->h:Z

    .line 83
    iput p9, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->i:I

    .line 84
    iput-object p10, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->j:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 85
    iput-object p11, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->k:Landroidx/compose/foundation/pager/MeasuredPage;

    .line 86
    iput p12, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->l:F

    .line 87
    iput p13, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->m:I

    .line 88
    iput-boolean p14, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->n:Z

    .line 89
    iput-object p15, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->o:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-object/from16 p1, p16

    .line 90
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    move/from16 p1, p17

    .line 91
    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Z

    move-object/from16 p1, p18

    .line 92
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    move-object/from16 p1, p19

    .line 93
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Ljava/util/List;

    move-object/from16 p1, p20

    .line 94
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->t:Lkotlinx/coroutines/CoroutineScope;

    move-object/from16 p1, p21

    .line 95
    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->u:Landroidx/compose/ui/unit/Density;

    move-wide/from16 p1, p22

    .line 96
    iput-wide p1, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->v:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 6

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    sget-object p0, Landroidx/compose/ui/unit/IntSize;->b:Landroidx/compose/ui/unit/IntSize$Companion;

    return-wide v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->d:I

    return p0
.end method

.method public final c()Landroidx/compose/foundation/gestures/Orientation;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->h:Z

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    neg-int p0, p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    return p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result p0

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    return p0
.end method

.method public final i()Landroidx/compose/foundation/gestures/snapping/SnapPosition;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->o:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    return-object p0
.end method

.method public final j()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->j()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final k()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->k()V

    return-void
.end method

.method public final l()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->l()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method

.method public final m(I)Landroidx/compose/foundation/pager/PagerMeasureResult;
    .locals 34

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    iget v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    add-int/2addr v2, v3

    iget-boolean v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Z

    const/4 v4, 0x0

    if-nez v3, :cond_8

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->j:Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v5, :cond_8

    iget v5, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->m:I

    sub-int v6, v5, v1

    if-ltz v6, :cond_8

    if-ge v6, v2, :cond_8

    if-eqz v2, :cond_0

    int-to-float v6, v1

    int-to-float v7, v2

    div-float/2addr v6, v7

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iget v7, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->l:F

    sub-float v8, v7, v6

    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->k:Landroidx/compose/foundation/pager/MeasuredPage;

    if-eqz v9, :cond_8

    const/high16 v9, 0x3f000000    # 0.5f

    cmpl-float v9, v8, v9

    if-gez v9, :cond_8

    const/high16 v9, -0x41000000    # -0.5f

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    iget v10, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->g:I

    iget v11, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    if-gez v1, :cond_2

    iget v8, v8, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    add-int/2addr v8, v2

    sub-int/2addr v8, v11

    iget v9, v9, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    add-int/2addr v9, v2

    sub-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v8, v1

    if-le v2, v8, :cond_8

    goto :goto_1

    :cond_2
    iget v2, v8, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    sub-int/2addr v11, v2

    iget v2, v9, Landroidx/compose/foundation/pager/MeasuredPage;->m:I

    sub-int/2addr v10, v2

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-le v2, v1, :cond_8

    :goto_1
    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    move v8, v4

    :goto_2
    if-ge v8, v2, :cond_3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->a(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v8, v4

    :goto_3
    if-ge v8, v3, :cond_4

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->a(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Ljava/util/List;

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v8, v4

    :goto_4
    if-ge v8, v3, :cond_5

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/compose/foundation/pager/MeasuredPage;

    invoke-virtual {v9, v1}, Landroidx/compose/foundation/pager/MeasuredPage;->a(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    new-instance v9, Landroidx/compose/foundation/pager/PagerMeasureResult;

    sub-float v21, v7, v6

    sub-int v22, v5, v1

    iget-boolean v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->n:Z

    if-nez v2, :cond_7

    if-lez v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    move/from16 v23, v4

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v4, 0x1

    goto :goto_5

    :goto_7
    iget-wide v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->v:J

    const/16 v33, 0x0

    iget-object v10, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->a:Ljava/util/List;

    iget v11, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->b:I

    iget v12, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->c:I

    iget v13, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->d:I

    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->e:Landroidx/compose/foundation/gestures/Orientation;

    iget v15, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->f:I

    iget v3, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->g:I

    iget-boolean v4, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->h:Z

    iget v5, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->i:I

    iget-object v6, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->j:Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v7, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->k:Landroidx/compose/foundation/pager/MeasuredPage;

    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->o:Landroidx/compose/foundation/gestures/snapping/SnapPosition;

    move-wide/from16 v31, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->p:Landroidx/compose/ui/layout/MeasureResult;

    iget-boolean v2, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->q:Z

    move-object/from16 v25, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->r:Ljava/util/List;

    move-object/from16 v27, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->s:Ljava/util/List;

    move-object/from16 v28, v1

    iget-object v1, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->t:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, v0, Landroidx/compose/foundation/pager/PagerMeasureResult;->u:Landroidx/compose/ui/unit/Density;

    move-object/from16 v30, v0

    move-object/from16 v29, v1

    move/from16 v26, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v24, v8

    invoke-direct/range {v9 .. v33}, Landroidx/compose/foundation/pager/PagerMeasureResult;-><init>(Ljava/util/List;IIILandroidx/compose/foundation/gestures/Orientation;IIZILandroidx/compose/foundation/pager/MeasuredPage;Landroidx/compose/foundation/pager/MeasuredPage;FIZLandroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/ui/layout/MeasureResult;ZLjava/util/List;Ljava/util/List;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_8
    :goto_8
    return-object v4
.end method
