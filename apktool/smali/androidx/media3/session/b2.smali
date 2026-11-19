.class public final synthetic Landroidx/media3/session/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaSessionStub;

.field public final synthetic c:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic d:I

.field public final synthetic e:Landroidx/media3/session/MediaSessionImpl;

.field public final synthetic f:I

.field public final synthetic g:Landroidx/media3/session/MediaSessionStub$SessionTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionImpl;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/b2;->b:Landroidx/media3/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media3/session/b2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput p3, p0, Landroidx/media3/session/b2;->d:I

    iput-object p4, p0, Landroidx/media3/session/b2;->e:Landroidx/media3/session/MediaSessionImpl;

    iput p5, p0, Landroidx/media3/session/b2;->f:I

    iput-object p6, p0, Landroidx/media3/session/b2;->g:Landroidx/media3/session/MediaSessionStub$SessionTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/b2;->b:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media3/session/b2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    iget v2, p0, Landroidx/media3/session/b2;->d:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/ConnectedControllersManager;->l(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v3

    iget-object v4, p0, Landroidx/media3/session/b2;->e:Landroidx/media3/session/MediaSessionImpl;

    iget v5, p0, Landroidx/media3/session/b2;->f:I

    if-nez v3, :cond_0

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v4, v1, v5, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_0
    iget-object v3, v4, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    iget-object v6, v4, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    invoke-virtual {v4, v1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v7

    invoke-interface {v3, v6, v7, v2}, Landroidx/media3/session/MediaSession$Callback;->d(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;I)I

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v3}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v4, v1, v5, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_1
    const/16 v3, 0x1b

    iget-object p0, p0, Landroidx/media3/session/b2;->g:Landroidx/media3/session/MediaSessionStub$SessionTask;

    if-ne v2, v3, :cond_2

    sget-object v3, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    invoke-interface {p0, v4, v1, v5}, Landroidx/media3/session/MediaSessionStub$SessionTask;->c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    new-instance p0, Lsc0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/session/ConnectedControllersManager;->b(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V

    return-void

    :cond_2
    new-instance v3, Landroidx/media3/session/f2;

    invoke-direct {v3, p0, v4, v1, v5}, Landroidx/media3/session/f2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/session/ConnectedControllersManager;->b(Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/ConnectedControllersManager$AsyncCommand;)V

    return-void
.end method
