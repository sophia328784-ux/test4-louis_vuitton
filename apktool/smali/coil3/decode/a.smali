.class public final synthetic Lcoil3/decode/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcoil3/decode/BitmapFactoryDecoder;


# direct methods
.method public synthetic constructor <init>(Lcoil3/decode/BitmapFactoryDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/decode/a;->b:Lcoil3/decode/BitmapFactoryDecoder;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    sget v0, Lcoil3/decode/BitmapFactoryDecoder;->e:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v1, p0

    iget-object v1, v1, Lcoil3/decode/a;->b:Lcoil3/decode/BitmapFactoryDecoder;

    iget-object v2, v1, Lcoil3/decode/BitmapFactoryDecoder;->b:Lcoil3/request/Options;

    new-instance v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;

    iget-object v4, v1, Lcoil3/decode/BitmapFactoryDecoder;->a:Lcoil3/decode/ImageSource;

    invoke-interface {v4}, Lcoil3/decode/ImageSource;->source()Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v3, v4}, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;-><init>(Lokio/Source;)V

    new-instance v4, Lokio/RealBufferedSource;

    invoke-direct {v4, v3}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v4}, Lokio/RealBufferedSource;->peek()Lokio/RealBufferedSource;

    move-result-object v6

    new-instance v7, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v7, v6}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    const/4 v6, 0x0

    invoke-static {v7, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v7, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->h:Ljava/lang/Exception;

    if-nez v7, :cond_27

    const/4 v7, 0x0

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v8, Lcoil3/decode/ExifUtils;->a:Landroid/graphics/Paint;

    iget-object v8, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iget-object v1, v1, Lcoil3/decode/BitmapFactoryDecoder;->d:Lcoil3/decode/ExifOrientationStrategy;

    invoke-interface {v1, v8}, Lcoil3/decode/ExifOrientationStrategy;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x2

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/exifinterface/media/ExifInterface;

    new-instance v9, Lcoil3/decode/ExifInterfaceInputStream;

    invoke-virtual {v4}, Lokio/RealBufferedSource;->peek()Lokio/RealBufferedSource;

    move-result-object v10

    new-instance v11, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v11, v10}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    invoke-direct {v9, v11}, Lcoil3/decode/ExifInterfaceInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Lcoil3/decode/ExifData;

    const-string v10, "Orientation"

    invoke-virtual {v1, v5, v10}, Landroidx/exifinterface/media/ExifInterface;->e(ILjava/lang/String;)I

    move-result v10

    if-eq v10, v8, :cond_0

    const/4 v11, 0x7

    if-eq v10, v11, :cond_0

    const/4 v11, 0x4

    if-eq v10, v11, :cond_0

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    move v10, v7

    goto :goto_0

    :cond_0
    move v10, v5

    :goto_0
    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface;->n()I

    move-result v1

    invoke-direct {v9, v10, v1}, Lcoil3/decode/ExifData;-><init>(ZI)V

    goto :goto_1

    :cond_1
    sget-object v9, Lcoil3/decode/ExifData;->c:Lcoil3/decode/ExifData;

    :goto_1
    iget-object v1, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->h:Ljava/lang/Exception;

    if-nez v1, :cond_26

    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->c:Lcoil3/Extras$Key;

    invoke-static {v2, v1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/ColorSpace;

    iget-object v11, v2, Lcoil3/request/Options;->a:Landroid/content/Context;

    if-eqz v10, :cond_2

    invoke-static {v2, v1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :cond_2
    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->d:Lcoil3/Extras$Key;

    invoke-static {v2, v1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    sget-object v1, Lcoil3/request/ImageRequests_androidKt;->b:Lcoil3/Extras$Key;

    invoke-static {v2, v1}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap$Config;

    iget-boolean v10, v9, Lcoil3/decode/ExifData;->a:Z

    iget v9, v9, Lcoil3/decode/ExifData;->b:I

    if-nez v10, :cond_3

    if-lez v9, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    sget-object v12, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v1, v12, :cond_5

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_5
    sget-object v12, Lcoil3/request/ImageRequests_androidKt;->g:Lcoil3/Extras$Key;

    invoke-static {v2, v12}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v12, :cond_6

    iget-object v12, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v13, "image/jpeg"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_6
    iget-object v12, v0, Landroid/graphics/BitmapFactory$Options;->outConfig:Landroid/graphics/Bitmap$Config;

    sget-object v13, Landroid/graphics/Bitmap$Config;->RGBA_F16:Landroid/graphics/Bitmap$Config;

    if-ne v12, v13, :cond_7

    sget-object v12, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq v1, v12, :cond_7

    move-object v1, v13

    :cond_7
    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v12, 0x10e

    const/16 v13, 0x5a

    if-lez v1, :cond_18

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v14, :cond_8

    move v8, v5

    move-object/from16 v17, v6

    move/from16 v21, v10

    move-object v13, v11

    goto/16 :goto_a

    :cond_8
    if-eq v9, v13, :cond_a

    if-ne v9, v12, :cond_9

    goto :goto_2

    :cond_9
    move v15, v1

    goto :goto_3

    :cond_a
    :goto_2
    move v15, v14

    :goto_3
    if-eq v9, v13, :cond_c

    if-ne v9, v12, :cond_b

    goto :goto_4

    :cond_b
    move v1, v14

    :cond_c
    :goto_4
    iget-object v14, v2, Lcoil3/request/Options;->b:Lcoil3/size/Size;

    iget-object v12, v2, Lcoil3/request/Options;->c:Lcoil3/size/Scale;

    sget-object v13, Lcoil3/request/ImageRequestsKt;->b:Lcoil3/Extras$Key;

    invoke-static {v2, v13}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lcoil3/size/Size;

    invoke-static {v15, v1, v14, v12, v6}, Lcoil3/decode/DecodeUtils;->a(IILcoil3/size/Size;Lcoil3/size/Scale;Lcoil3/size/Size;)J

    move-result-wide v18

    const/16 v6, 0x20

    shr-long v7, v18, v6

    long-to-int v6, v7

    const-wide v7, 0xffffffffL

    and-long v7, v18, v7

    long-to-int v7, v7

    div-int v8, v15, v6

    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    div-int v18, v1, v7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v14

    sget-object v18, Lcoil3/decode/DecodeUtils$WhenMappings;->a:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v21, v10

    aget v10, v18, v20

    if-eq v10, v5, :cond_e

    const/4 v5, 0x2

    if-ne v10, v5, :cond_d

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_5
    const/4 v8, 0x1

    goto :goto_6

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-object v17

    :cond_e
    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_5

    :goto_6
    if-ge v5, v8, :cond_f

    const/4 v5, 0x1

    :cond_f
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-double v14, v15

    move-object v8, v11

    int-to-double v10, v5

    div-double/2addr v14, v10

    move-wide/from16 v22, v10

    int-to-double v10, v1

    div-double v10, v10, v22

    int-to-double v5, v6

    move-wide/from16 v22, v5

    int-to-double v5, v7

    invoke-static {v2, v13}, Lcoil3/ExtrasKt;->b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcoil3/size/Size;

    move-wide/from16 v24, v5

    div-double v5, v22, v14

    move-object v13, v8

    div-double v7, v24, v10

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v18, v12

    move-wide/from16 v22, v10

    const/4 v10, 0x1

    if-eq v12, v10, :cond_11

    const/4 v10, 0x2

    if-ne v12, v10, :cond_10

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    goto :goto_7

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-object v17

    :cond_11
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    :goto_7
    iget-object v7, v1, Lcoil3/size/Size;->a:Lcoil3/size/Dimension;

    instance-of v8, v7, Lcoil3/size/Dimension$Pixels;

    if-eqz v8, :cond_12

    check-cast v7, Lcoil3/size/Dimension$Pixels;

    iget v7, v7, Lcoil3/size/Dimension$Pixels;->a:I

    int-to-double v7, v7

    div-double/2addr v7, v14

    cmpl-double v10, v5, v7

    if-lez v10, :cond_12

    move-wide v5, v7

    :cond_12
    iget-object v1, v1, Lcoil3/size/Size;->b:Lcoil3/size/Dimension;

    instance-of v7, v1, Lcoil3/size/Dimension$Pixels;

    if-eqz v7, :cond_13

    check-cast v1, Lcoil3/size/Dimension$Pixels;

    iget v1, v1, Lcoil3/size/Dimension$Pixels;->a:I

    int-to-double v7, v1

    div-double v7, v7, v22

    cmpl-double v1, v5, v7

    if-lez v1, :cond_13

    move-wide v5, v7

    :cond_13
    iget-object v1, v2, Lcoil3/request/Options;->d:Lcoil3/size/Precision;

    sget-object v2, Lcoil3/size/Precision;->INEXACT:Lcoil3/size/Precision;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ne v1, v2, :cond_14

    cmpl-double v1, v5, v7

    if-lez v1, :cond_14

    move-wide v5, v7

    :cond_14
    cmpg-double v1, v5, v7

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_8

    :cond_15
    const/4 v1, 0x0

    :goto_8
    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v1, :cond_16

    cmpl-double v1, v5, v7

    const v2, 0x7fffffff

    const-wide v7, 0x41dfffffffc00000L    # 2.147483647E9

    if-lez v1, :cond_17

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Lkotlin/math/MathKt;->b(D)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_16
    :goto_9
    const/4 v14, 0x0

    goto :goto_b

    :cond_17
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Lkotlin/math/MathKt;->b(D)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    goto :goto_9

    :cond_18
    move-object/from16 v17, v6

    move/from16 v21, v10

    move-object v13, v11

    move v8, v5

    :goto_a
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v14, 0x0

    iput-boolean v14, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    :goto_b
    :try_start_0
    new-instance v1, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v1, v4}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    move-object/from16 v2, v17

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lokio/RealBufferedSource;->close()V

    iget-object v2, v3, Lcoil3/decode/BitmapFactoryDecoder$ExceptionCatchingSource;->h:Ljava/lang/Exception;

    if-nez v2, :cond_25

    if-eqz v1, :cond_24

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    if-nez v21, :cond_19

    if-lez v9, :cond_21

    :cond_19
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    if-eqz v21, :cond_1a

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_1a
    if-lez v9, :cond_1b

    int-to-float v4, v9

    invoke-virtual {v2, v4, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_1b
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v4, v6

    if-nez v5, :cond_1c

    iget v5, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-nez v5, :cond_1c

    :goto_c
    const/16 v3, 0x5a

    goto :goto_d

    :cond_1c
    neg-float v4, v4

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_c

    :goto_d
    if-eq v9, v3, :cond_1f

    const/16 v3, 0x10e

    if-ne v9, v3, :cond_1d

    goto :goto_e

    :cond_1d
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1e
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_f

    :cond_1f
    :goto_e
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    if-nez v5, :cond_20

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_20
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_f
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v5, Lcoil3/decode/ExifUtils;->a:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    move-object v1, v3

    :cond_21
    new-instance v2, Lcoil3/decode/DecodeResult;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4}, Lcoil3/Image_androidKt;->b(Landroid/graphics/drawable/Drawable;)Lcoil3/Image;

    move-result-object v1

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v8, 0x1

    if-gt v3, v8, :cond_23

    iget-boolean v0, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz v0, :cond_22

    goto :goto_10

    :cond_22
    move v5, v14

    goto :goto_11

    :cond_23
    :goto_10
    move v5, v8

    :goto_11
    invoke-direct {v2, v1, v5}, Lcoil3/decode/DecodeResult;-><init>(Lcoil3/Image;Z)V

    return-object v2

    :cond_24
    const-string v0, "BitmapFactory returned a null bitmap. Often this means BitmapFactory could not decode the image data read from the image source (e.g. network, disk, or memory) as it\'s not encoded as a valid image format."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/16 v17, 0x0

    return-object v17

    :cond_25
    throw v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    throw v1

    :cond_27
    throw v7
.end method
