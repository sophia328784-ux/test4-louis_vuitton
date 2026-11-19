.class public final synthetic Landroidx/media3/session/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/ConnectedControllersManager;Ljava/util/concurrent/atomic/AtomicBoolean;Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 15
    const/4 p4, 0x3

    iput p4, p0, Landroidx/media3/session/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/collect/ImmutableList;Ljava/util/ArrayList;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 16
    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/session/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroidx/media3/session/MediaController;)V
    .locals 0

    .line 17
    const/4 p2, 0x5

    iput p2, p0, Landroidx/media3/session/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    iput p5, p0, Landroidx/media3/session/e;->b:I

    iput-object p1, p0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/session/e;->b:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    sget v4, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, v1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-interface {v2, v1, v3, v0}, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;->e(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaSessionImpl;

    iget-object v3, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v4, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/media3/common/util/Consumer;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    sget v5, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v4, v0}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, Landroidx/media3/session/MediaSessionStub;

    iget-object v1, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v2, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/media3/session/IMediaController;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object v0, v8, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    const-string v6, "Controller "

    :try_start_1
    iget-object v7, v8, Landroidx/media3/session/MediaSessionStub;->k:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_2

    :goto_1
    invoke-static {v5}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    goto/16 :goto_a

    :cond_2
    :try_start_2
    iget-object v7, v1, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    check-cast v7, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Landroidx/media3/session/MediaSessionStub$Controller2Cb;->a:Landroidx/media3/session/IMediaController;

    invoke-interface {v7}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v1}, Landroidx/media3/session/MediaSessionImpl;->n(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v9

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->k(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has sent connection request multiple times"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v5

    goto/16 :goto_b

    :cond_3
    :goto_2
    iget-object v6, v9, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    iget-object v10, v9, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v7, v1, v6, v10}, Landroidx/media3/session/ConnectedControllersManager;->a(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->j(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Ignoring connection request from unknown controller info"

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v6, v2, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget-object v7, v2, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object v14, v9, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v8, v7}, Landroidx/media3/session/MediaSessionStub;->N2(Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v18

    iget-object v7, v2, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v7, v7, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v7}, Landroidx/media3/session/legacy/MediaSessionCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->c:Landroid/media/session/MediaSession$Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v5

    :try_start_3
    new-instance v5, Landroidx/media3/session/ConnectionState;

    iget-object v11, v2, Landroidx/media3/session/MediaSessionImpl;->v:Landroid/app/PendingIntent;

    iget-object v12, v9, Landroidx/media3/session/MediaSession$ConnectionResult;->c:Lcom/google/common/collect/ImmutableList;

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    iget-object v12, v2, Landroidx/media3/session/MediaSessionImpl;->C:Lcom/google/common/collect/ImmutableList;

    :goto_3
    iget-object v13, v9, Landroidx/media3/session/MediaSession$ConnectionResult;->d:Lcom/google/common/collect/ImmutableList;

    if-eqz v13, :cond_6

    :goto_4
    move-object v15, v10

    move-object v10, v12

    goto :goto_5

    :cond_6
    iget-object v13, v2, Landroidx/media3/session/MediaSessionImpl;->D:Lcom/google/common/collect/ImmutableList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_4

    :goto_5
    :try_start_4
    iget-object v12, v2, Landroidx/media3/session/MediaSessionImpl;->s:Lcom/google/common/collect/ImmutableList;

    iget-object v9, v9, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    invoke-virtual {v6}, Landroidx/media3/session/PlayerWrapper;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object v6

    iget-object v3, v2, Landroidx/media3/session/MediaSessionImpl;->j:Landroidx/media3/session/SessionToken;

    iget-object v3, v3, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v3}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    iget-object v3, v2, Landroidx/media3/session/MediaSessionImpl;->E:Landroid/os/Bundle;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object/from16 v17, v15

    move-object v15, v6

    const v6, 0x3c336594

    move-object/from16 v19, v7

    const/16 v7, 0x9

    move-object/from16 v21, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v13

    move-object v13, v9

    move-object v9, v11

    move-object/from16 v11, v21

    :try_start_5
    invoke-direct/range {v5 .. v19}, Landroidx/media3/session/ConnectionState;-><init>(IILandroidx/media3/session/IMediaSession;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/session/PlayerInfo;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_7

    :goto_6
    invoke-static {v3}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    goto :goto_a

    :cond_7
    :try_start_6
    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->b()I

    move-result v0

    instance-of v6, v3, Landroidx/media3/session/MediaControllerStub;

    if-eqz v6, :cond_8

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    sget-object v7, Landroidx/media3/session/ConnectionState;->B:Ljava/lang/String;

    new-instance v8, Landroidx/media3/session/ConnectionState$InProcessBinder;

    invoke-direct {v8, v5}, Landroidx/media3/session/ConnectionState$InProcessBinder;-><init>(Landroidx/media3/session/ConnectionState;)V

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_7

    :cond_8
    iget v6, v1, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    invoke-virtual {v5, v6}, Landroidx/media3/session/ConnectionState;->b(I)Landroid/os/Bundle;

    move-result-object v6

    :goto_7
    invoke-interface {v3, v0, v6}, Landroidx/media3/session/IMediaController;->E(ILandroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v20, 0x1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_0
    move/from16 v20, v4

    :goto_8
    if-eqz v20, :cond_a

    :try_start_7
    iget-boolean v0, v2, Landroidx/media3/session/MediaSessionImpl;->B:Z

    if-eqz v0, :cond_9

    invoke-static {v1}, Landroidx/media3/session/MediaSessionImpl;->l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    iget-object v0, v2, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move/from16 v4, v20

    goto :goto_b

    :cond_a
    :goto_9
    if-nez v20, :cond_b

    goto :goto_6

    :cond_b
    :goto_a
    return-void

    :catchall_4
    move-exception v0

    move-object v3, v15

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v3, v10

    :goto_b
    if-nez v4, :cond_c

    invoke-static {v3}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    :cond_c
    throw v0

    :pswitch_2
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaSessionServiceLegacyStub;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/common/util/ConditionVariable;

    iget-object v1, v1, Landroidx/media3/session/MediaSessionServiceLegacyStub;->k:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v1, v3}, Landroidx/media3/session/MediaSessionImpl;->n(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    return-void

    :pswitch_3
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    iget-object v3, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_f

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_d

    :try_start_8
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    const-string v7, "Failed to get bitmap"

    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_d
    move-object v0, v2

    :goto_d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    invoke-static {v7, v0}, Landroidx/media3/session/LegacyConversions;->i(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v0

    const/4 v7, -0x1

    if-ne v4, v7, :cond_e

    const-wide/16 v7, -0x1

    goto :goto_e

    :cond_e
    int-to-long v7, v4

    :goto_e
    new-instance v9, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    invoke-direct {v9, v0, v7, v8}, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;-><init>(Landroidx/media3/session/legacy/MediaDescriptionCompat;J)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_f
    iget-object v0, v1, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->e:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0, v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->p(Ljava/util/ArrayList;)V

    :cond_10
    return-void

    :pswitch_4
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaNotificationManager;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSession;

    :try_start_9
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast v2, Lcom/google/common/util/concurrent/AbstractFuture;

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaController;

    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaNotificationManager;->d(Landroidx/media3/session/MediaSession;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, v3, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->b:Landroidx/media3/session/MediaSessionService;

    iget-object v6, v3, Landroidx/media3/session/MediaNotificationManager$MediaControllerListener;->c:Landroidx/media3/session/MediaSession;

    invoke-virtual {v5, v6, v4}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    :cond_11
    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaController;->Y(Landroidx/media3/common/Player$Listener;)V
    :try_end_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_f

    :catch_2
    iget-object v1, v1, Landroidx/media3/session/MediaNotificationManager;->b:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {v1, v0}, Landroidx/media3/session/MediaSessionService;->i(Landroidx/media3/session/MediaSession;)V

    :goto_f
    return-void

    :pswitch_5
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaNotificationManager;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaController;

    iget-object v4, v1, Landroidx/media3/session/MediaNotificationManager;->j:Landroidx/media3/session/MediaNotification$Provider;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Landroidx/media3/session/MediaNotificationManager;->f:Landroidx/media3/session/g;

    new-instance v5, Landroidx/media3/session/t0;

    invoke-direct {v5, v1, v0, v2, v3}, Landroidx/media3/session/t0;-><init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaController;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroidx/media3/session/g;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_6
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/session/MediaLibrarySessionImpl;->F(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/LibraryResult;

    if-eqz v2, :cond_12

    iget v2, v2, Landroidx/media3/session/LibraryResult;->a:I

    if-eqz v2, :cond_13

    :cond_12
    invoke-virtual {v1, v3, v0}, Landroidx/media3/session/MediaLibrarySessionImpl;->E(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V

    :cond_13
    return-void

    :pswitch_7
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;

    iget-object v4, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    new-instance v5, Landroidx/media3/session/SessionCommand;

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v5, v2, v6}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v1, v1, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, v3, v5}, Landroidx/media3/session/ConnectedControllersManager;->n(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e()V

    goto :goto_10

    :cond_14
    new-instance v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$ProgressReporter;

    invoke-direct {v1, v4, v0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$ProgressReporter;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V

    invoke-virtual {v4, v3}, Landroidx/media3/session/MediaSessionImpl;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub$ProgressReporter;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance v1, Landroidx/media3/session/g0;

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_10
    return-void

    :pswitch_8
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v3, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v1, v1, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    const v5, 0xc351

    invoke-virtual {v1, v2, v5}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_11

    :cond_15
    iget-object v1, v4, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {v1, v3}, Landroidx/media3/session/LegacyConversions;->h(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v1

    invoke-virtual {v4, v2, v0, v1}, Landroidx/media3/session/MediaLibrarySessionImpl;->D(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_11
    return-void

    :pswitch_9
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v3, Lcom/google/common/collect/ImmutableList;

    iget-object v5, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v0, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/google/common/util/concurrent/SettableFuture;

    sget v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->n:I

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_18

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_17

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_16

    :try_start_a
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    const-string v7, "Failed to get bitmap"

    invoke-static {v7, v0}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_16
    move-object v0, v2

    :goto_13
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem;

    invoke-static {v7, v0}, Landroidx/media3/session/LegacyConversions;->a(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaBrowserCompat$MediaItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_17
    invoke-virtual {v6, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    :cond_18
    return-void

    :pswitch_a
    iget-object v1, v0, Landroidx/media3/session/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/ConnectedControllersManager;

    iget-object v2, v0, Landroidx/media3/session/e;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v3, v0, Landroidx/media3/session/e;->f:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;

    iget-object v0, v0, Landroidx/media3/session/e;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, v1, Landroidx/media3/session/ConnectedControllersManager;->a:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1, v3}, Landroidx/media3/session/ConnectedControllersManager;->c(Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;)V

    goto :goto_14

    :catchall_6
    move-exception v0

    goto :goto_15

    :cond_19
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_14
    monitor-exit v4

    return-void

    :goto_15
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

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
