.class public Lcom/sightcall/universal/internal/view/UvcPreview;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/sightcall/uvc/DeviceListener;


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final dst:Landroid/graphics/RectF;

.field private final matrix:Landroid/graphics/Matrix;

.field private final measureDim:Lnet/rtccloud/sdk/util/Dimension;

.field private producer:Lcom/sightcall/universal/internal/view/UvcProducer;

.field private final scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private final src:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/UvcPreview;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->matrix:Landroid/graphics/Matrix;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->dst:Landroid/graphics/RectF;

    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 41
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->matrix:Landroid/graphics/Matrix;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    .line 43
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->dst:Landroid/graphics/RectF;

    .line 44
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 45
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->matrix:Landroid/graphics/Matrix;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->dst:Landroid/graphics/RectF;

    .line 51
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 52
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private updateScaling()V
    .locals 8

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->dst:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v2 .. v7}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->src:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->dst:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public getPreviewSize()Landroid/graphics/Point;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->producer:Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->getPreviewSize()Landroid/graphics/Point;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/Point;

    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onAttachedToWindow() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->addDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "onDetachedFromWindow() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/uvc/DeviceManager;->instance(Landroid/content/Context;)Lcom/sightcall/uvc/DeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sightcall/uvc/DeviceManager;->removeDeviceListener(Lcom/sightcall/uvc/DeviceListener;)V

    return-void
.end method

.method public onDeviceAttached(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDeviceDetached(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDevicePermissionDenied(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onDevicePermissionGranted(Lcom/sightcall/uvc/Device;)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithPreviewSize(Lnet/rtccloud/sdk/util/Dimension;Landroid/graphics/Point;II)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    iget p2, p1, Lnet/rtccloud/sdk/util/Dimension;->width:I

    iget p1, p1, Lnet/rtccloud/sdk/util/Dimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable() called with: surface = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], width = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], height = ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->trigger()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureDestroyed() called with: surface = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->producer:Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureDestroyed: release surface = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public restore(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 5

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restore() called with: producer = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->producer:Lcom/sightcall/universal/internal/view/UvcProducer;

    if-ne v1, p1, :cond_0

    const-string p0, "restore: ignore same producer"

    invoke-virtual {v0, p0, v3}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->producer:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/UvcProducer;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "restore: override texture ["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sightcall/universal/internal/view/UvcPreview;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->trigger()V

    return-void
.end method

.method public trigger()V
    .locals 3

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    const-string v1, "trigger() called"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->producer:Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcPreview;->producer:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sightcall/universal/internal/view/UvcProducer;->onSurfaceTextureAvailable(Landroid/view/TextureView;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/UvcPreview;->updateScaling()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "onSurfaceTextureAvailable: producer == null"

    invoke-virtual {v0, p0, v2}, Lcom/sightcall/pratik/logs/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
