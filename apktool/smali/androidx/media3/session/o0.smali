.class public final synthetic Landroidx/media3/session/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 0

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/session/o0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Landroidx/media3/session/o0;->b:I

    iput-object p1, p0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/session/o0;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, v0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    check-cast v0, Landroid/os/Bundle;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iput-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-static {v6, v7, v8, v9, v0}, Landroidx/media3/session/MediaControllerImplBase;->r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v10

    iput-object v10, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v11, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object v13, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v14, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v15

    invoke-static/range {v10 .. v15}, Landroidx/media3/session/MediaControllerImplBase;->q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v5, v1, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v2, v5, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v1, v1, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroidx/media3/session/MediaController$Listener;->x()V

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    check-cast v0, Landroid/app/PendingIntent;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->s:Landroid/app/PendingIntent;

    invoke-static {v5, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    iput-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->s:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, v2, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    move v3, v4

    :cond_4
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v2, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    :goto_1
    return-void

    :pswitch_1
    check-cast v0, Landroidx/media3/session/SessionPositionInfo;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->k:Landroidx/collection/ArraySet;

    invoke-virtual {v2}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v3, v2, Landroidx/media3/session/SessionPositionInfo;->c:J

    iget-wide v5, v0, Landroidx/media3/session/SessionPositionInfo;->c:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    invoke-static {v0, v2}, Landroidx/media3/session/MediaUtils;->a(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v2, v0}, Landroidx/media3/session/PlayerInfo;->e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    :cond_8
    :goto_2
    return-void

    :pswitch_2
    check-cast v0, Landroidx/media3/session/ConnectionState;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object v2, v0, Landroidx/media3/session/ConnectionState;->c:Landroidx/media3/session/IMediaSession;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->e:Landroidx/media3/session/SessionToken;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    if-eqz v7, :cond_9

    const-string v0, "Cannot be notified about the connection result many times. Probably a bug or malicious app."

    invoke-static {v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroidx/media3/session/MediaController;->release()V

    goto/16 :goto_4

    :cond_9
    iget-object v7, v0, Landroidx/media3/session/ConnectionState;->n:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v0, Landroidx/media3/session/ConnectionState;->i:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    iget-object v9, v0, Landroidx/media3/session/ConnectionState;->j:Landroidx/media3/session/PlayerInfo;

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v9, v0, Landroidx/media3/session/ConnectionState;->d:Landroid/app/PendingIntent;

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->s:Landroid/app/PendingIntent;

    iget-object v9, v0, Landroidx/media3/session/ConnectionState;->e:Landroidx/media3/session/SessionCommands;

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v9, v0, Landroidx/media3/session/ConnectionState;->f:Landroidx/media3/common/Player$Commands;

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->y:Landroidx/media3/common/Player$Commands;

    iget-object v10, v0, Landroidx/media3/session/ConnectionState;->g:Landroidx/media3/common/Player$Commands;

    iput-object v10, v1, Landroidx/media3/session/MediaControllerImplBase;->z:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v9, v10}, Landroidx/media3/session/MediaControllerImplBase;->T0(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v9

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v10, v0, Landroidx/media3/session/ConnectionState;->k:Lcom/google/common/collect/ImmutableList;

    iput-object v10, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v11, v0, Landroidx/media3/session/ConnectionState;->l:Lcom/google/common/collect/ImmutableList;

    iput-object v11, v1, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    invoke-static {v11, v10, v12, v9, v8}, Landroidx/media3/session/MediaControllerImplBase;->r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    iput-object v13, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v14, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v15, v0, Landroidx/media3/session/ConnectionState;->i:Landroid/os/Bundle;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget v11, v0, Landroidx/media3/session/ConnectionState;->b:I

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move/from16 v18, v11

    invoke-static/range {v13 .. v18}, Landroidx/media3/session/MediaControllerImplBase;->q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    new-instance v9, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    move v10, v3

    :goto_3
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    move-result v11

    if-ge v10, v11, :cond_b

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/session/CommandButton;

    iget-object v12, v11, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    if-eqz v12, :cond_a

    iget v13, v12, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v13, :cond_a

    iget-object v12, v12, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_b
    invoke-virtual {v9, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    iget-object v4, v0, Landroidx/media3/session/ConnectionState;->m:Landroid/media/session/MediaSession$Token;

    if-nez v4, :cond_c

    iget-object v4, v5, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v4}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->g()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_d

    new-instance v7, Landroid/media/session/MediaController;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->d:Landroid/content/Context;

    invoke-direct {v7, v9, v4}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->G:Landroid/media/session/MediaController;

    :cond_d
    :try_start_0
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->g:Landroidx/media3/session/y;

    invoke-interface {v2, v7, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v9, Landroidx/media3/session/SessionToken;

    iget-object v2, v5, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getUid()I

    move-result v10

    iget v11, v0, Landroidx/media3/session/ConnectionState;->a:I

    iget v12, v0, Landroidx/media3/session/ConnectionState;->b:I

    iget-object v2, v5, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->c()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Landroidx/media3/session/ConnectionState;->c:Landroidx/media3/session/IMediaSession;

    iget-object v15, v0, Landroidx/media3/session/ConnectionState;->h:Landroid/os/Bundle;

    move-object/from16 v16, v4

    invoke-direct/range {v9 .. v16}, Landroidx/media3/session/SessionToken;-><init>(IIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    iput-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->o:Landroidx/media3/session/SessionToken;

    iput-object v8, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroidx/media3/session/MediaController;->W0()V

    goto :goto_4

    :catch_0
    invoke-virtual {v6}, Landroidx/media3/session/MediaController;->release()V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/o0;->b:I

    iget-object p0, p0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/common/MediaMetadata;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->L(Landroidx/media3/common/MediaMetadata;)V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/common/PlaybackParameters;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->d(Landroidx/media3/common/PlaybackParameters;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/common/util/Consumer;

    sget p2, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-interface {p0, p1}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Landroidx/media3/session/o0;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-interface {p0, v0, p2}, Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;->b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->h()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaLibrarySessionImpl;->C(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p2, p0}, Landroidx/media3/session/MediaSessionImpl;->m(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p3, p1, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/media3/session/LibraryResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    invoke-static {v2}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p3

    new-instance v0, Landroidx/media3/session/t0;

    const/4 v2, 0x3

    invoke-direct {v0, p1, p2, p0, v2}, Landroidx/media3/session/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/media3/session/x0;

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {p3, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object p3

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Landroidx/media3/session/o0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->o:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/g0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "onPlayRequested"

    return-object p0
.end method
