.class abstract Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapDecoderWorkaroundStateCalculator;,
        Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapCopier;
    }
.end annotation


# direct methods
.method public static a(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;Lcom/bumptech/glide/load/resource/bitmap/ImageReader;)Landroid/graphics/Bitmap;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_6

    sget-object v3, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapDecoderWorkaroundStateCalculator;->a:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_1

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapDecoderWorkaroundStateCalculator;->a:Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;

    invoke-interface {v0}, Lcom/bumptech/glide/util/GlideSuppliers$GlideSupplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_6

    const-string v0, "GlideBitmapFactory"

    const/4 v2, 0x2

    :try_start_0
    invoke-interface {p2}, Lcom/bumptech/glide/load/resource/bitmap/ImageReader;->b()Z

    move-result p2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move p2, v3

    :goto_2
    if-eqz p2, :cond_6

    iget-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne p2, v0, :cond_2

    const/4 v3, 0x1

    :cond_2
    const-string p2, ""

    invoke-static {v3, p2}, Lcom/bumptech/glide/util/Preconditions;->a(ZLjava/lang/String;)V

    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :try_start_1
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p0, :cond_4

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v1

    :cond_4
    :try_start_2
    invoke-static {p0}, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p2

    :catchall_0
    move-exception p2

    move-object v1, p0

    goto :goto_3

    :catchall_1
    move-exception p2

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    sget-object p0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object p0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    throw p2

    :cond_6
    invoke-static {p0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getGainmap()Landroid/graphics/Gainmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapCopier;->a:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getGainmapContents()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    if-eq v4, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v4, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const-string v4, ""

    invoke-static {v3, v4}, Lcom/bumptech/glide/util/Preconditions;->a(ZLjava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sget-object v7, Lcom/bumptech/glide/load/resource/bitmap/GlideBitmapFactory$GainmapCopier;->a:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Gainmap;

    invoke-direct {v2, v3}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getRatioMin()[F

    move-result-object v3

    aget v4, v3, v1

    aget v6, v3, v5

    const/4 v7, 0x2

    aget v3, v3, v7

    invoke-virtual {v2, v4, v6, v3}, Landroid/graphics/Gainmap;->setRatioMin(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getRatioMax()[F

    move-result-object v3

    aget v4, v3, v1

    aget v6, v3, v5

    aget v3, v3, v7

    invoke-virtual {v2, v4, v6, v3}, Landroid/graphics/Gainmap;->setRatioMax(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getGamma()[F

    move-result-object v3

    aget v4, v3, v1

    aget v6, v3, v5

    aget v3, v3, v7

    invoke-virtual {v2, v4, v6, v3}, Landroid/graphics/Gainmap;->setGamma(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getEpsilonSdr()[F

    move-result-object v3

    aget v4, v3, v1

    aget v6, v3, v5

    aget v3, v3, v7

    invoke-virtual {v2, v4, v6, v3}, Landroid/graphics/Gainmap;->setEpsilonSdr(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getEpsilonHdr()[F

    move-result-object v3

    aget v4, v3, v1

    aget v5, v3, v5

    aget v3, v3, v7

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Gainmap;->setEpsilonHdr(FFF)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getDisplayRatioForFullHdr()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Gainmap;->setDisplayRatioForFullHdr(F)V

    invoke-virtual {v0}, Landroid/graphics/Gainmap;->getMinDisplayRatioForHdrTransition()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Gainmap;->setMinDisplayRatioForHdrTransition(F)V

    move-object v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setGainmap(Landroid/graphics/Gainmap;)V

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
