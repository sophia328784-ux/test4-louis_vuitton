.class public final Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "isMyVideoProducerPlayerView",
        "",
        "Lnet/rtccloud/sdk/VideoProducer;",
        "toPlayer",
        "Lcom/sightcall/universal/internal/model/State$Player;",
        "sdk_installedRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z
    .locals 0

    instance-of p0, p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    return p0
.end method

.method public static final toPlayer(Lnet/rtccloud/sdk/VideoProducer;)Lcom/sightcall/universal/internal/model/State$Player;
    .locals 5

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoProducerExtensionsKt;->isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;

    new-instance v0, Lcom/sightcall/universal/internal/model/State$Player;

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isStarted()Z

    move-result v1

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->isPaused()Z

    move-result v2

    invoke-virtual {p0}, Lcom/sightcall/videoplayer/view/MyVideoProducerPlayerView;->getDuration()I

    move-result p0

    int-to-long v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sightcall/universal/internal/model/State$Player;-><init>(ZZJ)V

    return-object v0

    :cond_0
    const-string p0, "Can only be used with a MyVideoProducerPlayerView use isMyVideoProducerPlayerView to check instance"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
