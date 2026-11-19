.class public interface abstract Landroidx/media3/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayer$Builder;,
        Landroidx/media3/exoplayer/ExoPlayer$PreloadConfiguration;,
        Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;
    }
.end annotation


# virtual methods
.method public abstract P0()V
.end method

.method public abstract T0()V
.end method

.method public abstract b(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;)V
.end method

.method public bridge synthetic e()Landroidx/media3/common/PlaybackException;
    .locals 0

    invoke-interface {p0}, Landroidx/media3/exoplayer/ExoPlayer;->e()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Landroidx/media3/exoplayer/ExoPlaybackException;
.end method

.method public abstract isScrubbingModeEnabled()Z
.end method

.method public abstract setImageOutput(Landroidx/media3/exoplayer/image/ImageOutput;)V
.end method

.method public abstract setScrubbingModeEnabled(Z)V
.end method
