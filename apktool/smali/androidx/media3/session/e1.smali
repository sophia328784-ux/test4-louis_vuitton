.class public final synthetic Landroidx/media3/session/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaSessionImpl;

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic e:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionImpl;ZLandroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/e1;->b:Landroidx/media3/session/MediaSessionImpl;

    iput-boolean p2, p0, Landroidx/media3/session/e1;->c:Z

    iput-object p3, p0, Landroidx/media3/session/e1;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p4, p0, Landroidx/media3/session/e1;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/e1;->b:Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-boolean v2, p0, Landroidx/media3/session/e1;->c:Z

    iget-object v3, p0, Landroidx/media3/session/e1;->d:Landroidx/media3/session/MediaSession$ControllerInfo;

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/media3/session/SessionCommand;

    const-string v4, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v2, v4, v5}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v4, -0x64

    :try_start_0
    iget-object v5, v1, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v5, v3}, Landroidx/media3/session/ConnectedControllersManager;->j(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-virtual {v5, v0}, Landroidx/media3/session/SequencedFutureManager;->a(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    move-result-object v0

    iget v0, v0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->b:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Landroidx/media3/session/MediaSessionImpl;->i(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/media3/session/SessionResult;

    invoke-direct {v0, v4}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_2

    :cond_1
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move v0, v5

    :goto_0
    iget-object v5, v3, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    if-eqz v5, :cond_2

    invoke-interface {v5, v0, v2}, Landroidx/media3/session/MediaSession$ControllerCb;->b(ILandroidx/media3/session/SessionCommand;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Exception in "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_2

    :catch_1
    iget-object v0, v1, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, v3}, Landroidx/media3/session/ConnectedControllersManager;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    new-instance v0, Landroidx/media3/session/SessionResult;

    invoke-direct {v0, v4}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_2
    :goto_2
    iget-object p0, p0, Landroidx/media3/session/e1;->e:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iget-object p0, v1, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, v3}, Landroidx/media3/session/ConnectedControllersManager;->d(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void
.end method
