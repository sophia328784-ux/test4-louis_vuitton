.class Lcom/sightcall/universal/internal/model/State$Camera;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Camera"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/State$Camera$Torch;
    }
.end annotation


# instance fields
.field final paused:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "paused"
    .end annotation
.end field

.field final source:Ljava/lang/String;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "source"
    .end annotation
.end field

.field final started:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "started"
    .end annotation
.end field

.field final torch:Lcom/sightcall/universal/internal/model/State$Camera$Torch;
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "torch"
    .end annotation
.end field

.field final usb:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "usb"
    .end annotation
.end field

.field final zoom:I
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "zoom"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLcom/sightcall/universal/internal/model/State$Camera$Torch;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/model/State$Camera;->started:Z

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/model/State$Camera;->paused:Z

    iput-object p3, p0, Lcom/sightcall/universal/internal/model/State$Camera;->torch:Lcom/sightcall/universal/internal/model/State$Camera$Torch;

    iput-object p4, p0, Lcom/sightcall/universal/internal/model/State$Camera;->source:Ljava/lang/String;

    iput p5, p0, Lcom/sightcall/universal/internal/model/State$Camera;->zoom:I

    iput-boolean p6, p0, Lcom/sightcall/universal/internal/model/State$Camera;->usb:Z

    return-void
.end method

.method public static create(Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Camera;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v2

    invoke-virtual {v1}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    if-eqz v1, :cond_1

    check-cast v2, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    new-instance v3, Lcom/sightcall/universal/internal/model/State$Camera;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isStarted()Z

    move-result v4

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->isPaused()Z

    move-result v5

    invoke-static {v2}, Lcom/sightcall/universal/internal/model/State$Camera$Torch;->create(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/model/State$Camera$Torch;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State$Camera;->getSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;->getZoom()F

    move-result p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State$Camera;->getZoom(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sightcall/universal/internal/model/State$Camera;-><init>(ZZLcom/sightcall/universal/internal/model/State$Camera$Torch;Ljava/lang/String;IZ)V

    return-object v3

    :cond_1
    instance-of v1, v2, Lcom/sightcall/universal/internal/view/UvcProducer;

    if-eqz v1, :cond_2

    check-cast v2, Lcom/sightcall/universal/internal/view/UvcProducer;

    new-instance v3, Lcom/sightcall/universal/internal/model/State$Camera;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/UvcProducer;->isStarted()Z

    move-result v4

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/UvcProducer;->isPaused()Z

    move-result v5

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State$Camera$Torch;->create(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/model/State$Camera$Torch;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/view/UvcProducer;->getZoom()F

    move-result p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State$Camera;->getZoom(F)I

    move-result v8

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/sightcall/universal/internal/model/State$Camera;-><init>(ZZLcom/sightcall/universal/internal/model/State$Camera$Torch;Ljava/lang/String;IZ)V

    return-object v3

    :cond_2
    new-instance v4, Lcom/sightcall/universal/internal/model/State$Camera;

    invoke-static {v0}, Lcom/sightcall/universal/internal/model/State$Camera$Torch;->create(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/model/State$Camera$Torch;

    move-result-object v7

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->parameters()Lnet/rtccloud/sdk/Call$Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call$Parameters;->cameraSource()Lnet/rtccloud/sdk/VideoModule$CameraSource;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/model/State$Camera;->getSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/sightcall/universal/internal/model/State$Camera;-><init>(ZZLcom/sightcall/universal/internal/model/State$Camera$Torch;Ljava/lang/String;IZ)V

    return-object v4
.end method

.method private static getSource(Lnet/rtccloud/sdk/VideoModule$CameraSource;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule$CameraSource;->isFront()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "front"

    return-object p0

    :cond_1
    const-string p0, "rear"

    return-object p0
.end method

.method private static getZoom(F)I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v0, 0x64

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
