.class public final synthetic Landroidx/media3/session/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/session/l0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/l0;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/l0;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/l0;->f:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/l0;->g:Ljava/lang/Object;

    iput p5, p0, Landroidx/media3/session/l0;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/session/l0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/l0;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/l0;->e:Ljava/lang/Object;

    iput p3, p0, Landroidx/media3/session/l0;->c:I

    iput-object p4, p0, Landroidx/media3/session/l0;->f:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/media3/session/l0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Landroidx/media3/session/l0;->b:I

    iget-object v1, p0, Landroidx/media3/session/l0;->g:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/session/l0;->f:Ljava/lang/Object;

    iget v3, p0, Landroidx/media3/session/l0;->c:I

    iget-object v4, p0, Landroidx/media3/session/l0;->e:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/l0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaSessionLegacyStub;

    check-cast v4, Landroidx/media3/session/SessionCommand;

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    check-cast v1, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->d()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignore incoming session command before initialization. command="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v4, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, v4, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->H(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->e:Landroidx/media3/session/ConnectedControllersManager;

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0, v4}, Landroidx/media3/session/ConnectedControllersManager;->n(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0, v3}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-interface {v1, v0}, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;->b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaControllerImplLegacy;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v2, Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->k:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaControllerCompat;->e()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v4, :cond_6

    :try_start_1
    invoke-static {v4}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    const-string v5, "Failed to get bitmap"

    invoke-static {v5, v4}, Landroidx/media3/common/util/Log;->c(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplLegacy;->i:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem;

    invoke-static {v6, v4}, Landroidx/media3/session/LegacyConversions;->i(Landroidx/media3/common/MediaItem;Landroid/graphics/Bitmap;)Landroidx/media3/session/legacy/MediaDescriptionCompat;

    move-result-object v4

    add-int v6, v3, v0

    invoke-virtual {v5, v4, v6}, Landroidx/media3/session/legacy/MediaControllerCompat;->a(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
