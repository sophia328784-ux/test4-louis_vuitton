.class public interface abstract Landroidx/media3/exoplayer/drm/ExoMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;,
        Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;,
        Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnExpirationUpdateListener;,
        Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnKeyStatusChangeListener;,
        Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;,
        Landroidx/media3/exoplayer/drm/ExoMediaDrm$Provider;
    }
.end annotation


# virtual methods
.method public abstract a([B)Ljava/util/Map;
.end method

.method public abstract b()Landroidx/media3/exoplayer/drm/ExoMediaDrm$ProvisionRequest;
.end method

.method public abstract c()[B
.end method

.method public abstract d([B[B)V
.end method

.method public abstract e([B)V
.end method

.method public abstract f()I
.end method

.method public abstract g([B)Landroidx/media3/decoder/CryptoConfig;
.end method

.method public abstract h([B)V
.end method

.method public abstract i([B[B)[B
.end method

.method public abstract j(Landroidx/media3/exoplayer/drm/ExoMediaDrm$OnEventListener;)V
.end method

.method public abstract k([BLjava/util/List;ILjava/util/HashMap;)Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyRequest;
.end method

.method public l([BLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method

.method public abstract m(Ljava/lang/String;[B)Z
.end method

.method public abstract release()V
.end method
