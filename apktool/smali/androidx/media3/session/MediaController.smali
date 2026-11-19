.class public Landroidx/media3/session/MediaController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/DoNotMock;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaController$Listener;,
        Landroidx/media3/session/MediaController$ConnectionCallback;,
        Landroidx/media3/session/MediaController$MediaControllerImpl;,
        Landroidx/media3/session/MediaController$ProgressListener;,
        Landroidx/media3/session/MediaController$Builder;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Window;

.field public b:Z

.field public final c:Landroidx/media3/session/MediaController$MediaControllerImpl;

.field public final d:Landroidx/media3/session/MediaController$Listener;

.field public final e:Landroid/os/Handler;

.field public final f:J

.field public g:Z

.field public final h:Landroidx/media3/session/MediaControllerHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroidx/media3/session/MediaController$Listener;Landroid/os/Looper;Landroidx/media3/session/MediaControllerHolder;Landroidx/media3/session/CacheBitmapLoader;J)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [AndroidXMedia3/1.10.1] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaController;->a:Landroidx/media3/common/Timeline$Window;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/session/MediaController;->f:J

    iput-object p4, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    iput-object p6, p0, Landroidx/media3/session/MediaController;->h:Landroidx/media3/session/MediaControllerHolder;

    iget-object p4, p2, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {p4}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->f()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance v0, Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplLegacy;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Landroidx/media3/common/util/BitmapLoader;J)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaControllerImplBase;-><init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Z)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->connect()V

    return-void
.end method

.method public static X0(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaController;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->release()V

    return-void

    :catch_0
    move-exception p0

    const-string v0, "MediaController future failed (so we couldn\'t release it)"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final A()Landroidx/media3/common/MediaMetadata;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->A()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final A0(ILjava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring addMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->A0(ILjava/util/List;)V

    return-void
.end method

.method public final B(Landroid/view/Surface;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setVideoSurface()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->B(Landroid/view/Surface;)V

    return-void
.end method

.method public final B0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->B0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final C()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->C()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final C0()Landroidx/media3/common/MediaMetadata;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->C0()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final D()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring clearMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->D()V

    return-void
.end method

.method public final D0(Landroidx/media3/common/MediaItem;J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->D0(Landroidx/media3/common/MediaItem;J)V

    return-void
.end method

.method public final E()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->E()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final E0(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setRepeatMode()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->E0(I)V

    return-void
.end method

.method public final F()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekToPreviousMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->F()V

    return-void
.end method

.method public final F0(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The controller is not connected. Ignoring setTrackSelectionParameters()."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method public final G(IZ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setDeviceMuted()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->G(IZ)V

    return-void
.end method

.method public final G0(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring clearVideoSurfaceView()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->G0(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final H()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring decreaseDeviceVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->H()V

    return-void
.end method

.method public final H0(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring moveMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->H0(II)V

    return-void
.end method

.method public final I(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring increaseDeviceVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->I(I)V

    return-void
.end method

.method public final I0(III)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring moveMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->I0(III)V

    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setVideoSurfaceView()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->J(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final J0(Ljava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring addMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->J0(Ljava/util/List;)V

    return-void
.end method

.method public final K(IILjava/util/List;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring replaceMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->K(IILjava/util/List;)V

    return-void
.end method

.method public final K0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->K0()Z

    move-result p0

    return p0
.end method

.method public final L(Landroidx/media3/common/MediaMetadata;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "playlistMetadata must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setPlaylistMetadata()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->L(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method public final L0(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setDeviceVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->L0(I)V

    return-void
.end method

.method public final M(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring removeMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->M(I)V

    return-void
.end method

.method public final M0(Ljava/util/List;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    const-string v3, "items must not contain null, index=%s"

    invoke-static {v1, v3, v2}, Lcom/google/common/base/Preconditions;->b(ILjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "The controller is not connected. Ignoring setMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->M0(Ljava/util/List;)V

    return-void
.end method

.method public final N(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring removeMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->N(II)V

    return-void
.end method

.method public final N0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->N0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final O(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setVideoSurfaceHolder()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->O(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final O0()Landroidx/media3/common/MediaItem;
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/session/MediaController;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method public final P(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->P(Z)V

    :cond_0
    return-void
.end method

.method public final Q()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring unmute()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->Q()V

    return-void
.end method

.method public final Q0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final R(Landroidx/media3/common/MediaItem;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->R(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final R0(I)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    return p0
.end method

.method public final S()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekToNextMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->S()V

    return-void
.end method

.method public final S0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/session/MediaController;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final T(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring decreaseDeviceVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->T(I)V

    return-void
.end method

.method public final U()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->U()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final U0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/session/MediaController;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/media3/common/Timeline$Window;->h:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->V(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final V0()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->v()I

    move-result v1

    iget-object p0, p0, Landroidx/media3/session/MediaController;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v3}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final W()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->W()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final W0()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-boolean v0, p0, Landroidx/media3/session/MediaController;->g:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v2, p0, Landroidx/media3/session/MediaController;->g:Z

    iget-object p0, p0, Landroidx/media3/session/MediaController;->h:Landroidx/media3/session/MediaControllerHolder;

    iput-boolean v2, p0, Landroidx/media3/session/MediaControllerHolder;->d:Z

    iget-object v0, p0, Landroidx/media3/session/MediaControllerHolder;->c:Landroidx/media3/session/MediaController;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final X(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setDeviceMuted()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->X(Z)V

    return-void
.end method

.method public final Y(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    const-string v0, "listener must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->Y(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final Y0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final Z()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->Z()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final Z0()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "MediaController method is called from a wrong thread. See javadoc of MediaController for details."

    invoke-static {v0, p0}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/PlaybackParameters;->d:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final a0()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final b0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring mute()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->b0()V

    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring play()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->c()V

    return-void
.end method

.method public final c0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring increaseDeviceVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->c0()V

    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setPlaybackParameters()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public final d0()Landroidx/media3/common/TrackSelectionParameters;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/TrackSelectionParameters;->J:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    return-object p0
.end method

.method public final e()Landroidx/media3/common/PlaybackException;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->e()Landroidx/media3/common/PlaybackException;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e0(Landroid/view/TextureView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setVideoTextureView()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->e0(Landroid/view/TextureView;)V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring prepare()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->f()V

    return-void
.end method

.method public final f0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->f0()I

    move-result p0

    return p0
.end method

.method public final g(F)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "volume must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->h(ZLjava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "The controller is not connected. Ignoring setVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->g(F)V

    return-void
.end method

.method public final g0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->g0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final h()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->h()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final h0(IJ)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaController$MediaControllerImpl;->h0(IJ)V

    return-void
.end method

.method public final i()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->i()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i0()Landroidx/media3/common/Player$Commands;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/Player$Commands;->b:Landroidx/media3/common/Player$Commands;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public final isPlaying()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j0(Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setShuffleMode()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->j0(Z)V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->k()V

    return-void
.end method

.method public final k0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->k0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final l()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekToPrevious()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->l()V

    return-void
.end method

.method public final l0(ILandroidx/media3/common/MediaItem;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring replaceMediaItem()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->l0(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->m0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final n()Landroidx/media3/common/Tracks;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->n()Landroidx/media3/common/Tracks;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final n0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->n0()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final o()Landroidx/media3/common/text/CueGroup;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->o()Landroidx/media3/common/text/CueGroup;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public final o0(Landroid/view/TextureView;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring clearVideoTextureView()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->o0(Landroid/view/TextureView;)V

    return-void
.end method

.method public final p()Landroidx/media3/common/Timeline;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->p()Landroidx/media3/common/Timeline;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/Timeline;->a:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final p0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setAudioAttributes()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->p0(Landroidx/media3/common/AudioAttributes;Z)V

    return-void
.end method

.method public final pause()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring pause()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->pause()V

    return-void
.end method

.method public final q()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekToNext()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->q()V

    return-void
.end method

.method public final q0()F
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->q0()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final r()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r0()Landroidx/media3/common/AudioAttributes;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->r0()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public final release()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-boolean v1, p0, Landroidx/media3/session/MediaController;->b:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Release "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [AndroidXMedia3/1.10.1] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    const-class v2, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v2

    :try_start_0
    sget-object v3, Landroidx/media3/common/MediaLibraryInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaController;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :try_start_1
    iget-object v2, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {v2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Exception while releasing impl"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    iget-boolean v2, p0, Landroidx/media3/session/MediaController;->g:Z

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$Listener;->e()V

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroidx/media3/session/MediaController;->g:Z

    iget-object p0, p0, Landroidx/media3/session/MediaController;->h:Landroidx/media3/session/MediaControllerHolder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Session rejected the connection request."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final s()Landroidx/media3/common/VideoSize;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->s()Landroidx/media3/common/VideoSize;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/media3/common/VideoSize;->d:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public final s0()Landroidx/media3/common/DeviceInfo;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Landroidx/media3/common/DeviceInfo;->e:Landroidx/media3/common/DeviceInfo;

    return-object p0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final seekTo(J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->seekTo(J)V

    return-void
.end method

.method public final stop()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring stop()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->stop()V

    return-void
.end method

.method public final t(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setPlaybackSpeed()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->t(F)V

    return-void
.end method

.method public final t0(II)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setDeviceVolume()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/media3/session/MediaController$MediaControllerImpl;->t0(II)V

    return-void
.end method

.method public final u()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->u()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final u0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->u0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->v()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final v0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->v0()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final w()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w0(Landroidx/media3/common/MediaItem;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring setMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->w0(Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public final x()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->x()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final x0(Ljava/util/List;IJ)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    const-string v0, "mediaItems must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    const-string v3, "items must not contain null, index=%s"

    invoke-static {v1, v3, v2}, Lcom/google/common/base/Preconditions;->b(ILjava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "The controller is not connected. Ignoring setMediaItems()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaController$MediaControllerImpl;->x0(Ljava/util/List;IJ)V

    return-void
.end method

.method public final y()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekForward()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->y()V

    return-void
.end method

.method public final y0(I)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekTo()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroidx/media3/session/MediaController$MediaControllerImpl;->y0(I)V

    return-void
.end method

.method public final z()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The controller is not connected. Ignoring seekBack()."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->z()V

    return-void
.end method

.method public final z0()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->Z0()V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->c:Landroidx/media3/session/MediaController$MediaControllerImpl;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/session/MediaController$MediaControllerImpl;->z0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
