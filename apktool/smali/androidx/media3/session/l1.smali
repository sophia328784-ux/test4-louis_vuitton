.class public final synthetic Landroidx/media3/session/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaSessionLegacyStub;

.field public final synthetic c:I

.field public final synthetic d:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

.field public final synthetic e:Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/l1;->b:Landroidx/media3/session/MediaSessionLegacyStub;

    iput p2, p0, Landroidx/media3/session/l1;->c:I

    iput-object p3, p0, Landroidx/media3/session/l1;->d:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    iput-object p4, p0, Landroidx/media3/session/l1;->e:Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;

    iput-boolean p5, p0, Landroidx/media3/session/l1;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/l1;->e:Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;

    iget-object v1, p0, Landroidx/media3/session/l1;->b:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v2, v1, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v2}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, v1, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->d()Z

    move-result v3

    iget v4, p0, Landroidx/media3/session/l1;->c:I

    iget-object v5, p0, Landroidx/media3/session/l1;->d:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    if-nez v3, :cond_1

    const-string p0, "Ignore incoming player command before initialization. command="

    const-string v0, ", pid="

    invoke-static {v4, p0, v0}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v5}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1, v5}, Landroidx/media3/session/MediaSessionLegacyStub;->H(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    iget-object v1, v1, Landroidx/media3/session/MediaSessionLegacyStub;->e:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/session/ConnectedControllersManager;->l(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x1

    if-ne v4, p0, :cond_4

    iget-object p0, v2, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->r()Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, v2, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    iget-object v5, v2, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v6

    invoke-interface {v1, v5, v6, v4}, Landroidx/media3/session/MediaSession$Callback;->d(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    :try_start_0
    invoke-interface {v0, v3}, Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;->b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Exception in "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-boolean p0, p0, Landroidx/media3/session/l1;->f:Z

    if-eqz p0, :cond_4

    new-instance p0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {p0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v0, p0, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v0, v4}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    invoke-virtual {p0}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    invoke-virtual {v2, v3}, Landroidx/media3/session/MediaSessionImpl;->s(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_4
    :goto_1
    return-void
.end method
