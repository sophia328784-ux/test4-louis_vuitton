.class public interface abstract Landroidx/media3/exoplayer/drm/DrmSession;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/DrmSession$State;,
        Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
    }
.end annotation


# virtual methods
.method public abstract a()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
.end method

.method public abstract b()Ljava/util/UUID;
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract d()Landroidx/media3/decoder/CryptoConfig;
.end method

.method public abstract e(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
.end method

.method public abstract g(Ljava/lang/String;)Z
.end method

.method public abstract getState()I
.end method
