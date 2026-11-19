.class final Landroidx/compose/ui/draw/BlurKt$blur$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:I

.field public final synthetic f:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(FFILandroidx/compose/ui/graphics/Shape;Z)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->c:F

    iput p2, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->d:F

    iput p3, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->e:I

    iput-object p4, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->f:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p5, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->g:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    iget v0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->c:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v3

    iget v0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->d:F

    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v4

    const/4 v0, 0x0

    cmpl-float v1, v3, v0

    if-lez v1, :cond_0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_0

    new-instance v1, Landroidx/compose/ui/graphics/BlurEffect;

    const/4 v2, 0x0

    const/4 v6, 0x0

    iget v5, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->e:I

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/BlurEffect;-><init>(Landroidx/compose/ui/graphics/RenderEffect;FFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v1}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->n(Landroidx/compose/ui/graphics/RenderEffect;)V

    iget-object v0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->f:Landroidx/compose/ui/graphics/Shape;

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    :cond_1
    invoke-interface {p1, v0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->r1(Landroidx/compose/ui/graphics/Shape;)V

    iget-boolean p0, p0, Landroidx/compose/ui/draw/BlurKt$blur$1;->g:Z

    invoke-interface {p1, p0}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->o(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
