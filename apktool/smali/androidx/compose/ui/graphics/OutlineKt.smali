.class public abstract Landroidx/compose/ui/graphics/OutlineKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui-graphics"
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
.method public static a(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;J)V
    .locals 13

    sget-object v4, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    sget-object v1, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b:I

    instance-of v1, p1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const-wide v6, 0xffffffffL

    const/16 v8, 0x20

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v0, v0, Landroidx/compose/ui/graphics/Outline$Rectangle;->a:Landroidx/compose/ui/geometry/Rect;

    iget v1, v0, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v2, v0, Landroidx/compose/ui/geometry/Rect;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v9, v1

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    shl-long v8, v9, v8

    and-long/2addr v1, v6

    or-long/2addr v1, v8

    sget-object v3, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v0}, Landroidx/compose/ui/graphics/OutlineKt;->b(Landroidx/compose/ui/geometry/Rect;)J

    move-result-wide v6

    move v9, v5

    move-wide v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v8, v4

    move-wide v3, v1

    move-wide v1, p2

    invoke-interface/range {v0 .. v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->M0(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v1, :cond_2

    move-object v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v1, v9, Landroidx/compose/ui/graphics/Outline$Rounded;->b:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v1, :cond_1

    move-object v0, p0

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void

    :cond_1
    iget-object v0, v9, Landroidx/compose/ui/graphics/Outline$Rounded;->a:Landroidx/compose/ui/geometry/RoundRect;

    iget-wide v1, v0, Landroidx/compose/ui/geometry/RoundRect;->h:J

    shr-long/2addr v1, v8

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget v2, v0, Landroidx/compose/ui/geometry/RoundRect;->a:F

    iget v3, v0, Landroidx/compose/ui/geometry/RoundRect;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v9, v2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v9, v8

    and-long/2addr v2, v6

    or-long/2addr v2, v9

    sget-object v9, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->b()F

    move-result v9

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/RoundRect;->a()F

    move-result v0

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v11, v0

    shl-long/2addr v9, v8

    and-long/2addr v11, v6

    or-long/2addr v9, v11

    sget-object v0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v11, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v11, v8

    and-long/2addr v0, v6

    or-long v7, v11, v0

    move-wide v0, v9

    move v10, v5

    move-wide v5, v0

    move-object v0, p0

    move-object v9, v4

    move-wide v3, v2

    move-wide v1, p2

    invoke-interface/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->z1(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void

    :cond_2
    instance-of v1, p1, Landroidx/compose/ui/graphics/Outline$Generic;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v1, v0, Landroidx/compose/ui/graphics/Outline$Generic;->a:Landroidx/compose/ui/graphics/Path;

    move-object v0, p0

    move-wide v2, p2

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0(Landroidx/compose/ui/graphics/Path;JLandroidx/compose/ui/graphics/drawscope/DrawStyle;I)V

    return-void

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public static final b(Landroidx/compose/ui/geometry/Rect;)J
    .locals 6

    iget v0, p0, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->a:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroidx/compose/ui/geometry/Rect;->d:F

    iget p0, p0, Landroidx/compose/ui/geometry/Rect;->b:F

    sub-float/2addr v1, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    sget-object p0, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    return-wide v0
.end method
