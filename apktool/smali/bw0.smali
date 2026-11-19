.class public final synthetic Lbw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(FFFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p5, p0, Lbw0;->b:J

    iput p1, p0, Lbw0;->c:F

    iput p2, p0, Lbw0;->d:F

    iput p3, p0, Lbw0;->e:F

    iput p4, p0, Lbw0;->f:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget v0, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->a:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    iget-wide v1, p0, Lbw0;->b:J

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/graphics/Color;->toArgb(J)I

    move-result v3

    iget v4, p0, Lbw0;->c:F

    invoke-static {v4, v1, v2}, Landroidx/compose/ui/graphics/Color;->b(FJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/graphics/Color;->toArgb(J)I

    move-result v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v4

    new-instance v11, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {v11}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    iget-object v2, v11, Landroidx/compose/ui/graphics/AndroidPaint;->a:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, p0, Lbw0;->d:F

    invoke-interface {p1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    iget v5, p0, Lbw0;->e:F

    invoke-virtual {v2, v3, v0, v5, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v5

    shr-long v2, v5, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    add-float/2addr v2, v1

    cmpg-float v1, v2, v0

    if-gez v1, :cond_0

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    iget p0, p0, Lbw0;->f:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v9

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v11}, Landroidx/compose/ui/graphics/Canvas;->v(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
