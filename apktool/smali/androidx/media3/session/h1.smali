.class public final synthetic Landroidx/media3/session/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V
    .locals 0

    .line 9
    iput p2, p0, Landroidx/media3/session/h1;->b:I

    iput-object p1, p0, Landroidx/media3/session/h1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/Rating;)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Landroidx/media3/session/h1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/h1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V
    .locals 0

    .line 10
    const/4 p2, 0x2

    iput p2, p0, Landroidx/media3/session/h1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/h1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/h1;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Landroidx/media3/session/h1;->c:Landroidx/media3/session/MediaSessionLegacyStub;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->pause()V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->S()V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->q()V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->stop()V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->f()V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/MediaSessionImpl;->h(Landroidx/media3/session/MediaSession$ControllerInfo;Z)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->z()V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->F()V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->l()V

    return-void

    :pswitch_8
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->Y0()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    :goto_0
    return-void

    :pswitch_9
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :pswitch_a
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget-boolean p0, p0, Landroidx/media3/session/MediaSessionImpl;->p:Z

    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->b0(Landroidx/media3/common/Player;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->pause()V

    :cond_3
    :goto_1
    return-void

    :pswitch_b
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->y()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
