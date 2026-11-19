.class public final synthetic Landroidx/media3/session/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Landroidx/media3/session/m0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/m0;->c:I

    iput-object p2, p0, Landroidx/media3/session/m0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;I)V
    .locals 0

    .line 11
    iput p3, p0, Landroidx/media3/session/m0;->b:I

    iput p1, p0, Landroidx/media3/session/m0;->c:I

    iput-object p2, p0, Landroidx/media3/session/m0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V
    .locals 1

    .line 12
    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/session/m0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/m0;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/session/m0;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Landroidx/media3/session/m0;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, v0, Landroidx/media3/session/m0;->d:Ljava/lang/Object;

    iget v0, v0, Landroidx/media3/session/m0;->c:I

    packed-switch v2, :pswitch_data_0

    check-cast v5, Landroidx/media3/session/SessionCommand;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v2, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v2, v2, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-interface {v2, v5}, Landroidx/media3/session/MediaController$Listener;->V(Landroidx/media3/session/SessionCommand;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    new-instance v3, Landroidx/media3/session/k;

    invoke-direct {v3, v1, v2, v0}, Landroidx/media3/session/k;-><init>(Landroidx/media3/session/MediaControllerImplBase;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_0
    return-void

    :pswitch_0
    move-object v6, v5

    check-cast v6, Ljava/util/List;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v11, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v8, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    invoke-static {v5, v6, v7, v8, v9}, Landroidx/media3/session/MediaControllerImplBase;->r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object v8, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v10

    invoke-static/range {v5 .. v10}, Landroidx/media3/session/MediaControllerImplBase;->q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v11}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v5, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v3, v5, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaController$Listener;->z()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    if-nez v2, :cond_4

    invoke-interface {v3}, Landroidx/media3/session/MediaController$Listener;->x()V

    :cond_4
    new-instance v2, Landroidx/media3/session/k;

    invoke-direct {v2, v1, v4, v0}, Landroidx/media3/session/k;-><init>(Landroidx/media3/session/MediaControllerImplBase;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast v5, Lcom/google/common/collect/ImmutableList;

    sget v2, Landroidx/media3/session/MediaControllerStub;->j:I

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    iput-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v9, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v10, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    invoke-static {v5, v7, v8, v9, v10}, Landroidx/media3/session/MediaControllerImplBase;->r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    iput-object v11, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v13, v1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object v14, v1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v15, v1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v16

    invoke-static/range {v11 .. v16}, Landroidx/media3/session/MediaControllerImplBase;->q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    iget-object v5, v1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, v5, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v3, v5, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaController$Listener;->z()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    if-nez v2, :cond_7

    invoke-interface {v3}, Landroidx/media3/session/MediaController$Listener;->x()V

    :cond_7
    new-instance v2, Landroidx/media3/session/k;

    invoke-direct {v2, v1, v4, v0}, Landroidx/media3/session/k;-><init>(Landroidx/media3/session/MediaControllerImplBase;Lcom/google/common/util/concurrent/ListenableFuture;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/m0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget p0, p0, Landroidx/media3/session/m0;->c:I

    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    sget v1, Landroidx/media3/session/MediaSessionStub;->p:I

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/LibraryResult;

    const-string v1, "LibraryResult must not be null"

    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    const-string v1, "Library operation failed"

    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    goto :goto_2

    :goto_1
    const-string v1, "Library operation cancelled"

    invoke-static {v1, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p1

    :goto_2
    :try_start_1
    iget-object v1, v0, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p0, p1}, Landroidx/media3/session/MediaSession$ControllerCb;->d(ILandroidx/media3/session/LibraryResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send result to browser "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
