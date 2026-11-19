.class public interface abstract Landroidx/compose/ui/graphics/Canvas;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008f\u0018\u00002\u00020\u0001\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0002\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Canvas;",
        "",
        "ui-graphics"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static g(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->a:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/ClipOp;->b:I

    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/graphics/Canvas;->s(Landroidx/compose/ui/geometry/Rect;I)V

    return-void
.end method

.method public static h(Landroidx/compose/ui/graphics/Canvas;FFFF)V
    .locals 7

    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->a:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/graphics/ClipOp;->b:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/graphics/Canvas;->a(FFFFI)V

    return-void
.end method

.method public static k(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/Path;)V
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/ClipOp;->a:Landroidx/compose/ui/graphics/ClipOp$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/ClipOp;->b:I

    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/graphics/Canvas;->i(Landroidx/compose/ui/graphics/Path;I)V

    return-void
.end method


# virtual methods
.method public abstract a(FFFFI)V
.end method

.method public abstract b(FF)V
.end method

.method public abstract c(FFFFLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract d(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract e(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract f(FFFFFFLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract i(Landroidx/compose/ui/graphics/Path;I)V
.end method

.method public abstract j(FF)V
.end method

.method public abstract l()V
.end method

.method public abstract m(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract n(JJLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract o(F)V
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public abstract r([F)V
.end method

.method public abstract restore()V
.end method

.method public s(Landroidx/compose/ui/geometry/Rect;I)V
    .locals 6

    iget v1, p1, Landroidx/compose/ui/geometry/Rect;->a:F

    iget v2, p1, Landroidx/compose/ui/geometry/Rect;->b:F

    iget v3, p1, Landroidx/compose/ui/geometry/Rect;->c:F

    iget v4, p1, Landroidx/compose/ui/geometry/Rect;->d:F

    move-object v0, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroidx/compose/ui/graphics/Canvas;->a(FFFFI)V

    return-void
.end method

.method public abstract t(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract u(FJLandroidx/compose/ui/graphics/Paint;)V
.end method

.method public abstract v(FFFFFFLandroidx/compose/ui/graphics/Paint;)V
.end method
