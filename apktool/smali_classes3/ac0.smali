.class public final synthetic Lac0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;I)V
    .locals 0

    iput p2, p0, Lac0;->a:I

    iput-object p1, p0, Lac0;->b:Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lac0;->a:I

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    iget-object p0, p0, Lac0;->b:Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;

    const-string v0, "takePicture success"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->b:Landroid/graphics/Bitmap;

    sget-boolean v1, Lcom/perfectcorp/perfectlib/developermode/WatermarkBlender;->a:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f2147ae    # 0.63f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setLinearText(Z)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const v2, -0x9c9d

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40800000    # 4.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v5, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v1, "DEVELOPER MODE"

    invoke-static {v1, v3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v8

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v2, "DEVELOPER MODE"

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v9}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v8, Landroid/text/BoringLayout$Metrics;->width:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v4

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->a:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->b:Landroid/graphics/Bitmap;

    invoke-interface {p0, v0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;->onPictureTaken(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "takePictureByBuffer failed"

    invoke-static {v2, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;

    const-string v0, "takePictureByBuffer success"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->a:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;->b:Landroid/graphics/Bitmap;

    invoke-interface {p0, v0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;->onPictureTaken(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "takePicture failed"

    invoke-static {v2, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
