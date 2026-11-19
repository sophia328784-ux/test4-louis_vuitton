.class public final synthetic Landroidx/media3/session/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaSessionStub;

.field public final synthetic c:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic d:Landroidx/media3/session/SessionCommand;

.field public final synthetic e:Landroidx/media3/session/MediaSessionImpl;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Landroidx/media3/session/MediaSessionStub$SessionTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionImpl;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/a2;->b:Landroidx/media3/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media3/session/a2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media3/session/a2;->d:Landroidx/media3/session/SessionCommand;

    iput-object p4, p0, Landroidx/media3/session/a2;->e:Landroidx/media3/session/MediaSessionImpl;

    iput p5, p0, Landroidx/media3/session/a2;->f:I

    iput p6, p0, Landroidx/media3/session/a2;->g:I

    iput-object p7, p0, Landroidx/media3/session/a2;->h:Landroidx/media3/session/MediaSessionStub$SessionTask;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/a2;->b:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v1, p0, Landroidx/media3/session/a2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0, v1}, Landroidx/media3/session/ConnectedControllersManager;->k(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/media3/session/a2;->d:Landroidx/media3/session/SessionCommand;

    iget-object v3, p0, Landroidx/media3/session/a2;->e:Landroidx/media3/session/MediaSessionImpl;

    iget v4, p0, Landroidx/media3/session/a2;->f:I

    const/4 v5, -0x4

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/ConnectedControllersManager;->n(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v5}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v3, v1, v4, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_1
    iget v2, p0, Landroidx/media3/session/a2;->g:I

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p0, Landroidx/media3/session/SessionResult;

    invoke-direct {p0, v5}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v3, v1, v4, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_2
    iget-object p0, p0, Landroidx/media3/session/a2;->h:Landroidx/media3/session/MediaSessionStub$SessionTask;

    invoke-interface {p0, v3, v1, v4}, Landroidx/media3/session/MediaSessionStub$SessionTask;->c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;

    return-void
.end method
