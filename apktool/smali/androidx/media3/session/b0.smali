.class public final synthetic Landroidx/media3/session/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/b0;->b:I

    iput-object p1, p0, Landroidx/media3/session/b0;->c:Landroidx/media3/session/MediaControllerImplBase;

    iput-boolean p2, p0, Landroidx/media3/session/b0;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/b0;->b:I

    iget-boolean v1, p0, Landroidx/media3/session/b0;->d:Z

    iget-object p0, p0, Landroidx/media3/session/b0;->c:Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->j2(Landroidx/media3/session/IMediaController;IZ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->U0(Landroidx/media3/session/IMediaController;IZ)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->P(Landroidx/media3/session/IMediaController;IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/b0;->b:I

    iget-boolean v1, p0, Landroidx/media3/session/b0;->d:Z

    iget-object p0, p0, Landroidx/media3/session/b0;->c:Landroidx/media3/session/MediaControllerImplBase;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->t:I

    invoke-interface {p1, p0, v1}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->t:I

    invoke-interface {p1, p0, v1}, Landroidx/media3/common/Player$Listener;->O(IZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
