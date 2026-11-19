.class public abstract Landroidx/compose/ui/graphics/vector/VectorPainterKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui"
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
.method public static final a(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V
    .locals 7

    iget-object v0, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorNode;

    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathComponent;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorPath;

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->c:Ljava/util/List;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->d:Ljava/util/List;

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->n:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->d:I

    iget-object v6, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->s:Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {v6, v5}, Landroidx/compose/ui/graphics/AndroidPath;->h(I)V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->e:Landroidx/compose/ui/graphics/Brush;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->b:Landroidx/compose/ui/graphics/Brush;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->f:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->c:F

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->g:Landroidx/compose/ui/graphics/Brush;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->g:Landroidx/compose/ui/graphics/Brush;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->h:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->e:F

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->i:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->f:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->j:I

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->h:I

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->k:I

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->i:I

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->l:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->j:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->o:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->m:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->k:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->n:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->l:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v2, v2, Landroidx/compose/ui/graphics/vector/VectorPath;->o:F

    iput v2, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->m:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/PathComponent;->p:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->e(ILandroidx/compose/ui/graphics/vector/VNode;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->b:Ljava/lang/String;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->k:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->c:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->l:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->f:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->o:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->g:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->p:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->h:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->q:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->i:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->r:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->d:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->m:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->e:F

    iput v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->n:F

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->s:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    iget-object v5, v2, Landroidx/compose/ui/graphics/vector/VectorGroup;->j:Ljava/util/List;

    iput-object v5, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->f:Ljava/util/List;

    iput-boolean v4, v3, Landroidx/compose/ui/graphics/vector/GroupComponent;->g:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/vector/VNode;->c()V

    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->a(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->e(ILandroidx/compose/ui/graphics/vector/VNode;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 12

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/Density;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->j:I

    int-to-float v1, v1

    invoke-interface {v0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v3, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    const-wide v6, 0xffffffffL

    and-long/2addr v1, v6

    or-long/2addr v1, v3

    invoke-interface {p1, v1, v2}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_4

    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->f:Landroidx/compose/ui/graphics/vector/VectorGroup;

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->a(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    iget v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->b:F

    iget v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->c:F

    invoke-interface {v0, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    invoke-interface {v0, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    shl-long/2addr v2, v5

    and-long/2addr v8, v6

    or-long/2addr v2, v8

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->d:F

    iget v4, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->e:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_1

    shr-long v8, v2, v5

    long-to-int v0, v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_2

    and-long v8, v2, v6

    long-to-int v4, v8

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    :cond_2
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v10, v0

    shl-long v4, v8, v5

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->a:Ljava/lang/String;

    iget-wide v6, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->g:J

    iget v8, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->h:I

    const-wide/16 v9, 0x10

    cmp-long v9, v6, v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    sget-object v9, Landroidx/compose/ui/graphics/ColorFilter;->b:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/compose/ui/graphics/BlendModeColorFilter;

    invoke-direct {v9, v6, v7, v8, v10}, Landroidx/compose/ui/graphics/BlendModeColorFilter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v9

    :cond_3
    iget-boolean p0, p0, Landroidx/compose/ui/graphics/vector/ImageVector;->i:Z

    new-instance v6, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v6, v2, v3}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->g:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object v2, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->h:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object p0, v0, Landroidx/compose/ui/graphics/vector/VectorPainter;->i:Landroidx/compose/ui/graphics/vector/VectorComponent;

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->g:Landroidx/compose/runtime/MutableState;

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->i:Landroidx/compose/runtime/MutableState;

    new-instance v3, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v3, v4, v5}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    check-cast v2, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorComponent;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :cond_4
    check-cast v2, Landroidx/compose/ui/graphics/vector/VectorPainter;

    return-object v2
.end method
