.class public Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;
.super Lnet/rtccloud/sdk/internal/view/VideoConsumerView;
.source "SourceFile"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final updateVisibility:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    new-instance p1, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility:Ljava/lang/Runnable;

    .line 16
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p1, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView$1;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView$1;-><init>(Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility:Ljava/lang/Runnable;

    .line 19
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility()V

    return-void
.end method

.method private init()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    return-void
.end method

.method private updateVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onFrame(Lnet/rtccloud/sdk/Frame;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->onFrame(Lnet/rtccloud/sdk/Frame;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p1, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

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

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->onStart()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lnet/rtccloud/sdk/internal/view/VideoConsumerView;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/CallOverlayConsumerView;->updateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
