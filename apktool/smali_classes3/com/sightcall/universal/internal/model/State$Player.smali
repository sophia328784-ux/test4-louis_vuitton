.class public Lcom/sightcall/universal/internal/model/State$Player;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/model/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Player"
.end annotation


# instance fields
.field final paused:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "paused"
    .end annotation
.end field

.field final seek:J
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "seek"
    .end annotation
.end field

.field final started:Z
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "started"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sightcall/universal/internal/model/State$Player;->started:Z

    iput-boolean p2, p0, Lcom/sightcall/universal/internal/model/State$Player;->paused:Z

    iput-wide p3, p0, Lcom/sightcall/universal/internal/model/State$Player;->seek:J

    return-void
.end method

.method public static create(Lnet/rtccloud/sdk/Call;)Lcom/sightcall/universal/internal/model/State$Player;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/rtccloud/sdk/Call;->video()Lnet/rtccloud/sdk/VideoModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->producer()Lnet/rtccloud/sdk/VideoProducer;

    move-result-object v0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/VideoModule;->isSending()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->toPlayer(Lnet/rtccloud/sdk/VideoProducer;)Lcom/sightcall/universal/internal/model/State$Player;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/sightcall/universal/internal/model/State$Player;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/sightcall/universal/internal/model/State$Player;-><init>(ZZJ)V

    return-object p0
.end method
