.class public abstract Lcoil3/compose/ImagePainter_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    instance-of v0, p0, Lcoil3/BitmapImage;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil3/BitmapImage;

    iget-object p0, p0, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    new-instance p1, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {p1, p0}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/painter/BitmapPainterKt;->a(Landroidx/compose/ui/graphics/AndroidImageBitmap;I)Landroidx/compose/ui/graphics/painter/BitmapPainter;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p2, p0, Lcoil3/DrawableImage;

    if-eqz p2, :cond_1

    new-instance p2, Lcom/google/accompanist/drawablepainter/DrawablePainter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p0, p1}, Lcoil3/Image_androidKt;->a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/accompanist/drawablepainter/DrawablePainter;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object p2

    :cond_1
    new-instance p1, Lcoil3/compose/ImagePainter;

    invoke-direct {p1, p0}, Lcoil3/compose/ImagePainter;-><init>(Lcoil3/Image;)V

    return-object p1
.end method

.method public static b(Lcoil3/Image;Landroid/content/Context;)Landroidx/compose/ui/graphics/painter/Painter;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->c:I

    invoke-static {p0, p1, v0}, Lcoil3/compose/ImagePainter_androidKt;->a(Lcoil3/Image;Landroid/content/Context;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object p0

    return-object p0
.end method
