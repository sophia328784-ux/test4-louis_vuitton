.class public Lnet/rtccloud/sdk/internal/view/VideoConsumerView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/VideoConsumer;


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private call:Lnet/rtccloud/sdk/Call;

.field private final dst:Landroid/graphics/RectF;

.field private isStarted:Z

.field private participant:Lnet/rtccloud/sdk/Participant;

.field private final requestLayoutRunnable:Ljava/lang/Runnable;

.field private scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private who:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_CONSUMER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->dst:Landroid/graphics/RectF;

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Lnet/rtccloud/sdk/internal/view/VideoConsumerView$1;

    invoke-direct {p1, p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView$1;-><init>(Lnet/rtccloud/sdk/internal/view/VideoConsumerView;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 34
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->dst:Landroid/graphics/RectF;

    .line 35
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 36
    new-instance p1, Lnet/rtccloud/sdk/internal/view/VideoConsumerView$1;

    invoke-direct {p1, p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView$1;-><init>(Lnet/rtccloud/sdk/internal/view/VideoConsumerView;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 37
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 40
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->dst:Landroid/graphics/RectF;

    .line 41
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 42
    new-instance p1, Lnet/rtccloud/sdk/internal/view/VideoConsumerView$1;

    invoke-direct {p1, p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView$1;-><init>(Lnet/rtccloud/sdk/internal/view/VideoConsumerView;)V

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lnet/rtccloud/sdk/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private postRequestLayout()V
    .locals 1

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateScaling()V
    .locals 7

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float v6, p0

    invoke-static/range {v1 .. v6}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    return-void
.end method


# virtual methods
.method public getScaleType()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    return-object p0
.end method

.method public isFilterBitmap()Z
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->isStarted:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Participant;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind(%d) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->dst:Landroid/graphics/RectF;

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p0}, Lnet/rtccloud/sdk/util/ViewUtils;->safeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z

    return-void
.end method

.method public onFrame(Lnet/rtccloud/sdk/Frame;)V
    .locals 3

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->updateScaling()V

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->postRequestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2, v1, v0}, Lnet/rtccloud/sdk/util/ViewUtils;->getMeasuredDimension(IIFF)Lnet/rtccloud/sdk/util/Dimension;

    move-result-object p1

    iget p2, p1, Lnet/rtccloud/sdk/util/Dimension;->width:I

    iget p1, p1, Lnet/rtccloud/sdk/util/Dimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->updateScaling()V

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->isStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->isStarted:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->postRequestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public participant()Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public setFilterBitmap(Z)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFilterBitmap(%b) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleType(Lnet/rtccloud/sdk/util/ScaleType;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setScaleType(%s) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->updateScaling()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
