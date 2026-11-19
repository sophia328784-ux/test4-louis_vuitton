.class public final synthetic Landroidx/media3/session/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerStub$ControllerTask;
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/r0;->b:I

    iput p1, p0, Landroidx/media3/session/r0;->c:I

    iput p2, p0, Landroidx/media3/session/r0;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/MediaControllerImplBase;)V
    .locals 1

    sget v0, Landroidx/media3/session/MediaControllerStub;->j:I

    iget v0, p0, Landroidx/media3/session/r0;->c:I

    iget p0, p0, Landroidx/media3/session/r0;->d:I

    invoke-virtual {p1, v0, p0}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/r0;->b:I

    iget v1, p0, Landroidx/media3/session/r0;->d:I

    iget p0, p0, Landroidx/media3/session/r0;->c:I

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0, v1}, Landroidx/media3/session/PlayerWrapper;->H0(II)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p1, p0, v1}, Landroidx/media3/session/PlayerWrapper;->t0(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 1

    iget v0, p0, Landroidx/media3/session/r0;->c:I

    iget p0, p0, Landroidx/media3/session/r0;->d:I

    invoke-interface {p1, p2, v0, p0}, Landroidx/media3/session/MediaSession$ControllerCb;->g(III)V

    return-void
.end method
