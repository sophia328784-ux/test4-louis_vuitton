.class public final synthetic Landroidx/media3/session/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;


# instance fields
.field public final synthetic b:Landroidx/media3/common/Player$Commands;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player$Commands;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/p0;->b:Landroidx/media3/common/Player$Commands;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 17

    move-object/from16 v0, p1

    sget v1, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->z:Landroidx/media3/common/Player$Commands;

    move-object/from16 v3, p0

    iget-object v3, v3, Landroidx/media3/session/p0;->b:Landroidx/media3/common/Player$Commands;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->z:Landroidx/media3/common/Player$Commands;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplBase;->y:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v4, v3}, Landroidx/media3/session/MediaControllerImplBase;->T0(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v3

    iput-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v3, v2}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v8, v0, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v9, v0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v10, v0, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    invoke-static {v6, v7, v8, v9, v10}, Landroidx/media3/session/MediaControllerImplBase;->r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    iput-object v11, v0, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v0, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v13, v0, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object v14, v0, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v15, v0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v16

    invoke-static/range {v11 .. v16}, Landroidx/media3/session/MediaControllerImplBase;->q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v2}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    new-instance v7, Landroidx/media3/session/o;

    const/16 v8, 0xe

    invoke-direct {v7, v0, v8}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    const/16 v0, 0xd

    invoke-virtual {v6, v0, v7}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    goto :goto_0

    :cond_2
    move v2, v4

    move v5, v2

    :goto_0
    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v5, v1, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v0, v5, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v1, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v2, v1, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, v1, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-interface {v0}, Landroidx/media3/session/MediaController$Listener;->x()V

    :cond_6
    :goto_3
    return-void
.end method

.method public d(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1

    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    iget-object p0, p0, Landroidx/media3/session/p0;->b:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p2, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->h(ILandroidx/media3/common/Player$Commands;)V

    return-void
.end method
