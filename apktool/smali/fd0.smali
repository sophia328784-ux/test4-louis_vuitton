.class public final synthetic Lfd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/graphics/Paint;

.field public final synthetic c:F

.field public final synthetic d:Landroid/graphics/BlurMaskFilter;

.field public final synthetic e:J

.field public final synthetic f:F

.field public final synthetic g:F


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/Paint;FLandroid/graphics/BlurMaskFilter;JFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfd0;->b:Landroidx/compose/ui/graphics/Paint;

    iput p2, p0, Lfd0;->c:F

    iput-object p3, p0, Lfd0;->d:Landroid/graphics/BlurMaskFilter;

    iput-wide p4, p0, Lfd0;->e:J

    iput p6, p0, Lfd0;->f:F

    iput p7, p0, Lfd0;->g:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->x1()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->a()Landroidx/compose/ui/graphics/Canvas;

    move-result-object v1

    iget-object v6, p0, Lfd0;->b:Landroidx/compose/ui/graphics/Paint;

    invoke-interface {v6}, Landroidx/compose/ui/graphics/Paint;->e()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lfd0;->c:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->b(FF)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lfd0;->d:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :cond_0
    iget-wide v4, p0, Lfd0;->e:J

    invoke-static {v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-interface {p1, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    iget v0, p0, Lfd0;->f:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    const/16 v7, 0x20

    shr-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float/2addr v4, v2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    add-float/2addr v5, v0

    iget p0, p0, Lfd0;->g:F

    invoke-static {p0, v3}, Landroidx/compose/ui/unit/Dp;->a(FF)I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p0

    move v7, p0

    move v3, v0

    move-object v8, v6

    move v6, p0

    invoke-interface/range {v1 .. v8}, Landroidx/compose/ui/graphics/Canvas;->v(FFFFFFLandroidx/compose/ui/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move v3, v0

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->c(FFFFLandroidx/compose/ui/graphics/Paint;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
