.class public Lnet/rtccloud/sdk/util/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-eqz v1, :cond_4

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_4

    cmpl-float v1, p4, v0

    if-eqz v1, :cond_4

    cmpl-float v1, p5, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lnet/rtccloud/sdk/util/ViewUtils$1;->$SwitchMap$net$rtccloud$sdk$util$ScaleType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 p0, 0x3

    if-eq v1, p0, :cond_1

    return v0

    :cond_1
    iput v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iput p4, p1, Landroid/graphics/RectF;->right:F

    iput p5, p1, Landroid/graphics/RectF;->bottom:F

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    div-float v0, p4, p2

    div-float v1, p5, p3

    sget-object v2, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    if-ne p0, v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    mul-float/2addr p2, p0

    mul-float/2addr p3, p0

    sub-float v0, p4, p2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    sub-float v0, p5, p3

    float-to-double v0, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p4, p2

    float-to-double v0, p4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-float p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p5, p3

    float-to-double p2, p5

    mul-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-float p2, p2

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return p0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    return v0
.end method

.method public static getMeasuredDimension(IIFF)Lnet/rtccloud/sdk/util/Dimension;
    .locals 4

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    new-instance p2, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p2, p0, p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>(II)V

    return-object p2

    :cond_0
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_2

    int-to-float v0, p0

    mul-float/2addr v0, p3

    div-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ne v1, v3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_1
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1, p0, p2}, Lnet/rtccloud/sdk/util/Dimension;-><init>(II)V

    return-object p1

    :cond_2
    if-ne v1, v2, :cond_4

    int-to-float v1, p1

    mul-float/2addr v1, p2

    div-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-ne v0, v3, :cond_3

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_3
    new-instance p0, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p0, p2, p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>(II)V

    return-object p0

    :cond_4
    if-ne v0, v3, :cond_5

    if-ne v1, v3, :cond_5

    int-to-float p0, p0

    div-float/2addr p0, p2

    int-to-float p1, p1

    div-float/2addr p1, p3

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    mul-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-float/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {p1, p2, p0}, Lnet/rtccloud/sdk/util/Dimension;-><init>(II)V

    return-object p1

    :cond_5
    new-instance p0, Lnet/rtccloud/sdk/util/Dimension;

    float-to-int p1, p2

    float-to-int p2, p3

    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/util/Dimension;-><init>(II)V

    return-object p0
.end method

.method public static measureSpecModeToString(I)Ljava/lang/String;
    .locals 1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EXACTLY"

    return-object p0

    :cond_1
    const-string p0, "UNSPECIFIED"

    return-object p0

    :cond_2
    const-string p0, "AT_MOST"

    return-object p0
.end method

.method public static measureSpecToString(I)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v1, -0x80000000

    const-string v2, "px"

    if-eq p0, v1, :cond_2

    if-eqz p0, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "EXACTLY "

    invoke-static {v0, p0, v2}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "UNSPECIFIED "

    invoke-static {v0, p0, v2}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "AT_MOST "

    invoke-static {v0, p0, v2}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static measureWithPreviewSize(Lnet/rtccloud/sdk/util/Dimension;Landroid/graphics/Point;II)V
    .locals 1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lnet/rtccloud/sdk/util/Dimension;->set(II)V

    return-void
.end method

.method public static measureWithSpecs(Lnet/rtccloud/sdk/util/Dimension;II)V
    .locals 0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/rtccloud/sdk/util/Dimension;->set(II)V

    return-void
.end method

.method public static measureWithVideoProfile(Lnet/rtccloud/sdk/util/Dimension;Lnet/rtccloud/sdk/VideoModule$Profile;II)V
    .locals 2

    .line 46
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 47
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 48
    :goto_0
    invoke-static {p0, p1, v0, p2, p3}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithVideoProfile(Lnet/rtccloud/sdk/util/Dimension;Lnet/rtccloud/sdk/VideoModule$Profile;ZII)V

    return-void
.end method

.method public static measureWithVideoProfile(Lnet/rtccloud/sdk/util/Dimension;Lnet/rtccloud/sdk/VideoModule$Profile;ZII)V
    .locals 1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p4

    if-eqz p2, :cond_0

    iget v0, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    :goto_0
    if-eqz p2, :cond_1

    iget p1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->high:I

    goto :goto_1

    :cond_1
    iget p1, p1, Lnet/rtccloud/sdk/VideoModule$Profile;->low:I

    :goto_1
    int-to-float p2, p3

    int-to-float p3, v0

    div-float/2addr p2, p3

    int-to-float p4, p4

    int-to-float p1, p1

    div-float/2addr p4, p1

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lnet/rtccloud/sdk/util/Dimension;->set(II)V

    return-void
.end method

.method public static motionEventActionToString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    const/4 v2, 0x5

    const-string v3, ")"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ACTION_POINTER_UP("

    invoke-static {v0, p0, v3}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "ACTION_POINTER_DOWN("

    invoke-static {v0, p0, v3}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string p0, "ACTION_HOVER_EXIT"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_HOVER_ENTER"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_SCROLL"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_HOVER_MOVE"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_OUTSIDE"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_CANCEL"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_MOVE"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_UP"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_DOWN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static remapLocalCoordinates([FFFLandroid/graphics/RectF;)V
    .locals 6

    if-eqz p0, :cond_2

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p3, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v5

    iget p1, p3, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, p1

    div-float/2addr p2, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    aput p1, p0, v4

    return-void

    :cond_1
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    aput p1, p0, v4

    aput p1, p0, v5

    return-void

    :cond_2
    const-string p0, "coordinates must be an array of two floats"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static remapRemoteCoordinates([FFFII)V
    .locals 2

    if-eqz p0, :cond_0

    .line 35
    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    int-to-float p3, p3

    mul-float/2addr p1, p3

    const/4 p3, 0x0

    .line 36
    aput p1, p0, p3

    int-to-float p1, p4

    mul-float/2addr p2, p1

    const/4 p1, 0x1

    .line 37
    aput p2, p0, p1

    return-void

    .line 38
    :cond_0
    const-string p0, "coordinates must be an array of two floats"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static remapRemoteCoordinates([FFFLandroid/graphics/RectF;)V
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    const/4 p1, 0x0

    aput v1, p0, p1

    iget p1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p2

    add-float/2addr p3, p1

    const/4 p1, 0x1

    aput p3, p0, p1

    return-void

    :cond_0
    const-string p0, "coordinates must be an array of two floats"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static safeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static safeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static whoami(Landroid/view/View;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, -0x1000000

    and-int/2addr v3, v0

    const/high16 v4, 0x1000000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x7f000000

    if-eq v3, v4, :cond_0

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "app"

    goto :goto_0

    :cond_1
    const-string v3, "android"

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
