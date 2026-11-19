.class public Lcom/sightcall/universal/internal/view/ProgressivexImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# static fields
.field private static isReceiving:Z

.field private static isRunning:Z

.field private static isSending:Z

.field private static pictureBitmap:Landroid/graphics/Bitmap;


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

.field capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private sink:Lnet/rtccloud/sdk/Sink$Progressivex;

.field private source:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->lambda$loadBitmap$1(Z)V

    return-void
.end method

.method private addAdvancedAnnotationView()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->setAnchor(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsContainer:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Lcom/sightcall/universal/internal/util/Views;->layoutOver(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    sget-object v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;->DrawDrop:Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;

    invoke-interface {v0, p0, v1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->selectStandaloneMode(Ljava/lang/Object;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StandaloneMode;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->resumeAnnotations(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->lambda$loadInitialData$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->lambda$loadUri$2(Landroid/net/Uri;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->lambda$loadBitmap$0()V

    return-void
.end method

.method private init()V
    .locals 1

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getCallComponent()Lcom/sightcall/universal/CallComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/CallComponent;->inject(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V

    return-void
.end method

.method public static isReceiving()Z
    .locals 1

    sget-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving:Z

    return v0
.end method

.method public static isRunning()Z
    .locals 1

    sget-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning:Z

    return v0
.end method

.method public static isSending()Z
    .locals 1

    sget-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending:Z

    return v0
.end method

.method private synthetic lambda$loadBitmap$0()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->sink:Lnet/rtccloud/sdk/Sink$Progressivex;

    sget-object v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/Sink$Progressivex;->push(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method private synthetic lambda$loadBitmap$1(Z)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending:Z

    new-instance p1, Lnq0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lnq0;-><init>(Lcom/sightcall/universal/internal/view/ProgressivexImageView;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving:Z

    return-void
.end method

.method private synthetic lambda$loadInitialData$3()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->sink:Lnet/rtccloud/sdk/Sink$Progressivex;

    sget-object v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/Sink$Progressivex;->push(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method private synthetic lambda$loadUri$2(Landroid/net/Uri;Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->loadInitialData(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method

.method private loadInitialData(Landroid/content/Context;Landroid/net/Uri;Z)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->maxPictureSize()Landroid/util/Size;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sightcall/universal/internal/util/Utils;->loadBitmapFromFile(Landroid/content/Context;Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[ProgressivexImageView] picture is null"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string p1, "[ProgressivexImageView] picture is recycled"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p1, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p3, :cond_2

    new-instance p1, Lnq0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lnq0;-><init>(Lcom/sightcall/universal/internal/view/ProgressivexImageView;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private maxPictureSize()Landroid/util/Size;
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-boolean p0, p0, Lcom/sightcall/universal/agent/Usecase;->takeUhdSnapshot:Z

    if-eqz p0, :cond_0

    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x870

    const/16 v1, 0xf00

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/util/Size;

    const/16 v0, 0x438

    const/16 v1, 0x780

    invoke-direct {p0, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method public configure(Lnet/rtccloud/sdk/Sink$Progressivex;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->sink:Lnet/rtccloud/sdk/Sink$Progressivex;

    return-void
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->source:I

    return p0
.end method

.method public loadBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v0}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateScreenShare()V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STARTED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    :cond_0
    sput-object p1, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Lac;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lac;-><init>(Ljava/lang/Object;ZI)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->addAdvancedAnnotationView()V

    return-void
.end method

.method public loadUri(Landroid/net/Uri;Z)V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->activateScreenShare()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/sightcall/common/DataChannelAction;->STARTED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v1}, Lcom/sightcall/common/DataChannelAction;->send()Z

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending:Z

    goto :goto_0

    :cond_0
    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving:Z

    :goto_0
    new-instance v0, Loq0;

    invoke-direct {v0, p0, p1, p2}, Loq0;-><init>(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Landroid/net/Uri;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->addAdvancedAnnotationView()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

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

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {p1, p0, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->layoutOver(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    new-instance v1, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;

    invoke-direct {v1, p1}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1, p0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processTouch(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$Touch;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public restore(Lcom/sightcall/universal/model/Session;)V
    .locals 2

    sget-object v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->loadBitmap(Landroid/graphics/Bitmap;Z)V

    return-void

    :cond_0
    iget-object p1, p1, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    iget-object p1, p1, Lcom/sightcall/universal/model/CallParameters;->screenshareContentUri:Landroid/net/Uri;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->loadUri(Landroid/net/Uri;Z)V

    :cond_1
    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->source:I

    return-void
.end method

.method public snapshot()Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/SnapshotKt;->getSnapshot(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public stop()V
    .locals 2

    sget-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->pictureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->advancedAnnotationsWrapper:Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-interface {v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;->processDeleteAll()V

    invoke-static {}, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->sink:Lnet/rtccloud/sdk/Sink$Progressivex;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Sink$Progressivex;->stop()V

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isRunning:Z

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->capabilitiesRepository:Lcom/sightcall/capabilities/CapabilitiesRepository;

    invoke-interface {v1}, Lcom/sightcall/capabilities/CapabilitiesRepository;->stopScreenShare()V

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isReceiving:Z

    sput-boolean v0, Lcom/sightcall/universal/internal/view/ProgressivexImageView;->isSending:Z

    sget-object v0, Lcom/sightcall/common/DataChannelAction;->STOPPED_PICTURE:Lcom/sightcall/common/DataChannelAction;

    invoke-virtual {v0}, Lcom/sightcall/common/DataChannelAction;->send()Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    return-void
.end method
