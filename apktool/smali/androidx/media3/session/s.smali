.class public final synthetic Landroidx/media3/session/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;
.implements Landroidx/media3/common/util/Consumer;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/s;->b:I

    iput-object p1, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 12

    iget v0, p0, Landroidx/media3/session/s;->b:I

    iget-object v1, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, p0

    check-cast v5, Landroidx/media3/session/SessionCommands;

    check-cast v1, Landroidx/media3/common/Player$Commands;

    sget p0, Landroidx/media3/session/MediaControllerStub;->j:I

    iget-object p0, p1, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    invoke-virtual {p1}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplBase;->y:Landroidx/media3/common/Player$Commands;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v0, :cond_1

    if-eqz v8, :cond_1

    goto/16 :goto_6

    :cond_1
    iput-object v5, p1, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_2

    iput-object v1, p1, Landroidx/media3/session/MediaControllerImplBase;->y:Landroidx/media3/common/Player$Commands;

    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->z:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p1, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->T0(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    iput-object v1, p1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v9

    goto :goto_0

    :cond_2
    move v0, v10

    :goto_0
    if-eqz v8, :cond_4

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v10

    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v11, p1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v6, p1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    invoke-static {v2, v3, v5, v4, v6}, Landroidx/media3/session/MediaControllerImplBase;->r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    iget-object v4, p1, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object v6, p1, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p1}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v7

    invoke-static/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v9

    iget-object v2, p1, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v11}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v9

    :goto_2
    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/session/o;

    const/16 v4, 0xd

    invoke-direct {v3, p1, v4}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {v0, v4, v3}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    if-nez v8, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_6

    move p1, v9

    goto :goto_3

    :cond_6
    move p1, v10

    :goto_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p1, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-interface {p1}, Landroidx/media3/session/MediaController$Listener;->T()V

    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move p1, v9

    goto :goto_4

    :cond_8
    move p1, v10

    :goto_4
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p1, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_9
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_a

    goto :goto_5

    :cond_a
    move v9, v10

    :goto_5
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaController;->d:Landroidx/media3/session/MediaController$Listener;

    invoke-interface {p0}, Landroidx/media3/session/MediaController$Listener;->x()V

    :cond_b
    :goto_6
    return-void

    :pswitch_0
    check-cast p0, Landroidx/media3/session/PlayerInfo;

    check-cast v1, Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    sget v0, Landroidx/media3/session/MediaControllerStub;->j:I

    invoke-virtual {p1, p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->l1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Landroidx/media3/session/s;->b:I

    iget-object v1, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/MediaSessionStub;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroid/view/Surface;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Landroidx/media3/session/MediaSessionImpl;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->B(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->O(Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->o:Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    invoke-direct {v0, v1}, Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionStub;->o:Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    invoke-virtual {p1, v0}, Landroidx/media3/session/PlayerWrapper;->O(Landroid/view/SurfaceHolder;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/MediaSessionImpl;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroidx/media3/session/MediaSessionImpl;->h(Landroidx/media3/session/MediaSession$ControllerInfo;Z)V

    :cond_3
    :goto_1
    return-void

    :pswitch_1
    check-cast v1, Landroidx/media3/common/TrackSelectionParameters;

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object v0, v1, Landroidx/media3/common/TrackSelectionParameters;->H:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters;->a()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->c()Landroidx/media3/common/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->o()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->p()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v3, v2, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    iget-object v4, p0, Landroidx/media3/session/MediaSessionStub;->l:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableBiMap;->p()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v4

    iget-object v3, v3, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/TrackGroup;

    if-eqz v3, :cond_5

    iget-object v4, v2, Landroidx/media3/common/TrackSelectionOverride;->a:Landroidx/media3/common/TrackGroup;

    iget v4, v4, Landroidx/media3/common/TrackGroup;->a:I

    iget v5, v3, Landroidx/media3/common/TrackGroup;->a:I

    if-ne v4, v5, :cond_5

    new-instance v4, Landroidx/media3/common/TrackSelectionOverride;

    iget-object v2, v2, Landroidx/media3/common/TrackSelectionOverride;->b:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v4, v3, v2}, Landroidx/media3/common/TrackSelectionOverride;-><init>(Landroidx/media3/common/TrackGroup;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a(Landroidx/media3/common/TrackSelectionOverride;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Landroidx/media3/common/TrackSelectionParameters$Builder;->a(Landroidx/media3/common/TrackSelectionOverride;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters$Builder;->b()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->F0(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 5

    iget p1, p0, Landroidx/media3/session/s;->b:I

    iget-object v0, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/MediaSessionLegacyStub;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Landroidx/media3/session/CommandButton;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0, p0}, Landroidx/media3/session/CommandButton;->h(Landroidx/media3/common/Player;)V

    return-void

    :pswitch_0
    check-cast v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    sget p1, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    iget-object p1, v0, Landroidx/media3/session/legacy/MediaDescriptionCompat;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "onRemoveQueueItem(): Media ID shouldn\'t be null"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Can\'t remove item by ID without COMMAND_GET_TIMELINE being available"

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->p()Landroidx/media3/common/Timeline;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->o()I

    move-result v3

    if-ge v2, v3, :cond_3

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    iget-object v3, v3, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Landroidx/media3/session/PlayerWrapper;->M(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/media3/session/s;->b:I

    const/16 v1, -0x64

    iget-object v2, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/media3/session/MediaSessionStub$SessionTask;

    check-cast v2, Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p3, Landroidx/media3/session/e2;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v2, v0}, Landroidx/media3/session/e2;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Object;I)V

    invoke-static {p0, p3}, Landroidx/media3/common/util/Util;->e0(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/media3/session/MediaSessionStub$SessionTask;

    check-cast v2, Landroidx/media3/session/MediaSessionStub$MediaItemsWithStartPositionPlayerTask;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionStub$SessionTask;->c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p3, Landroidx/media3/session/e2;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v2, v0}, Landroidx/media3/session/e2;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Object;I)V

    invoke-static {p0, p3}, Landroidx/media3/common/util/Util;->e0(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast v2, Landroidx/media3/session/MediaLibraryService$LibraryParams;

    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p2, p0, v2}, Landroidx/media3/session/MediaLibrarySessionImpl;->D(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 4

    iget v0, p0, Landroidx/media3/session/s;->b:I

    iget-object v1, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroidx/media3/common/TrackSelectionParameters;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v1}, Landroidx/media3/common/TrackSelectionParameters;->c()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p0, p2, v0}, Landroidx/media3/session/IMediaSession;->D2(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    check-cast v1, Landroid/view/Surface;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->o1(Landroidx/media3/session/IMediaController;ILandroid/view/Surface;)V

    return-void

    :pswitch_1
    check-cast v1, Landroidx/media3/common/MediaMetadata;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/media3/common/MediaMetadata;->c(I)Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {p1, v0, p2, p0}, Landroidx/media3/session/IMediaSession;->q1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void

    :pswitch_2
    check-cast v1, Landroidx/media3/common/PlaybackParameters;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Landroidx/media3/common/PlaybackParameters;->e:Ljava/lang/String;

    iget v3, v1, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v2, Landroidx/media3/common/PlaybackParameters;->f:Ljava/lang/String;

    iget v1, v1, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-interface {p1, p0, p2, v0}, Landroidx/media3/session/IMediaSession;->j1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/s;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/s;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->L(ILandroidx/media3/common/MediaItem;)V

    return-void
.end method
