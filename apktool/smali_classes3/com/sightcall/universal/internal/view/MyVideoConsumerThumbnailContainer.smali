.class public Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private container:Landroid/view/ViewGroup;

.field private floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

.field private final floatingRect:Landroid/graphics/Rect;

.field private initialY:I

.field private isConfigured:Z

.field private isDragging:Z

.field private scrollable:Z

.field private session:Lcom/sightcall/universal/model/Session;

.field private systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

.field private systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

.field private touchSlop:I

.field private videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_CONSUMER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    .line 24
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    .line 29
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->init()V

    return-void
.end method

.method private addThumbnail(Lnet/rtccloud/sdk/Participant;)V
    .locals 4

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->createThumbnail()Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Lnet/rtccloud/sdk/Participant;->videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V

    return-void
.end method

.method private canScroll()Z
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr p0, v4

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr p0, v0

    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr p0, v0

    if-ge v3, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private createThumbnail()Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method private init()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->touchSlop:I

    return-void
.end method

.method private removeThumbnails(I)V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->container:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->removeViews(II)V

    return-void
.end method


# virtual methods
.method public configure(Lcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Lcom/sightcall/universal/model/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iput-object p3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    iput-object p4, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->session:Lcom/sightcall/universal/model/Session;

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->initialY:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->touchSlop:I

    if-le v0, v3, :cond_4

    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    iput-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isDragging:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isDragging:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->canScroll()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->initialY:I

    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isDragging:Z

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    iget-boolean p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/view/FloatingListener;->fixPosition(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->scrollable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isDragging:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public onVisibilityChange()V
    .locals 8

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sightcall/universal/internal/view/FloatingListener;->getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/FloatingListener;->restart(Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateConsumers([Lnet/rtccloud/sdk/Participant;Z)V
    .locals 5

    xor-int/lit8 v0, p2, 0x1

    if-eqz p2, :cond_0

    array-length p2, p1

    goto :goto_0

    :cond_0
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_6

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    array-length v3, p1

    if-ge v0, v3, :cond_1

    aget-object v3, p1, v0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    goto :goto_4

    :cond_2
    if-nez v2, :cond_3

    invoke-direct {p0, v3}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->addThumbnail(Lnet/rtccloud/sdk/Participant;)V

    goto :goto_3

    :cond_3
    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->removeThumbnails(I)V

    return-void

    :cond_4
    invoke-virtual {v3}, Lnet/rtccloud/sdk/Participant;->videoConsumer()Lnet/rtccloud/sdk/VideoConsumer;

    move-result-object v4

    if-eq v4, v2, :cond_5

    invoke-virtual {v3, v2}, Lnet/rtccloud/sdk/Participant;->videoConsumer(Lnet/rtccloud/sdk/VideoConsumer;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    :goto_4
    return-void
.end method

.method public updatePosition()V
    .locals 8

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->isConfigured:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    if-nez v0, :cond_2

    new-instance v1, Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, v0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p0, v3, v0}, Lcom/sightcall/universal/internal/view/FloatingListener;-><init>(Landroid/view/View;ZZ)V

    iput-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->systemUiHelper:Lcom/sightcall/universal/util/SystemUiHelper;

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->systemBarConfig:Lcom/sightcall/universal/internal/view/SystemBarConfig;

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->videoPlayerWrapper:Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sightcall/universal/internal/view/FloatingListener;->getSafeRect(Lcom/sightcall/universal/internal/view/FloatingListener;Landroid/graphics/Rect;ILcom/sightcall/universal/util/SystemUiHelper;Lcom/sightcall/universal/internal/view/SystemBarConfig;Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingListener:Lcom/sightcall/universal/internal/view/FloatingListener;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailContainer;->floatingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/view/FloatingListener;->start(Landroid/graphics/Rect;)V

    :cond_2
    :goto_1
    return-void
.end method
