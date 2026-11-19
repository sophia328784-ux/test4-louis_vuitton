.class public final synthetic Lid0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/unit/Dp;

.field public final synthetic c:Landroidx/compose/ui/unit/Dp;

.field public final synthetic d:Z

.field public final synthetic e:Landroidx/compose/ui/unit/Dp;

.field public final synthetic f:Landroidx/compose/ui/unit/Dp;

.field public final synthetic g:Landroidx/compose/ui/unit/Dp;

.field public final synthetic h:Landroidx/compose/ui/unit/Dp;

.field public final synthetic i:Landroidx/compose/ui/unit/Dp;

.field public final synthetic j:Landroidx/compose/ui/unit/Dp;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;ZLandroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;Landroidx/compose/ui/unit/Dp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid0;->b:Landroidx/compose/ui/unit/Dp;

    iput-object p2, p0, Lid0;->c:Landroidx/compose/ui/unit/Dp;

    iput-boolean p3, p0, Lid0;->d:Z

    iput-object p4, p0, Lid0;->e:Landroidx/compose/ui/unit/Dp;

    iput-object p5, p0, Lid0;->f:Landroidx/compose/ui/unit/Dp;

    iput-object p6, p0, Lid0;->g:Landroidx/compose/ui/unit/Dp;

    iput-object p7, p0, Lid0;->h:Landroidx/compose/ui/unit/Dp;

    iput-object p8, p0, Lid0;->i:Landroidx/compose/ui/unit/Dp;

    iput-object p9, p0, Lid0;->j:Landroidx/compose/ui/unit/Dp;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->c:J

    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    sget-wide v5, Landroidx/compose/ui/graphics/Color;->h:J

    new-instance v7, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v7, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    filled-new-array {v4, v7}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v4, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v4, v5, v6}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v2, v3}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    filled-new-array {v4, v5}, [Landroidx/compose/ui/graphics/Color;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    const/16 v14, 0x8

    iget-object v2, v0, Lid0;->b:Landroidx/compose/ui/unit/Dp;

    iget-boolean v15, v0, Lid0;->d:Z

    const/16 v16, 0x20

    if-eqz v2, :cond_2

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    iget-object v3, v0, Lid0;->c:Landroidx/compose/ui/unit/Dp;

    if-eqz v3, :cond_2

    iget v3, v3, Landroidx/compose/ui/unit/Dp;->b:F

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    if-eqz v15, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v5

    shr-long v5, v5, v16

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    sub-float/2addr v5, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v5

    :goto_0
    if-eqz v15, :cond_1

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v6

    shr-long v6, v6, v16

    long-to-int v2, v6

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_1

    :cond_1
    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    :goto_1
    invoke-static {v4, v13, v5, v2, v14}, Landroidx/compose/ui/graphics/Brush$Companion;->a(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFI)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/BlendMode;->g:I

    const/16 v11, 0x3e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    :cond_2
    iget-object v2, v0, Lid0;->e:Landroidx/compose/ui/unit/Dp;

    if-eqz v2, :cond_3

    iget-object v3, v0, Lid0;->f:Landroidx/compose/ui/unit/Dp;

    if-eqz v3, :cond_3

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    iget v3, v3, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    invoke-static {v4, v13, v2, v3, v14}, Landroidx/compose/ui/graphics/Brush$Companion;->b(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFI)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/BlendMode;->g:I

    const/16 v11, 0x3e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    :cond_3
    iget-object v2, v0, Lid0;->g:Landroidx/compose/ui/unit/Dp;

    if-eqz v2, :cond_6

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    iget-object v3, v0, Lid0;->h:Landroidx/compose/ui/unit/Dp;

    if-eqz v3, :cond_6

    iget v3, v3, Landroidx/compose/ui/unit/Dp;->b:F

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    if-eqz v15, :cond_4

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v5

    shr-long v5, v5, v16

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    sub-float v2, v5, v2

    :goto_2
    if-eqz v15, :cond_5

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v5

    shr-long v5, v5, v16

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    invoke-interface {v1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    sub-float v3, v5, v3

    :goto_3
    invoke-static {v4, v12, v2, v3, v14}, Landroidx/compose/ui/graphics/Brush$Companion;->a(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFI)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/graphics/BlendMode;->g:I

    const/16 v11, 0x3e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    :cond_6
    iget-object v2, v0, Lid0;->i:Landroidx/compose/ui/unit/Dp;

    if-eqz v2, :cond_7

    iget-object v0, v0, Lid0;->j:Landroidx/compose/ui/unit/Dp;

    if-eqz v0, :cond_7

    sget-object v3, Landroidx/compose/ui/graphics/Brush;->a:Landroidx/compose/ui/graphics/Brush$Companion;

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    iget v2, v2, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    sub-float/2addr v4, v2

    invoke-interface {v1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v8

    and-long v5, v8, v6

    long-to-int v2, v5

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v0, v0, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v0

    sub-float/2addr v2, v0

    invoke-static {v3, v12, v4, v2, v14}, Landroidx/compose/ui/graphics/Brush$Companion;->b(Landroidx/compose/ui/graphics/Brush$Companion;Ljava/util/List;FFI)Landroidx/compose/ui/graphics/LinearGradient;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/graphics/BlendMode;->g:I

    const/16 v10, 0x3e

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
