.class public Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private activeProducer:Lcom/sightcall/common/MyVideoProducer;

.field advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private call:Lnet/rtccloud/sdk/Call;

.field private cameraProducer:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

.field private final collimator:Lcom/sightcall/universal/internal/view/Collimator;

.field private floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

.field private final floatingRect:Landroid/graphics/Rect;

.field private final measureDim:Lnet/rtccloud/sdk/util/Dimension;

.field private session:Lcom/sightcall/universal/model/Session;

.field private systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

.field private systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

.field private videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/sightcall/universal/internal/view/Collimator;

    invoke-direct {p1}, Lcom/sightcall/universal/internal/view/Collimator;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Lcom/sightcall/universal/internal/view/Collimator;

    invoke-direct {p1}, Lcom/sightcall/universal/internal/view/Collimator;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    .line 30
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 31
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    .line 32
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p1, Lcom/sightcall/universal/internal/view/Collimator;

    invoke-direct {p1}, Lcom/sightcall/universal/internal/view/Collimator;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    .line 35
    new-instance p1, Lnet/rtccloud/sdk/util/Dimension;

    invoke-direct {p1}, Lnet/rtccloud/sdk/util/Dimension;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    .line 37
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/Collimator;->init(Landroid/view/View;)V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)V

    return-void
.end method


# virtual methods
.method public configure(Lnet/rtccloud/sdk/Call;Lcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iput-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iput-object p4, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->session:Lcom/sightcall/universal/model/Session;

    iput-object p5, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    iget-object p1, p4, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->ocrRatio()Ljava/lang/Float;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/sightcall/universal/internal/view/Collimator;->ratio(F)V

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->ocrSafeArea()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/sightcall/universal/internal/view/Collimator;->safeArea(F)V

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    iget-object p1, p4, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-boolean p1, p1, Lcom/sightcall/universal/model/CallParameters;->showCollimator:Z

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/Collimator;->show(Z)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/Collimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    sget v0, Lcom/sightcall/universal/R$id;->universal_video_producer_camera:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->cameraProducer:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->activeProducer:Lcom/sightcall/common/MyVideoProducer;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->call:Lnet/rtccloud/sdk/Call;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-static {v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithSpecs(Lnet/rtccloud/sdk/util/Dimension;II)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sightcall/common/MyVideoProducer;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v2

    if-nez v2, :cond_2

    instance-of v0, v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Call$Parameters;->videoProfile()Lnet/rtccloud/sdk/VideoModule$Profile;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/sightcall/universal/R$bool;->universal_isPortrait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-static {v0, v1, v2, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithVideoProfile(Lnet/rtccloud/sdk/util/Dimension;Lnet/rtccloud/sdk/VideoModule$Profile;ZII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-static {v0, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithSpecs(Lnet/rtccloud/sdk/util/Dimension;II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    invoke-static {v0, v2, p1, p2}, Lnet/rtccloud/sdk/util/ViewUtils;->measureWithPreviewSize(Lnet/rtccloud/sdk/util/Dimension;Landroid/graphics/Point;II)V

    :goto_0
    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->measureDim:Lnet/rtccloud/sdk/util/Dimension;

    iget p2, p1, Lnet/rtccloud/sdk/util/Dimension;->width:I

    iget p1, p1, Lnet/rtccloud/sdk/util/Dimension;->height:I

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz p3, :cond_0

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/sightcall/universal/internal/view/FloatingListener;->fixPosition(Z)V

    :cond_0
    iget-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-virtual {p3, p1, p2}, Lcom/sightcall/universal/internal/view/Collimator;->updateRect(II)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->activeProducer:Lcom/sightcall/common/MyVideoProducer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lnet/rtccloud/sdk/VideoProducer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    new-instance v2, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;

    invoke-direct {v2, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v1, v2, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z

    invoke-interface {v0}, Lcom/sightcall/common/MyVideoProducer;->isPaused()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->cameraProducer:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-ne v0, v1, :cond_2

    iget-object v0, v1, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->cameraProducer:Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->isInProgress()Z

    return v2

    :cond_2
    instance-of p0, v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz p0, :cond_3

    check-cast v0, Lcom/sightcall/universal/internal/view/UvcProducer;

    iget-object p0, v0, Lcom/sightcall/universal/internal/view/UvcProducer;->scaleDetector:Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/sightcall/universal/internal/view/MyScaleGestureDetector;->isInProgress()Z

    :cond_3
    return v2

    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onVisibilityChange()V
    .locals 9

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$dimen;->universal_call_video_consumer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/sightcall/universal/internal/view/FloatingListener;->getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/FloatingListener;->restart(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setActiveProducer(Lcom/sightcall/common/MyVideoProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->activeProducer:Lcom/sightcall/common/MyVideoProducer;

    return-void
.end method

.method public showCollimator(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->collimator:Lcom/sightcall/universal/internal/view/Collimator;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/internal/view/Collimator;->show(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updatePosition()V
    .locals 13

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->call:Lnet/rtccloud/sdk/Call;

    invoke-static {v0, v1}, Lcom/sightcall/universal/internal/util/Utils;->videoProducerToFullscreen(Lcom/sightcall/universal/model/Session;Lnet/rtccloud/sdk/Call;)Z

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

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sightcall/universal/internal/view/FloatingListener;->stop()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/sightcall/universal/R$dimen;->universal_call_video_producer_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sightcall/universal/R$dimen;->universal_call_video_producer_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v4, 0x55

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-nez v1, :cond_3

    new-instance v6, Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->session:Lcom/sightcall/universal/model/Session;

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

    iput-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v7, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v10, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iget-object v11, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static/range {v6 .. v12}, Lcom/sightcall/universal/internal/view/FloatingListener;->getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;->floatingRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/sightcall/universal/internal/view/FloatingListener;->start(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    xor-int/2addr v0, v2

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/view/ViewUtils;->applyThumbnailEffects(Landroid/view/View;Z)V

    return-void
.end method
