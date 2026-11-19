.class public abstract Landroidx/camera/core/ImageProcessingUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/ImageProcessingUtil$Result;
    }
.end annotation


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "image_processing_util_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroidx/camera/core/SafeCloseImageReaderProxy;[B)Landroidx/camera/core/ImageProxy;
    .locals 2

    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->b()I

    move-result v0

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/util/Preconditions;->a(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Landroidx/camera/core/ImageProcessingUtil;->nativeWriteJpegToSurface([BLandroid/view/Surface;)I

    move-result p1

    const-string v0, "ImageProcessingUtil"

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/camera/core/SafeCloseImageReaderProxy;->a()Landroidx/camera/core/ImageProxy;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {v0}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public static b(Landroidx/camera/core/ImageProxy;)Landroid/graphics/Bitmap;
    .locals 15

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v13

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v14

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->M()I

    move-result v4

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->M()I

    move-result v6

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    const/4 v5, 0x2

    aget-object v0, v0, v5

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->M()I

    move-result v8

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->N()I

    move-result v9

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->N()I

    move-result v10

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v7

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {v0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->L()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->L()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object p0

    aget-object p0, p0, v5

    invoke-interface {p0}, Landroidx/camera/core/ImageProxy$PlaneProxy;->L()Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v3, v0

    move-object v5, v1

    invoke-static/range {v3 .. v14}, Landroidx/camera/core/ImageProcessingUtil;->nativeConvertAndroid420ToBitmap(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILandroid/graphics/Bitmap;III)I

    move-result p0

    if-nez p0, :cond_0

    return-object v11

    :cond_0
    const-string p0, "YUV to RGB conversion failed"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "Input image format must be YUV_420_888"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2
.end method

.method public static c(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/SafeCloseImageReaderProxy;Ljava/nio/ByteBuffer;I)Landroidx/camera/core/ImageProxy;
    .locals 20

    move/from16 v0, p3

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getFormat()I

    move-result v1

    const/16 v2, 0x23

    const/16 v17, 0x0

    const-string v3, "ImageProcessingUtil"

    if-ne v1, v2, :cond_6

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz v0, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    return-object v17

    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v11

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v12

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-interface {v1}, Landroidx/camera/core/ImageProxy$PlaneProxy;->M()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v5

    const/16 v18, 0x1

    aget-object v5, v5, v18

    invoke-interface {v5}, Landroidx/camera/core/ImageProxy$PlaneProxy;->M()I

    move-result v5

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {v6}, Landroidx/camera/core/ImageProxy$PlaneProxy;->M()I

    move-result v6

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroidx/camera/core/ImageProxy$PlaneProxy;->N()I

    move-result v8

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v10

    aget-object v10, v10, v18

    invoke-interface {v10}, Landroidx/camera/core/ImageProxy$PlaneProxy;->N()I

    move-result v10

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v13

    aget-object v4, v13, v4

    invoke-interface {v4}, Landroidx/camera/core/ImageProxy$PlaneProxy;->L()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v13

    aget-object v13, v13, v18

    invoke-interface {v13}, Landroidx/camera/core/ImageProxy$PlaneProxy;->L()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-interface/range {p0 .. p0}, Landroidx/camera/core/ImageProxy;->L0()[Landroidx/camera/core/ImageProxy$PlaneProxy;

    move-result-object v14

    aget-object v7, v14, v7

    invoke-interface {v7}, Landroidx/camera/core/ImageProxy$PlaneProxy;->L()Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v14, v3

    move-object v3, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v19, v16

    move/from16 v16, v0

    move v0, v2

    move v2, v1

    move-object v1, v4

    move v4, v5

    move-object v5, v7

    move v7, v8

    move v8, v10

    move-object/from16 v10, p2

    invoke-static/range {v1 .. v16}, Landroidx/camera/core/ImageProcessingUtil;->nativeConvertAndroid420ToABGR(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILandroid/view/Surface;Ljava/nio/ByteBuffer;IIIIII)I

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroidx/camera/core/ImageProcessingUtil$Result;->ERROR_CONVERSION:Landroidx/camera/core/ImageProcessingUtil$Result;

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/camera/core/ImageProcessingUtil$Result;->SUCCESS:Landroidx/camera/core/ImageProcessingUtil$Result;

    :goto_1
    sget-object v2, Landroidx/camera/core/ImageProcessingUtil$Result;->ERROR_CONVERSION:Landroidx/camera/core/ImageProcessingUtil$Result;

    if-ne v1, v2, :cond_3

    invoke-static/range {v19 .. v19}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    return-object v17

    :cond_3
    const-string v1, "MH"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v14, v19

    invoke-static {v0, v14}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    sget v0, Landroidx/camera/core/ImageProcessingUtil;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/camera/core/ImageProcessingUtil;->a:I

    goto :goto_2

    :cond_4
    move-object/from16 v14, v19

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/SafeCloseImageReaderProxy;->a()Landroidx/camera/core/ImageProxy;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v14}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    return-object v17

    :cond_5
    new-instance v1, Landroidx/camera/core/SingleCloseImageProxy;

    invoke-direct {v1, v0}, Landroidx/camera/core/SingleCloseImageProxy;-><init>(Landroidx/camera/core/ImageProxy;)V

    new-instance v2, Ln20;

    move-object/from16 v3, p0

    invoke-direct {v2, v0, v3}, Ln20;-><init>(Landroidx/camera/core/ImageProxy;Landroidx/camera/core/ImageProxy;)V

    invoke-virtual {v1, v2}, Landroidx/camera/core/ForwardingImageProxy;->c(Landroidx/camera/core/ForwardingImageProxy$OnImageCloseListener;)V

    return-object v1

    :cond_6
    move-object v14, v3

    invoke-static {v14}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    return-object v17
.end method

.method public static d(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v6}, Landroidx/camera/core/ImageProcessingUtil;->nativeCopyBetweenByteBufferAndBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;IIIIZ)I

    return-void
.end method

.method public static e(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;I)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/camera/core/ImageProcessingUtil;->nativeCopyBetweenByteBufferAndBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;IIIIZ)I

    return-void
.end method

.method public static f([BLandroid/view/Surface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/camera/core/ImageProcessingUtil;->nativeWriteJpegToSurface([BLandroid/view/Surface;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ImageProcessingUtil"

    invoke-static {p0}, Landroidx/camera/core/Logger;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static native nativeConvertAndroid420ToABGR(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILandroid/view/Surface;Ljava/nio/ByteBuffer;IIIIII)I
.end method

.method private static native nativeConvertAndroid420ToBitmap(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIILandroid/graphics/Bitmap;III)I
.end method

.method private static native nativeCopyBetweenByteBufferAndBitmap(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;IIIIZ)I
.end method

.method private static native nativeWriteJpegToSurface([BLandroid/view/Surface;)I
.end method
