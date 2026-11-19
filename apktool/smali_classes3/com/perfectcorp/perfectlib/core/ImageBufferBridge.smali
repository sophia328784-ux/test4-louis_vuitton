.class public abstract Lcom/perfectcorp/perfectlib/core/ImageBufferBridge;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/graphics/Bitmap;)Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;

    sget-object v1, Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;->Format32bppRGBA:Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/PixelFormat;)V

    iget-wide v3, v0, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v3, v4, v0, p0}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_AttachAndroidBitmap(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, v0, Lcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;->a:J

    invoke-static {v3, v4, v0}, Lcom/perfectcorp/perfectlib/jniproxy/CommonJNI;->CImageBuffer_SwapColorChannel__SWIG_0(JLcom/perfectcorp/perfectlib/jniproxy/CImageBuffer;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const-string p0, "SwapColorChannel() failed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/perfectcorp/common/utility/Bitmaps;->c(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Couldn\'t attach to bitmap. "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    const-string v0, ". But it must be ARGB_8888."

    const-string v1, "The bitmap config is "

    invoke-static {v1, p0, v0}, Laz;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method
