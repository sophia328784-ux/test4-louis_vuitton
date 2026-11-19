.class public final synthetic Landroidx/media3/session/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaNotificationManager;Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;ZLandroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/b1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/b1;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/b1;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/b1;->f:Ljava/lang/Object;

    iput-boolean p4, p0, Landroidx/media3/session/b1;->c:Z

    iput-object p5, p0, Landroidx/media3/session/b1;->g:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;Landroidx/media3/session/IMediaController;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/ConnectionRequest;Z)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/session/b1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/b1;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/b1;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/b1;->f:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/b1;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Landroidx/media3/session/b1;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Landroidx/media3/session/b1;->b:I

    iget-object v1, p0, Landroidx/media3/session/b1;->g:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/session/b1;->f:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/session/b1;->e:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/session/b1;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;

    check-cast v3, Landroidx/media3/session/IMediaController;

    move-object v6, v2

    check-cast v6, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    check-cast v1, Landroidx/media3/session/ConnectionRequest;

    iget-boolean v9, p0, Landroidx/media3/session/b1;->c:Z

    iget-object p0, v4, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->j:Ljava/util/Set;

    invoke-interface {p0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-object p0, v4, Landroidx/media3/session/MediaSessionService$MediaSessionServiceStub;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaSessionService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    :goto_0
    invoke-static {v3}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    goto :goto_1

    :cond_0
    :try_start_1
    new-instance v5, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v7, v1, Landroidx/media3/session/ConnectionRequest;->a:I

    iget v8, v1, Landroidx/media3/session/ConnectionRequest;->b:I

    new-instance v10, Landroidx/media3/session/MediaSessionStub$Controller2Cb;

    invoke-direct {v10, v3, v8}, Landroidx/media3/session/MediaSessionStub$Controller2Cb;-><init>(Landroidx/media3/session/IMediaController;I)V

    iget-object v11, v1, Landroidx/media3/session/ConnectionRequest;->e:Landroid/os/Bundle;

    invoke-direct/range {v5 .. v11}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Landroidx/media3/session/MediaSessionService;->g(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionService;->b(Landroidx/media3/session/MediaSession;)V

    iget-object p0, v0, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    invoke-virtual {p0, v3, v5}, Landroidx/media3/session/MediaSessionStub;->E2(Landroidx/media3/session/IMediaController;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    const-string v0, "Failed to add a session to session service"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-static {v3}, Landroidx/media3/session/SessionUtil;->b(Landroidx/media3/session/IMediaController;)V

    throw p0

    :pswitch_0
    check-cast v4, Landroidx/media3/session/MediaNotificationManager;

    check-cast v3, Landroidx/media3/session/MediaSession;

    check-cast v2, Landroidx/media3/session/MediaNotification;

    iget-boolean p0, p0, Landroidx/media3/session/b1;->c:Z

    check-cast v1, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :try_start_3
    invoke-virtual {v4, v3, v2, p0}, Landroidx/media3/session/MediaNotificationManager;->e(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaNotification;Z)V

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, p0}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->d(Ljava/lang/Throwable;)Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
