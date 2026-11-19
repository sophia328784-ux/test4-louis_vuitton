.class public Lcom/sightcall/universal/internal/view/MyVideoConsumerView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/VideoConsumer;
.implements Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field advancedAnnotationsContainer:Landroid/view/ViewGroup;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
    .end annotation
.end field

.field advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private allowLiveHoverAndPointer:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private call:Lnet/rtccloud/sdk/Call;

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private dc:Lnet/rtccloud/sdk/DataChannelModule;

.field private final dst:Landroid/graphics/RectF;

.field private floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

.field private final floatingRect:Landroid/graphics/Rect;

.field private isStarted:Z

.field private participant:Lnet/rtccloud/sdk/Participant;

.field private remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

.field private final requestLayoutRunnable:Ljava/lang/Runnable;

.field scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

.field private scaleType:Lnet/rtccloud/sdk/util/ScaleType;

.field private session:Lcom/sightcall/universal/model/Session;

.field private systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

.field private systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

.field private videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

.field private who:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_CONSUMER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dst:Landroid/graphics/RectF;

    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dst:Landroid/graphics/RectF;

    .line 42
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 43
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    .line 45
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    .line 48
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dst:Landroid/graphics/RectF;

    .line 49
    sget-object p1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    .line 50
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    .line 52
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->init()V

    return-void
.end method

.method private findAnnotationsFrom()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->conference()Lnet/rtccloud/sdk/ConferenceModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/ConferenceModule;->myself()Lnet/rtccloud/sdk/Participant;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private findAnnotationsTo()I
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Call;->isConference()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/sightcall/universal/internal/view/MyScaleGestureDetector$OnScaleCallback;)V

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->updateCameraZoom()V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V

    return-void
.end method

.method private postRequestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->requestLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateScaling()V
    .locals 7

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dst:Landroid/graphics/RectF;

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
.method public configure(Lnet/rtccloud/sdk/DataChannelModule;Lcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Lcom/sightcall/universal/internal/model/RemoteState;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iput-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iput-object p4, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->session:Lcom/sightcall/universal/model/Session;

    iput-object p5, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    iput-object p6, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    iget-object p1, p4, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object p2, p4, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/agent/Usecase;->videoOutPointer(Lcom/sightcall/universal/model/Config;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->allowLiveHoverAndPointer:Z

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getScaleType()Lnet/rtccloud/sdk/util/ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    return-object p0
.end method

.method public isFilterBitmap()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->isStarted:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Participant;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind(%d) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dst:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p0}, Lnet/rtccloud/sdk/util/ViewUtils;->safeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z

    return-void
.end method

.method public onFrame(Lnet/rtccloud/sdk/Frame;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

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
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->updateScaling()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->postRequestLayout()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p2

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScale(F)V
    .locals 1

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->ZOOM_CAMERA:Lcom/sightcall/common/DataChannelAction;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dc:Lnet/rtccloud/sdk/DataChannelModule;

    invoke-static {p1}, Lcom/sightcall/universal/internal/view/ViewUtils;->floatPercentToIntPercent(F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/common/DataChannelAction;->send(Lnet/rtccloud/sdk/DataChannelModule;[Ljava/lang/Object;)Z

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->updateScaling()V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/internal/view/FloatingListener;->fixPosition(Z)V

    :cond_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->isStarted:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->isStarted:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->allowLiveHoverAndPointer:Z

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v1

    :cond_4
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    new-instance v2, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;

    invoke-direct {v2, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v2, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z

    move-result v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraPaused()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/RemoteState;->isPlayerPaused()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/model/RemoteState;->isCameraEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->session:Lcom/sightcall/universal/model/Session;

    iget-object v2, v2, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v2}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v2

    sget-object v3, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {v2, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->allowLiveHoverAndPointer:Z

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v0
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->dst:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->postRequestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onVisibilityChange()V
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$dimen;->universal_call_video_consumer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/sightcall/universal/internal/view/FloatingListener;->getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/FloatingListener;->restart(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public participant()Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->participant:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public paused()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->DrawDrop:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    return-void
.end method

.method public resumed()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->Pointer:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFilterBitmap(%b) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setScaleType(Lnet/rtccloud/sdk/util/ScaleType;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->who:Ljava/lang/String;

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setScaleType(%s) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleType:Lnet/rtccloud/sdk/util/ScaleType;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->updateScaling()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public snapshot()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/SnapshotKt;->getSnapshot(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public updateCameraZoom()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->remoteState:Lcom/sightcall/universal/internal/model/RemoteState;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/model/RemoteState;->cameraZoom()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->configure(F)V

    :cond_0
    return-void
.end method

.method public updatePosition()V
    .locals 13

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/util/Utils;->videoConsumerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v3, -0x1

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/view/FloatingListener;->stop()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->setAnchor(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v3, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->Pointer:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v1, p0, v3}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->resumeAnnotations(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sightcall/universal/R$dimen;->universal_call_video_consumer_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sightcall/universal/R$dimen;->universal_call_video_consumer_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v4, 0x53

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-nez v1, :cond_3

    new-instance v6, Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, v1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v1

    sget-object v3, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v6, p0, v2, v1}, Lcom/sightcall/universal/internal/view/FloatingListener;-><init>(Landroid/view/View;ZZ)V

    iput-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v10, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iget-object v11, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/sightcall/universal/internal/view/FloatingListener;->getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerView;->floatingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/sightcall/universal/internal/view/FloatingListener;->start(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    xor-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/view/ViewUtils;->applyThumbnailEffects(Landroid/view/View;Z)V

    return-void
.end method
