.class public final synthetic Landroidx/media3/session/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;III)V
    .locals 0

    iput p4, p0, Landroidx/media3/session/f0;->b:I

    iput-object p1, p0, Landroidx/media3/session/f0;->c:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    iput p2, p0, Landroidx/media3/session/f0;->d:I

    iput p3, p0, Landroidx/media3/session/f0;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 3

    iget v0, p0, Landroidx/media3/session/f0;->b:I

    iget v1, p0, Landroidx/media3/session/f0;->e:I

    iget v2, p0, Landroidx/media3/session/f0;->d:I

    iget-object p0, p0, Landroidx/media3/session/f0;->c:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v2, v1}, Landroidx/media3/session/IMediaSession;->r(Landroidx/media3/session/IMediaController;III)V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v2, v1}, Landroidx/media3/session/IMediaSession;->r(Landroidx/media3/session/IMediaController;III)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
