.class public Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/ScreenshareConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;,
        Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;,
        Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private dragGestureDetector:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;

.field private drawingZoneListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;

.field private final dst:Landroid/graphics/RectF;

.field private final dstCopy:Landroid/graphics/RectF;

.field private isStarted:Z

.field private final requestLayoutRunnable:Ljava/lang/Runnable;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaleGestureListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;

.field private final scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private screenshare:Lnet/rtccloud/sdk/ScreenshareModule;

.field private who:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SCREENSHARE_CONSUMER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dst:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dst:Landroid/graphics/RectF;

    .line 42
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    .line 43
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 44
    new-instance p1, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 45
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dst:Landroid/graphics/RectF;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    .line 50
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 51
    new-instance p1, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 52
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method private init()V
    .locals 4

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/di/SDKInjectorI;->inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->who:Ljava/lang/String;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;

    invoke-direct {v0, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;-><init>(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dragGestureDetector:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    return-void
.end method

.method private postRequestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static scale(Landroid/graphics/RectF;F)V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v2, v0, p1

    mul-float/2addr p1, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    iget v0, p0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    iget v3, p0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v2

    iget v2, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateScaling()V
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dst:Landroid/graphics/RectF;

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

    move-result v0

    int-to-float v6, v0

    invoke-static/range {v1 .. v6}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    move-result v0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->setAspect(F)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getScaleType()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    return-object p0
.end method

.method public isFilterBitmap()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->isStarted:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lnet/rtccloud/sdk/Call;->screenshare()Lnet/rtccloud/sdk/ScreenshareModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->screenshare:Lnet/rtccloud/sdk/ScreenshareModule;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dragGestureDetector:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;

    iget v3, v2, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetX:F

    iget v2, v2, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->offsetY:F

    invoke-virtual {v1, v3, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;

    invoke-static {v2}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$ScaleGestureListener;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scale(Landroid/graphics/RectF;F)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dragGestureDetector:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->a(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->drawingZoneListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    invoke-interface {v1, v2}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;->onDrawingZoneUpdated(Landroid/graphics/RectF;)V

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dstCopy:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p0}, Lnet/rtccloud/sdk/util/ViewUtils;->safeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z

    :cond_1
    return-void
.end method

.method public onFrame(Lnet/rtccloud/sdk/Frame;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmap:Landroid/graphics/Bitmap;

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
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->updateScaling()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->postRequestLayout()V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->updateScaling()V

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->isStarted:Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {p0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateScreenShare()V

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->isStarted:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopScreenShare()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dragGestureDetector:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DragGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->screenshare:Lnet/rtccloud/sdk/ScreenshareModule;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->postRequestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setDrawingZoneListener(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->drawingZoneListener:Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView$DrawingZoneListener;

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFilterBitmap(%b) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public snapshot()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/SnapshotKt;->getSnapshot(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
