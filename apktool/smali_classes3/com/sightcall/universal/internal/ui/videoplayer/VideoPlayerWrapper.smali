.class public interface abstract Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;,
        Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u000256J0\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\u0019H&J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u001cH&J\u0010\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH&J\u0008\u0010 \u001a\u00020\u000eH&J\u0008\u0010!\u001a\u00020\u000eH&J\u0008\u0010\"\u001a\u00020\u000eH&J\n\u0010#\u001a\u0004\u0018\u00010\u001fH&J\u0008\u0010$\u001a\u00020\u000eH&J\u0010\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\'H&J\u0008\u0010(\u001a\u00020\u000eH&J\u0008\u0010)\u001a\u00020\u000eH&J\u0010\u0010*\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH&J\u0008\u0010+\u001a\u00020\u000eH&J\n\u0010,\u001a\u0004\u0018\u00010-H&J\u0010\u0010.\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\'H&J\u0008\u00100\u001a\u00020\u000eH&J\u0008\u00101\u001a\u00020\u000eH&J\u0010\u00102\u001a\u00020\u000e2\u0006\u00103\u001a\u000204H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000c\u00a8\u00067\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;",
        "",
        "videoProducer",
        "Lcom/sightcall/common/MyVideoProducer;",
        "getVideoProducer",
        "()Lcom/sightcall/common/MyVideoProducer;",
        "videoPlayerBarView",
        "Landroid/view/View;",
        "getVideoPlayerBarView",
        "()Landroid/view/View;",
        "isPlayerBarShowings",
        "",
        "()Z",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "videoProducerStub",
        "Landroid/view/ViewStub;",
        "videoPlayerBarStub",
        "advancedAnnotationsWrapper",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
        "capabilitiesRepository",
        "Lcom/sightcall/capabilities/CapabilitiesRepository;",
        "isMyVideoProducerPlayerView",
        "Lnet/rtccloud/sdk/VideoProducer;",
        "setOnPlayerCallback",
        "onPlayerCallback",
        "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;",
        "newState",
        "uri",
        "Landroid/net/Uri;",
        "saveState",
        "restore",
        "reset",
        "getUri",
        "resetState",
        "setVisibility",
        "visibility",
        "",
        "showBar",
        "hideBar",
        "loadUri",
        "unloadUri",
        "snapshot",
        "Landroid/graphics/Bitmap;",
        "seekToRelative",
        "relative",
        "resume",
        "pause",
        "setCallback",
        "visibilityCallback",
        "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;",
        "OnPlayerCallback",
        "VisibilityCallback",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract getVideoPlayerBarView()Landroid/view/View;
.end method

.method public abstract getVideoProducer()Lcom/sightcall/common/MyVideoProducer;
.end method

.method public abstract hideBar()V
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/ViewStub;Landroid/view/ViewStub;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;Lcom/sightcall/capabilities/CapabilitiesRepository;)V
.end method

.method public abstract isMyVideoProducerPlayerView(Lnet/rtccloud/sdk/VideoProducer;)Z
.end method

.method public abstract isPlayerBarShowings()Z
.end method

.method public abstract loadUri(Landroid/net/Uri;)V
.end method

.method public abstract newState(Landroid/net/Uri;)V
.end method

.method public abstract pause()V
.end method

.method public abstract reset()V
.end method

.method public abstract resetState()V
.end method

.method public abstract restore()V
.end method

.method public abstract resume()V
.end method

.method public abstract saveState()V
.end method

.method public abstract seekToRelative(I)V
.end method

.method public abstract setCallback(Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;)V
.end method

.method public abstract setOnPlayerCallback(Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public abstract showBar()V
.end method

.method public abstract snapshot()Landroid/graphics/Bitmap;
.end method

.method public abstract unloadUri()V
.end method
