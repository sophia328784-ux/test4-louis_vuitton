.class public final synthetic Landroidx/media3/session/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;FI)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/z;->b:I

    iput-object p1, p0, Landroidx/media3/session/z;->c:Ljava/lang/Object;

    iput p2, p0, Landroidx/media3/session/z;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/session/z;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget p0, p0, Landroidx/media3/session/z;->d:F

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->t(F)V

    return-void
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 3

    iget v0, p0, Landroidx/media3/session/z;->b:I

    iget v1, p0, Landroidx/media3/session/z;->d:F

    iget-object p0, p0, Landroidx/media3/session/z;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    const/4 v2, 0x6

    if-lt v0, v2, :cond_0

    invoke-interface {p1, p0, p2}, Landroidx/media3/session/IMediaSession;->p0(Landroidx/media3/session/IMediaController;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->F0(Landroidx/media3/session/IMediaController;IF)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->F0(Landroidx/media3/session/IMediaController;IF)V

    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1}, Landroidx/media3/session/IMediaSession;->J0(Landroidx/media3/session/IMediaController;IF)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
