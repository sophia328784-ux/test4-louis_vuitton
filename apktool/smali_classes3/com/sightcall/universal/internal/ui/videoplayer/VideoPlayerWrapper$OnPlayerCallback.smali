.class public interface abstract Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPlayerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0008\u0010\u0007\u001a\u00020\u0003H&\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$OnPlayerCallback;",
        "",
        "onPlayerStart",
        "",
        "onPlayerStop",
        "onPlayerPause",
        "onPlayerResume",
        "onPlayerStartSeek",
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
.method public abstract onPlayerPause()V
.end method

.method public abstract onPlayerResume()V
.end method

.method public abstract onPlayerStart()V
.end method

.method public abstract onPlayerStartSeek()V
.end method

.method public abstract onPlayerStop()V
.end method
