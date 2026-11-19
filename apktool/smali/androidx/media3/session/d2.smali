.class public final synthetic Landroidx/media3/session/d2;
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

.field public final synthetic g:Landroidx/media3/session/IMediaController;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaSessionImpl;ILandroidx/media3/session/IMediaController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/d2;->b:Landroidx/media3/session/MediaSessionStub;

    iput-object p2, p0, Landroidx/media3/session/d2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-object p3, p0, Landroidx/media3/session/d2;->d:Landroidx/media3/session/SessionCommand;

    iput-object p4, p0, Landroidx/media3/session/d2;->e:Landroidx/media3/session/MediaSessionImpl;

    iput p5, p0, Landroidx/media3/session/d2;->f:I

    iput-object p6, p0, Landroidx/media3/session/d2;->g:Landroidx/media3/session/IMediaController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/session/d2;->d:Landroidx/media3/session/SessionCommand;

    iget-object v1, v0, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/d2;->e:Landroidx/media3/session/MediaSessionImpl;

    iget v5, p0, Landroidx/media3/session/d2;->f:I

    iget-object v3, p0, Landroidx/media3/session/d2;->b:Landroidx/media3/session/MediaSessionStub;

    iget-object v4, v3, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v6, p0, Landroidx/media3/session/d2;->c:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v4, v6}, Landroidx/media3/session/ConnectedControllersManager;->k(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroidx/media3/session/CommandButton;->d(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, v0, Landroidx/media3/session/CommandButton;->j:Ljava/lang/Object;

    iget v8, v0, Landroidx/media3/session/CommandButton;->b:I

    invoke-virtual {v0}, Landroidx/media3/session/CommandButton;->b()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t execute predefined custom command: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v2, v6, v5, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v1, :cond_3

    iget v1, v1, Landroidx/media3/session/SessionCommand;->a:I

    const v2, 0x9c4a

    if-ne v1, v2, :cond_2

    move v9, v10

    :cond_2
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v1, Landroidx/media3/session/g2;

    invoke-direct {v1, v0}, Landroidx/media3/session/g2;-><init>(Landroidx/media3/session/CommandButton;)V

    new-instance v8, Landroidx/media3/session/c2;

    invoke-direct {v8, v1, v10}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    const/4 v6, 0x0

    iget-object v4, p0, Landroidx/media3/session/d2;->g:Landroidx/media3/session/IMediaController;

    const v7, 0x9c4a

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/session/MediaSessionStub;->F2(Landroidx/media3/session/IMediaController;ILandroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    return-void

    :cond_3
    iget-object p0, v2, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    if-eq v8, v10, :cond_5

    :cond_4
    move p0, v9

    goto :goto_0

    :cond_5
    if-nez v7, :cond_6

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->r()Z

    move-result p0

    if-nez p0, :cond_4

    move p0, v10

    goto :goto_0

    :cond_6
    move-object p0, v7

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_7

    invoke-virtual {v3, v6, v5}, Landroidx/media3/session/MediaSessionStub;->I2(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_7
    const/16 p0, 0x1f

    if-ne v8, p0, :cond_8

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v7, Landroidx/media3/common/MediaItem;

    new-instance v0, Landroidx/media3/session/r1;

    invoke-direct {v0, v7, v10, v9}, Landroidx/media3/session/r1;-><init>(Ljava/lang/Object;ZI)V

    new-instance v1, Landroidx/media3/session/q0;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, Landroidx/media3/session/q0;-><init>(I)V

    new-instance v2, Landroidx/media3/session/s;

    const/16 v7, 0xd

    invoke-direct {v2, v0, v1, v7}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroidx/media3/session/c2;

    invoke-direct {v0, v2, v10}, Landroidx/media3/session/c2;-><init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V

    invoke-virtual {v3, v6, v5, p0, v0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    goto :goto_1

    :cond_8
    new-instance p0, Landroidx/media3/session/g2;

    invoke-direct {p0, v0}, Landroidx/media3/session/g2;-><init>(Landroidx/media3/session/CommandButton;)V

    invoke-static {p0}, Landroidx/media3/session/MediaSessionStub;->M2(Landroidx/media3/common/util/Consumer;)Landroidx/media3/session/o0;

    move-result-object p0

    invoke-virtual {v3, v6, v5, v8, p0}, Landroidx/media3/session/MediaSessionStub;->K2(Landroidx/media3/session/MediaSession$ControllerInfo;IILandroidx/media3/session/MediaSessionStub$SessionTask;)V

    :goto_1
    invoke-virtual {v4, v6}, Landroidx/media3/session/ConnectedControllersManager;->d(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to convert predefined custom command: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {v2, v6, v5, p0}, Landroidx/media3/session/MediaSessionStub;->L2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/SessionResult;)V

    return-void
.end method
