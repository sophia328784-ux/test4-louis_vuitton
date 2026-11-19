.class public Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/ScreenshareProducer;


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

.field private isStarted:Z

.field private sink:Lnet/rtccloud/sdk/Sink$Screenshare;

.field private who:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->SCREENSHARE_PRODUCER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    invoke-direct {p0}, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->init()V

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

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->who:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->isStarted:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Screenshare;)V
    .locals 2

    sget-object p1, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p1}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->who:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onBind() %s"

    invoke-virtual {p1, v1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p2, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->isStarted:Z

    new-instance v0, Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-direct {v0, p0, v1}, Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;-><init>(Landroid/view/View;Lnet/rtccloud/sdk/Sink$Screenshare;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->isStarted:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;->teardown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFrameLayout;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
