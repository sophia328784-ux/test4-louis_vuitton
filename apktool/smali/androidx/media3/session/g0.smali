.class public final synthetic Landroidx/media3/session/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Landroidx/media3/session/g0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/g0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/g0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 11
    iput p3, p0, Landroidx/media3/session/g0;->b:I

    iput-object p1, p0, Landroidx/media3/session/g0;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/g0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 42

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/session/g0;->b:I

    const-string v2, "SessionResult must not be null"

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/media3/session/g0;->d:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/session/g0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroidx/media3/session/MediaSessionStub;

    check-cast v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, v4}, Landroidx/media3/session/ConnectedControllersManager;->d(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void

    :pswitch_0
    check-cast v0, Landroidx/media3/session/MediaSessionStub;

    check-cast v4, Landroidx/media3/session/IMediaController;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-interface {v4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    check-cast v4, Landroid/content/Intent;

    sget v1, Landroidx/media3/session/MediaSessionService;->j:I

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->f()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v4}, Landroidx/media3/session/MediaSessionService;->c(Landroid/content/Intent;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1, v4}, Landroidx/media3/session/MediaSessionImpl;->q(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Ignored unrecognized media button intent."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_2
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast v4, Landroid/os/ResultReceiver;

    sget v1, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionResult;

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    const-string v1, "Custom command failed"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    goto :goto_2

    :goto_1
    const-string v1, "Custom command cancelled"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    :goto_2
    iget v1, v0, Landroidx/media3/session/SessionResult;->a:I

    iget-object v0, v0, Landroidx/media3/session/SessionResult;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :pswitch_3
    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    check-cast v4, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->r()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    move-object v1, v0

    check-cast v1, Landroidx/media3/session/MediaSessionImpl;

    check-cast v4, Landroidx/media3/session/PlayerWrapper;

    iget-object v2, v1, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object v4, v1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    new-instance v0, Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    invoke-direct {v0, v1, v4}, Landroidx/media3/session/MediaSessionImpl$PlayerListener;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/PlayerWrapper;)V

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->Y(Landroidx/media3/common/Player$Listener;)V

    iput-object v0, v1, Landroidx/media3/session/MediaSessionImpl;->w:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

    :try_start_1
    iget-object v0, v2, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-virtual {v0, v3, v4}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->m(ILandroidx/media3/session/PlayerWrapper;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v5, "Exception in using media1 API"

    invoke-static {v5, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v0, v2, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->g()V

    new-instance v5, Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->e()Landroidx/media3/common/PlaybackException;

    move-result-object v6

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->X0()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->W0()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v9

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->W0()Landroidx/media3/common/Player$PositionInfo;

    move-result-object v10

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v12

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->i()I

    move-result v13

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->w()Z

    move-result v14

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->s()Landroidx/media3/common/VideoSize;

    move-result-object v15

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->Z0()Landroidx/media3/common/Timeline;

    move-result-object v16

    const/16 v0, 0x12

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->C0()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    :goto_4
    move-object/from16 v18, v0

    goto :goto_5

    :cond_3
    sget-object v0, Landroidx/media3/common/MediaMetadata;->L:Landroidx/media3/common/MediaMetadata;

    goto :goto_4

    :goto_5
    const/16 v0, 0x16

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->q0()F

    move-result v0

    :goto_6
    move/from16 v19, v0

    goto :goto_7

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_6

    :goto_7
    const/16 v0, 0x15

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->r0()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    :goto_8
    move-object/from16 v21, v0

    goto :goto_9

    :cond_5
    sget-object v0, Landroidx/media3/common/AudioAttributes;->i:Landroidx/media3/common/AudioAttributes;

    goto :goto_8

    :goto_9
    const/16 v0, 0x1c

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->o()Landroidx/media3/common/text/CueGroup;

    move-result-object v0

    :goto_a
    move-object/from16 v23, v0

    goto :goto_b

    :cond_6
    sget-object v0, Landroidx/media3/common/text/CueGroup;->d:Landroidx/media3/common/text/CueGroup;

    goto :goto_a

    :goto_b
    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->s0()Landroidx/media3/common/DeviceInfo;

    move-result-object v24

    const/16 v0, 0x17

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->f0()I

    move-result v3

    :cond_7
    move/from16 v25, v3

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->b1()Z

    move-result v26

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->r()Z

    move-result v27

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->Z()I

    move-result v29

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->h()I

    move-result v30

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v31

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->m()Z

    move-result v32

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->a1()Landroidx/media3/common/MediaMetadata;

    move-result-object v33

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->N0()J

    move-result-wide v34

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->z0()J

    move-result-wide v36

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->k0()J

    move-result-wide v38

    const/16 v0, 0x1e

    invoke-virtual {v4, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->n()Landroidx/media3/common/Tracks;

    move-result-object v0

    :goto_c
    move-object/from16 v40, v0

    goto :goto_d

    :cond_8
    sget-object v0, Landroidx/media3/common/Tracks;->b:Landroidx/media3/common/Tracks;

    goto :goto_c

    :goto_d
    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->d0()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v41

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    const/16 v28, 0x1

    invoke-direct/range {v5 .. v41}, Landroidx/media3/session/PlayerInfo;-><init>(Landroidx/media3/common/PlaybackException;ILandroidx/media3/session/SessionPositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;ILandroidx/media3/common/PlaybackParameters;IZLandroidx/media3/common/VideoSize;Landroidx/media3/common/Timeline;ILandroidx/media3/common/MediaMetadata;FFLandroidx/media3/common/AudioAttributes;ILandroidx/media3/common/text/CueGroup;Landroidx/media3/common/DeviceInfo;IZZIIIZZLandroidx/media3/common/MediaMetadata;JJJLandroidx/media3/common/Tracks;Landroidx/media3/common/TrackSelectionParameters;)V

    iput-object v5, v1, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v4}, Landroidx/media3/session/PlayerWrapper;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaSessionImpl;->g(Landroidx/media3/common/Player$Commands;)V

    return-void

    :pswitch_5
    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    check-cast v4, Ljava/lang/Runnable;

    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_6
    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    check-cast v4, Ljava/util/ArrayList;

    sget v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    :goto_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_a
    return-void

    :pswitch_7
    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    sget v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_b
    return-void

    :pswitch_8
    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    check-cast v4, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    sget v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/SessionResult;

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/media3/session/SessionResult;->b:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    const-string v1, "Custom action failed"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e()V

    :goto_f
    return-void

    :pswitch_9
    check-cast v0, Landroidx/media3/session/MediaControllerImplBase;

    check-cast v4, Landroidx/media3/session/MediaControllerStub$ControllerTask;

    sget v1, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-boolean v1, v0, Landroidx/media3/session/MediaControllerImplBase;->q:Z

    if-eqz v1, :cond_c

    goto :goto_10

    :cond_c
    invoke-interface {v4, v0}, Landroidx/media3/session/MediaControllerStub$ControllerTask;->a(Landroidx/media3/session/MediaControllerImplBase;)V

    :goto_10
    return-void

    :pswitch_a
    check-cast v0, Landroidx/media3/session/MediaControllerImplLegacy;

    check-cast v4, Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    new-instance v1, Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v4}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplLegacy;->e:Landroidx/media3/session/MediaControllerImplLegacy$ControllerCompatCallback;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    iget-object v0, v0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->r(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
