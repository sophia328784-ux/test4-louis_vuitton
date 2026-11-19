.class public final synthetic Landroidx/media3/session/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;II)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/r;->b:I

    iput-object p1, p0, Landroidx/media3/session/r;->c:Landroidx/media3/session/MediaControllerImplBase;

    iput p2, p0, Landroidx/media3/session/r;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/r;->b:I

    iget v1, p0, Landroidx/media3/session/r;->d:I

    iget-object p0, p0, Landroidx/media3/session/r;->c:Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->Y0(Landroidx/media3/session/IMediaController;II)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->T(Landroidx/media3/session/IMediaController;II)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->a1(Landroidx/media3/session/IMediaController;II)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->l2(Landroidx/media3/session/IMediaController;II)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->y0(Landroidx/media3/session/IMediaController;II)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->s0(Landroidx/media3/session/IMediaController;II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/r;->b:I

    iget v1, p0, Landroidx/media3/session/r;->d:I

    iget-object p0, p0, Landroidx/media3/session/r;->c:Landroidx/media3/session/MediaControllerImplBase;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-interface {p1, v1, p0}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
