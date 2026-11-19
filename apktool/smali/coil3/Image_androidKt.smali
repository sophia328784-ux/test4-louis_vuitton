.class public abstract Lcoil3/Image_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\n\u0010\u0001\"\u00020\u00002\u00020\u0000*\n\u0010\u0003\"\u00020\u00022\u00020\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroid/graphics/Bitmap;",
        "Bitmap",
        "Landroid/graphics/Canvas;",
        "Canvas",
        "io.coil-kt.coil3:coil-core"
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
.method public static final a(Lcoil3/Image;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    instance-of v0, p0, Lcoil3/DrawableImage;

    if-eqz v0, :cond_0

    check-cast p0, Lcoil3/DrawableImage;

    iget-object p0, p0, Lcoil3/DrawableImage;->a:Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcoil3/BitmapImage;

    if-eqz v0, :cond_1

    check-cast p0, Lcoil3/BitmapImage;

    iget-object p0, p0, Lcoil3/BitmapImage;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    new-instance p1, Lcoil3/ImageDrawable;

    invoke-direct {p1, p0}, Lcoil3/ImageDrawable;-><init>(Lcoil3/Image;)V

    return-object p1
.end method

.method public static final b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;
    .locals 2

    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcoil3/Image_androidKt;->c(Landroid/graphics/Bitmap;)Lcoil3/BitmapImage;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lcoil3/DrawableImage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcoil3/DrawableImage;-><init>(Landroid/graphics/drawable/Drawable;Z)V

    return-object v0
.end method

.method public static c(Landroid/graphics/Bitmap;)Lcoil3/BitmapImage;
    .locals 2

    new-instance v0, Lcoil3/BitmapImage;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcoil3/BitmapImage;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v0
.end method
