.class public final Landroidx/compose/ui/text/platform/style/CustomBulletSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/style/CustomBulletSpan;",
        "Landroid/text/style/LeadingMarginSpan;",
        "Landroidx/compose/ui/graphics/Shape;",
        "shape",
        "",
        "bulletWidthPx",
        "bulletHeightPx",
        "gapWidthPx",
        "Landroidx/compose/ui/graphics/Brush;",
        "brush",
        "alpha",
        "Landroidx/compose/ui/graphics/drawscope/DrawStyle;",
        "drawStyle",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "textIndentPx",
        "<init>",
        "(Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/unit/Density;F)V",
        "ui-text"
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
.field public final b:Landroidx/compose/ui/graphics/Shape;

.field public final c:F

.field public final d:F

.field public final e:Landroidx/compose/ui/graphics/Brush;

.field public final f:F

.field public final g:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

.field public final h:Landroidx/compose/ui/unit/Density;

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/unit/Density;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->b:Landroidx/compose/ui/graphics/Shape;

    iput p2, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->c:F

    iput p3, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->d:F

    iput-object p5, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->e:Landroidx/compose/ui/graphics/Brush;

    iput p6, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->f:F

    iput-object p7, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->g:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    iput-object p8, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->h:Landroidx/compose/ui/unit/Density;

    add-float/2addr p2, p4

    invoke-static {p2}, Lkotlin/math/MathKt;->c(F)I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->i:I

    invoke-static {p9}, Lkotlin/math/MathKt;->c(F)I

    move-result p2

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->j:I

    return-void
.end method


# virtual methods
.method public final drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    add-int v0, p5, p7

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v10, v0, v1

    iget v0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->i:I

    sub-int v0, p3, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    move v9, v0

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p8

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    move/from16 v1, p9

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    iget-object v2, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->g:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    :cond_2
    instance-of v1, v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    check-cast v2, Landroidx/compose/ui/graphics/drawscope/Stroke;

    iget v1, v2, Landroidx/compose/ui/graphics/drawscope/Stroke;->a:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, v2, Landroidx/compose/ui/graphics/drawscope/Stroke;->b:F

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    iget v1, v2, Landroidx/compose/ui/graphics/drawscope/Stroke;->c:I

    invoke-static {v1}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan_androidKt;->a(I)Landroid/graphics/Paint$Cap;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v1, v2, Landroidx/compose/ui/graphics/drawscope/Stroke;->d:I

    invoke-static {v1}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan_androidKt;->b(I)Landroid/graphics/Paint$Join;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, v2, Landroidx/compose/ui/graphics/drawscope/Stroke;->e:Landroidx/compose/ui/graphics/PathEffect;

    if-eqz v1, :cond_3

    check-cast v1, Landroidx/compose/ui/graphics/AndroidPathEffect;

    iget-object v1, v1, Landroidx/compose/ui/graphics/AndroidPathEffect;->a:Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_3
    move-object v1, v11

    :goto_0
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    :goto_1
    iget v1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    iget v3, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->d:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long v4, v1, v3

    sget-object v1, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    new-instance v2, Lpr;

    move-object v3, p0

    move-object v7, p1

    move-object v8, p2

    move/from16 v6, p4

    invoke-direct/range {v2 .. v10}, Lpr;-><init>(Landroidx/compose/ui/text/platform/style/CustomBulletSpan;JILandroid/graphics/Canvas;Landroid/graphics/Paint;IF)V

    iget-object p1, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->e:Landroidx/compose/ui/graphics/Brush;

    iget p0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->f:F

    const/high16 v1, 0x437f0000    # 255.0f

    if-nez p1, :cond_5

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    mul-float/2addr p0, v1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_4
    invoke-virtual {v2}, Lpr;->invoke()Ljava/lang/Object;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_2

    :cond_5
    instance-of v3, p1, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    mul-float/2addr p0, v1

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-float p0, v4

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_6
    check-cast p1, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide p0, p1, Landroidx/compose/ui/graphics/SolidColor;->b:J

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2}, Lpr;->invoke()Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    :cond_7
    instance-of v3, p1, Landroidx/compose/ui/graphics/ShaderBrush;

    if-eqz v3, :cond_a

    invoke-virtual {p2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    mul-float/2addr p0, v1

    float-to-double v6, p0

    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-float p0, v6

    float-to-int p0, p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_8
    check-cast p1, Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {p1, v4, v5}, Landroidx/compose/ui/graphics/ShaderBrush;->b(J)Landroid/graphics/Shader;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v2}, Lpr;->invoke()Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    :goto_2
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_a
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_b
    invoke-static {}, Lv40;->g()V

    :cond_c
    :goto_3
    return-void
.end method

.method public final getLeadingMargin(Z)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;->j:I

    if-ltz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    return p0
.end method
