.class final Lcom/sightcall/universal/ocr/OcrUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crop(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float v0, p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v1, v0

    div-float/2addr v1, v0

    float-to-int v6, v1

    int-to-float v0, p4

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr p2, v0

    div-float/2addr p2, v0

    float-to-int v5, p2

    sub-int/2addr p4, v5

    int-to-float p2, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    float-to-int v3, p2

    sub-int/2addr p1, v6

    int-to-float p1, p1

    div-float/2addr p1, p4

    float-to-int v4, p1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v7, p3

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static extractBitmap(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sightcall/universal/ocr/OcrUtils;->findRotationMatrix(Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {}, Lcom/sightcall/universal/Universal;->context()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-static {p0, v3}, Lnet/rtccloud/sdk/util/CameraUtils;->getInternalPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I

    move-result p0

    const/16 v3, 0x5a

    const/4 v4, 0x0

    if-eq p0, v3, :cond_0

    const/16 v3, 0x10e

    if-eq p0, v3, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v4, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    if-eqz p0, :cond_2

    const/high16 v5, 0x3f800000    # 1.0f

    div-float p2, v5, p2

    :cond_2
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    int-to-float v1, v1

    div-float v6, v1, p2

    int-to-float v2, v2

    cmpl-float v7, v6, v2

    const/4 v8, 0x0

    if-lez v7, :cond_3

    mul-float/2addr p2, v2

    invoke-virtual {v5, v8, v8, p2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v8, v8, v1, v6}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v3, v4, v4, p2, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result p2

    mul-float/2addr p2, p3

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, p3

    invoke-virtual {v5, p2, v4}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr v1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v1, p2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result p3

    sub-float/2addr v2, p3

    div-float/2addr v2, p2

    invoke-virtual {v5, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-static {p1, v3, v5, v0, p0}, Lcom/sightcall/universal/ocr/OcrUtils;->crop(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static findRotationMatrix(Landroid/content/Context;Lnet/rtccloud/sdk/VideoModule$CameraSource;)Landroid/graphics/Matrix;
    .locals 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/rtccloud/sdk/util/CameraUtils;->getInternalPreviewCorrection(Lnet/rtccloud/sdk/VideoModule$CameraSource;Landroid/view/Display;)I

    move-result p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "findRotationMatrix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    return-object p1

    :cond_0
    const/high16 p0, 0x43870000    # 270.0f

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-object p1

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-object p1

    :cond_2
    const/high16 p0, 0x42b40000    # 90.0f

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-object p1
.end method
