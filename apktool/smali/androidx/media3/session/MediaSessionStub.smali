.class final Landroidx/media3/session/MediaSessionStub;
.super Landroidx/media3/session/IMediaSession$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$SessionTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;,
        Landroidx/media3/session/MediaSessionStub$Controller2Cb;,
        Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;,
        Landroidx/media3/session/MediaSessionStub$ProgressReporter;
    }
.end annotation


# static fields
.field public static final synthetic p:I


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;

.field public final j:Landroidx/media3/session/ConnectedControllersManager;

.field public final k:Ljava/util/Set;

.field public l:Lcom/google/common/collect/ImmutableBiMap;

.field public m:Lcom/google/common/collect/ImmutableMap;

.field public n:I

.field public o:Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/session/IMediaSession$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub;->k:Ljava/util/Set;

    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->q()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub;->l:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaSessionStub;->m:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method public static G2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/session/MediaSessionStub$SessionTask;->c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v2, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/session/e;

    const/16 v5, 0xa

    move-object v1, p0

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {v4, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method

.method public static L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V
    .locals 1

    :try_start_0
    iget-object v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p2, p3}, Landroidx/media3/session/MediaSession$ControllerCb;->i(ILandroidx/media3/session/SessionResult;)V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p2}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to send result to controller "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;
    .locals 2

    new-instance v0, Landroidx/media3/session/o0;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Landroidx/media3/session/o0;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    return-object p0
.end method


# virtual methods
.method public final A0(Landroidx/media3/session/IMediaController;IJ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/z1;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/z1;-><init>(J)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/4 p4, 0x5

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final A2(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;IJ)V
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    if-gez p4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v3, v2}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/d0;

    invoke-direct {v0, p3, p5, p6, p4}, Landroidx/media3/session/d0;-><init>(Ljava/lang/Object;JI)V

    new-instance p3, Landroidx/media3/session/q0;

    const/16 p4, 0x1b

    invoke-direct {p3, p4}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance p4, Landroidx/media3/session/s;

    const/16 p5, 0xd

    invoke-direct {p4, v0, p3, p5}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, Landroidx/media3/session/c2;

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final D2(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/TrackSelectionParameters;->b(Landroid/os/Bundle;)Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/s;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p3, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x1d

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for TrackSelectionParameters"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final E2(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v5, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->k:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/e;

    const/16 v6, 0x9

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void

    :goto_0
    invoke-static {v5}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    return-void

    :cond_2
    move-object v5, p1

    invoke-static {v5}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    return-void
.end method

.method public final F0(Landroidx/media3/session/IMediaController;IF)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/u1;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/u1;-><init>(FI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x18

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1
    :try_start_1
    iget-object p1, v7, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/a2;

    move-object v4, p0

    move v8, p2

    move-object v6, p3

    move v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v3 .. v10}, Landroidx/media3/session/a2;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionImpl;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    invoke-static {p1, v3}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final G(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/media3/session/MediaSessionStub;->T1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V

    return-void
.end method

.method public final G0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/SessionResult;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionResult;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v2, p0, Landroidx/media3/session/ConnectedControllersManager;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/media3/session/ConnectedControllersManager;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    move-object p0, v3

    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_2

    :try_start_3
    iget-object v3, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->b:Landroidx/media3/session/SequencedFutureManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-nez v3, :cond_3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :try_start_4
    invoke-virtual {v3, p2, p3}, Landroidx/media3/session/SequencedFutureManager;->d(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for SessionResult"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final H0(Landroidx/media3/session/IMediaController;III)V
    .locals 2

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/r0;

    const/4 v1, 0x3

    invoke-direct {v0, p3, p4, v1}, Landroidx/media3/session/r0;-><init>(III)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I
    .locals 2

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/ConnectedControllersManager;->l(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/ConnectedControllersManager;->l(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/media3/session/PlayerWrapper;->v()I

    move-result p0

    add-int/2addr p3, p0

    :cond_0
    return p3
.end method

.method public final I2(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 2

    new-instance v0, Landroidx/media3/session/s;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void
.end method

.method public final J0(Landroidx/media3/session/IMediaController;IF)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/u1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/u1;-><init>(FI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0xd

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_0
    return-void
.end method

.method public final K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/b2;

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v6, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Landroidx/media3/session/b2;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionImpl;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    invoke-static {v0, v3}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final L(Landroidx/media3/session/IMediaController;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p2, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaSessionImpl;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/g0;

    const/16 v3, 0xa

    invoke-direct {v2, p0, p1, v3}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p2, v2}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final L0(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v0, p4}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/v1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p4}, Landroidx/media3/session/v1;-><init>(ILandroidx/media3/common/MediaItem;)V

    new-instance p4, Landroidx/media3/session/s1;

    const/4 v2, 0x2

    invoke-direct {p4, p0, p3, v2}, Landroidx/media3/session/s1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/s;

    const/16 v2, 0xe

    invoke-direct {p3, v0, p4, v2}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, Landroidx/media3/session/c2;

    invoke-direct {p4, p3, v1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final L1(Landroidx/media3/session/IMediaController;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, v2, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/g0;

    const/16 v4, 0xb

    invoke-direct {v3, p0, p1, v4}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final M1(Landroidx/media3/session/IMediaController;III)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-ge p4, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/q1;

    invoke-direct {v0, p0, p3, p4}, Landroidx/media3/session/q1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/o0;

    const/16 p4, 0xa

    invoke-direct {p3, v0, p4}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final N2(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;
    .locals 9

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    iget-object v0, v0, Landroidx/media3/common/Tracks;->a:Lcom/google/common/collect/ImmutableList;

    new-instance v1, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    new-instance v2, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Tracks$Group;

    iget-object v5, v5, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    iget-object v6, p0, Landroidx/media3/session/MediaSessionStub;->l:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Landroidx/media3/session/MediaSessionStub;->n:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroidx/media3/session/MediaSessionStub;->n:I

    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-virtual {v1, v5, v6}, Lcom/google/common/collect/ImmutableBiMap$Builder;->h(Landroidx/media3/common/TrackGroup;Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->g()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionStub;->l:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaSessionStub;->m:Lcom/google/common/collect/ImmutableMap;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Tracks$Group;

    iget-object v4, v2, Landroidx/media3/common/Tracks$Group;->b:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p0, v4}, Landroidx/media3/session/MediaSessionStub;->O2(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    new-instance v5, Landroidx/media3/common/Tracks$Group;

    iget-boolean v6, v2, Landroidx/media3/common/Tracks$Group;->c:Z

    iget-object v7, v2, Landroidx/media3/common/Tracks$Group;->d:[I

    iget-object v2, v2, Landroidx/media3/common/Tracks$Group;->e:[Z

    invoke-direct {v5, v4, v6, v7, v2}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, p1}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object v0, v1, Landroidx/media3/session/PlayerInfo$Builder;->F:Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iget-object v0, p1, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v1, v0, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->c()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->o()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v3, v2, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    invoke-virtual {p0, v3}, Landroidx/media3/session/MediaSessionStub;->O2(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackGroup;

    move-result-object v3

    new-instance v4, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v2, v2, Landroidx/media3/common/TrackSelectionOverride;->b:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v4, v3, v2}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a(Landroidx/media3/common/TrackSelectionOverride;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object p0

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->G:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public final O2(Landroidx/media3/common/TrackGroup;)Landroidx/media3/common/TrackGroup;
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->l:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p1, Landroidx/media3/common/TrackGroup;->a:I

    iget-object v4, p1, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    if-ge v2, v3, :cond_5

    aget-object v5, v4, v2

    iget-object v5, v5, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-eqz v5, :cond_4

    new-array v2, v3, [Landroidx/media3/common/Format;

    :goto_1
    iget v3, p1, Landroidx/media3/common/TrackGroup;->a:I

    if-ge v1, v3, :cond_3

    aget-object v3, v4, v1

    iget-object v5, v3, Landroidx/media3/common/Format;->m:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v6, p0, Landroidx/media3/session/MediaSessionStub;->m:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v3}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    aput-object v5, v2, v1

    goto :goto_3

    :cond_2
    aput-object v3, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Landroidx/media3/common/TrackGroup;

    invoke-direct {p0, v0, v2}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object p0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    new-instance p0, Landroidx/media3/common/TrackGroup;

    invoke-direct {p0, v0, v4}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object p0
.end method

.method public final P(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/t1;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/t1;-><init>(ZI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0xe

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final Q0(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v3, v2}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/w1;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/w1;-><init>(Ljava/util/List;I)V

    new-instance p3, Landroidx/media3/session/q0;

    const/16 v2, 0x13

    invoke-direct {p3, v2}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance v2, Landroidx/media3/session/s;

    const/16 v3, 0xe

    invoke-direct {v2, v0, p3, v3}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, Landroidx/media3/session/c2;

    invoke-direct {p3, v2, v1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 v0, 0x14

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final R(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/AudioAttributes;->a(Landroid/os/Bundle;)Landroidx/media3/common/AudioAttributes;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/r1;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p4, v1}, Landroidx/media3/session/r1;-><init>(Ljava/lang/Object;ZI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 p4, 0x23

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for AudioAttributes"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final S0(Landroidx/media3/session/IMediaController;IILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v0, p4}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/v1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4}, Landroidx/media3/session/v1;-><init>(ILandroidx/media3/common/MediaItem;)V

    new-instance p4, Landroidx/media3/session/s1;

    const/4 v1, 0x1

    invoke-direct {p4, p0, p3, v1}, Landroidx/media3/session/s1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/s;

    const/16 v2, 0xe

    invoke-direct {p3, v0, p4, v2}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, Landroidx/media3/session/c2;

    invoke-direct {p4, p3, v1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final T(Landroidx/media3/session/IMediaController;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/n0;

    const/4 v1, 0x5

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/n0;-><init>(II)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x19

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final T0(Landroidx/media3/session/IMediaController;III)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/r0;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p4, v1}, Landroidx/media3/session/r0;-><init>(III)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 p4, 0x21

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final T1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Z)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v0, p3}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/r1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1}, Landroidx/media3/session/r1;-><init>(Ljava/lang/Object;ZI)V

    new-instance p3, Landroidx/media3/session/q0;

    const/16 p4, 0x1b

    invoke-direct {p3, p4}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance p4, Landroidx/media3/session/s;

    const/16 v1, 0xd

    invoke-direct {p4, v0, p3, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, Landroidx/media3/session/c2;

    const/4 v0, 0x1

    invoke-direct {p3, p4, v0}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p4, 0x1f

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final U0(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/t1;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/t1;-><init>(ZI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x1a

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final U1(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final V(Landroidx/media3/session/IMediaController;ILandroid/os/IBinder;Z)V
    .locals 4

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p3}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v3, v2}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/r1;

    const/4 v1, 0x2

    invoke-direct {v0, p3, p4, v1}, Landroidx/media3/session/r1;-><init>(Ljava/lang/Object;ZI)V

    new-instance p3, Landroidx/media3/session/q0;

    const/16 p4, 0x1b

    invoke-direct {p3, p4}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance p4, Landroidx/media3/session/s;

    const/16 v1, 0xd

    invoke-direct {p4, v0, p3, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, Landroidx/media3/session/c2;

    const/4 v0, 0x1

    invoke-direct {p3, p4, v0}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final W(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final X1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V
    .locals 7

    invoke-static {p4}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p4

    if-eqz p1, :cond_5

    if-eqz p3, :cond_5

    if-nez p4, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    invoke-static {p3}, Landroidx/media3/session/SessionCommand;->a(Landroid/os/Bundle;)Landroidx/media3/session/SessionCommand;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p3, v3, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-static {p3}, Landroidx/media3/session/CommandButton;->n(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p3

    :try_start_1
    iget-object p5, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v4, p5

    check-cast v4, Landroidx/media3/session/MediaSessionImpl;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    iget-object p5, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2
    :try_start_2
    iget-object p5, v4, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/d2;

    move-object v1, p0

    move-object v6, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/d2;-><init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionImpl;ILandroidx/media3/session/IMediaController;)V

    invoke-static {p5, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance p0, Landroidx/media3/session/h;

    invoke-direct {p0, p5, v3, p4}, Landroidx/media3/session/h;-><init>(ZLandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    new-instance v5, Landroidx/media3/session/c2;

    const/4 p1, 0x1

    invoke-direct {v5, p0, p1}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Ignoring malformed Bundle for SessionCommand"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final Y(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Y0(Landroidx/media3/session/IMediaController;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/s1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Landroidx/media3/session/s1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/o0;

    const/16 v1, 0xa

    invoke-direct {p3, v0, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p2, v1, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z0(Landroidx/media3/session/IMediaController;IIJ)V
    .locals 1

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/d0;

    invoke-direct {v0, p0, p4, p5, p3}, Landroidx/media3/session/d0;-><init>(Ljava/lang/Object;JI)V

    new-instance p3, Landroidx/media3/session/o0;

    const/16 p4, 0xa

    invoke-direct {p3, v0, p4}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a1(Landroidx/media3/session/IMediaController;II)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroidx/media3/session/n0;

    const/4 v1, 0x3

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/n0;-><init>(II)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0xf

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final e2(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final h2(Landroidx/media3/session/IMediaController;IIILandroid/os/IBinder;)V
    .locals 4

    if-eqz p1, :cond_3

    if-eqz p5, :cond_3

    if-ltz p3, :cond_3

    if-ge p4, p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p5}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p5

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v3, v2}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/o0;

    const/4 v1, 0x6

    invoke-direct {v0, p5, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    new-instance p5, Landroidx/media3/session/q1;

    invoke-direct {p5, p0, p3, p4}, Landroidx/media3/session/q1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/s;

    const/16 p4, 0xe

    invoke-direct {p3, v0, p5, p4}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, Landroidx/media3/session/c2;

    const/4 p5, 0x1

    invoke-direct {p4, p3, p5}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final i2(Landroidx/media3/session/IMediaController;I)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaSessionStub;->I2(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Landroidx/media3/common/PlaybackParameters;->e:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sget-object v2, Landroidx/media3/common/PlaybackParameters;->f:Ljava/lang/String;

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p3

    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    invoke-direct {v1, v0, p3}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p3, Landroidx/media3/session/o0;

    const/4 v0, 0x7

    invoke-direct {p3, v1, v0}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p3}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0xd

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for PlaybackParameters"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j2(Landroidx/media3/session/IMediaController;IZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/t1;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/t1;-><init>(ZI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final k0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 12

    iget-object p2, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/session/MediaSessionImpl;

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object p2, p2, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {p3}, Landroidx/media3/session/ConnectionRequest;->a(Landroid/os/Bundle;)Landroidx/media3/session/ConnectionRequest;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p3, Landroidx/media3/session/ConnectionRequest;->c:Ljava/lang/String;

    invoke-static {p2, v0, v2}, Landroidx/media3/session/SessionUtil;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring connection from invalid package name "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (uid="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget v1, p3, Landroidx/media3/session/ConnectionRequest;->d:I

    :goto_0
    :try_start_1
    new-instance v6, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v6, v2, v1, v0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {p2}, Landroidx/media3/session/legacy/MediaSessionManager;->a(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroidx/media3/session/legacy/MediaSessionManager;->b(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v9

    new-instance v5, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v7, p3, Landroidx/media3/session/ConnectionRequest;->a:I

    iget v8, p3, Landroidx/media3/session/ConnectionRequest;->b:I

    new-instance v10, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v10, p1, v8}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;I)V

    iget-object v11, p3, Landroidx/media3/session/ConnectionRequest;->e:Landroid/os/Bundle;

    invoke-direct/range {v5 .. v11}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v5}, Landroidx/media3/session/MediaSessionStub;->E2(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Ignoring malformed Bundle for ConnectionRequest"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    :goto_1
    invoke-static {p1}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    return-void
.end method

.method public final l1(Landroidx/media3/session/IMediaController;IIII)V
    .locals 1

    if-eqz p1, :cond_1

    if-ltz p3, :cond_1

    if-lt p4, p3, :cond_1

    if-gez p5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/x1;

    invoke-direct {v0, p3, p4, p5}, Landroidx/media3/session/x1;-><init>(III)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 p4, 0x14

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final l2(Landroidx/media3/session/IMediaController;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/n0;

    const/4 v1, 0x2

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/n0;-><init>(II)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x22

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final o(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final o0(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final o1(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/s;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p3, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x1b

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final o2(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p0(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final p1(Landroidx/media3/session/IMediaController;IILandroid/os/IBinder;)V
    .locals 5

    if-eqz p1, :cond_3

    if-eqz p4, :cond_3

    if-gez p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {p4}, Landroidx/media3/common/BundleListRetriever;->a(Landroid/os/IBinder;)Lcom/google/common/collect/ImmutableList;

    move-result-object p4

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v4, v3}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/w1;

    invoke-direct {v0, p4, v1}, Landroidx/media3/session/w1;-><init>(Ljava/util/List;I)V

    new-instance p4, Landroidx/media3/session/s1;

    const/4 v1, 0x3

    invoke-direct {p4, p0, p3, v1}, Landroidx/media3/session/s1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/s;

    const/16 v1, 0xe

    invoke-direct {p3, v0, p4, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p4, Landroidx/media3/session/c2;

    const/4 v0, 0x1

    invoke-direct {p4, p3, v0}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p3, 0x14

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final q(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final q1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v0, p3}, Landroidx/media3/common/MediaMetadata;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaMetadata;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/o0;

    const/16 v1, 0x9

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x13

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaMetadata"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final r(Landroidx/media3/session/IMediaController;III)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q1;

    invoke-direct {v0, p0, p3, p4}, Landroidx/media3/session/q1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 p4, 0x1b

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final r0(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final s0(Landroidx/media3/session/IMediaController;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/n0;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Landroidx/media3/session/n0;-><init>(II)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 v0, 0x22

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final t(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;II)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/m;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p0

    const/16 p3, 0x1b

    invoke-virtual {v1, p1, p2, p3, p0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final u2(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final w2(Landroidx/media3/session/IMediaController;IZI)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/y1;

    invoke-direct {v0, p3, p4}, Landroidx/media3/session/y1;-><init>(ZI)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p3

    const/16 p4, 0x22

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final x0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V
    .locals 1

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    iget v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-static {v0, p3}, Landroidx/media3/common/MediaItem;->b(ILandroid/os/Bundle;)Landroidx/media3/common/MediaItem;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Landroidx/media3/session/t;

    invoke-direct {v0, p3, p4, p5}, Landroidx/media3/session/t;-><init>(Ljava/lang/Object;J)V

    new-instance p3, Landroidx/media3/session/q0;

    const/16 p4, 0x1b

    invoke-direct {p3, p4}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance p4, Landroidx/media3/session/s;

    const/16 p5, 0xd

    invoke-direct {p4, v0, p3, p5}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p3, Landroidx/media3/session/c2;

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/16 p4, 0x1f

    invoke-virtual {p0, p1, p2, p4, p3}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Ignoring malformed Bundle for MediaItem"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final x1(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final y(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method

.method public final y0(Landroidx/media3/session/IMediaController;II)V
    .locals 2

    if-eqz p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/s1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p3, v1}, Landroidx/media3/session/s1;-><init>(Landroidx/media3/session/MediaSessionStub;II)V

    new-instance p3, Landroidx/media3/session/o0;

    const/16 v1, 0xa

    invoke-direct {p3, v0, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0x14

    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y2(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionStub;->X1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public final z0(Landroidx/media3/session/IMediaController;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/q0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media3/session/q0;-><init>(I)V

    invoke-static {v0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/media3/session/MediaSessionStub;->J2(Landroidx/media3/session/IMediaController;IILandroidx/media3/session/o0;)V

    return-void
.end method
