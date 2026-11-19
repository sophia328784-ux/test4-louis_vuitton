.class Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/ScreenshareProducer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshareProducerLeech"
.end annotation


# instance fields
.field private call:Lnet/rtccloud/sdk/Call;

.field private handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

.field private isStarted:Z

.field private sink:Lnet/rtccloud/sdk/Sink$Screenshare;

.field private final view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final who:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->view:Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lnet/rtccloud/sdk/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->who:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->isStarted:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Sink$Screenshare;)V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    const-string p0, "[view] reference is null"

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->isStarted:Z

    new-instance v0, Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    invoke-direct {v0, v1, v2}, Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;-><init>(Landroid/view/View;Lnet/rtccloud/sdk/Sink$Screenshare;)V

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->isStarted:Z

    iget-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;->teardown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->handler:Lnet/rtccloud/sdk/internal/util/ScreenshareProducerHandler;

    :cond_1
    return-void
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->sink:Lnet/rtccloud/sdk/Sink$Screenshare;

    iput-object v0, p0, Lnet/rtccloud/sdk/internal/view/ScreenshareProducerFactory$ScreenshareProducerLeech;->call:Lnet/rtccloud/sdk/Call;

    return-void
.end method
