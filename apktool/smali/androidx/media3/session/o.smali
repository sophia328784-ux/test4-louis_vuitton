.class public final synthetic Landroidx/media3/session/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplBase;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/o;->b:I

    iput-object p1, p0, Landroidx/media3/session/o;->c:Landroidx/media3/session/MediaControllerImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget-object p0, p0, Landroidx/media3/session/o;->c:Landroidx/media3/session/MediaControllerImplBase;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    new-instance v0, Landroidx/media3/common/Player$Events;

    invoke-direct {v0, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->f0(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/o;->b:I

    iget-object p0, p0, Landroidx/media3/session/o;->c:Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->u2(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->z0(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->q(Landroidx/media3/session/IMediaController;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, p0, p2, v0}, Landroidx/media3/session/IMediaSession;->F0(Landroidx/media3/session/IMediaController;IF)V

    :goto_0
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->x1(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->U1(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->i2(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->o(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->p(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_8
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->o2(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_9
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->y(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_a
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->o0(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_b
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->r0(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_c
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->e2(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_d
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->Y(Landroidx/media3/session/IMediaController;I)V

    return-void

    :pswitch_e
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->W(Landroidx/media3/session/IMediaController;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/o;->b:I

    iget-object p0, p0, Landroidx/media3/session/o;->c:Landroidx/media3/session/MediaControllerImplBase;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->Y(Landroidx/media3/common/Player$Commands;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->Y(Landroidx/media3/common/Player$Commands;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
