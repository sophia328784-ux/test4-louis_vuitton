.class public final synthetic Landroidx/media3/session/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/i0;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/i0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/i0;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/media3/session/i0;->c:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/media3/session/i0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/i0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media3/session/i0;->c:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget-object p0, p0, Landroidx/media3/session/i0;->d:Ljava/lang/Object;

    check-cast p0, Landroid/os/ResultReceiver;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/media3/session/MediaSessionImpl;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-eqz p0, :cond_1

    new-instance v0, Landroidx/media3/session/g0;

    const/16 v1, 0x8

    invoke-direct {v0, p1, p0, v1}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :cond_1
    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/i0;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/i0;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/i0;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, v0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplLegacy$ControllerInfo;->a:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v1, v1, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/common/Player$Listener;->d0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    return-void
.end method
