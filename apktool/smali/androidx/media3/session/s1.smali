.class public final synthetic Landroidx/media3/session/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
.implements Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionStub;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionStub;II)V
    .locals 0

    iput p3, p0, Landroidx/media3/session/s1;->b:I

    iput-object p1, p0, Landroidx/media3/session/s1;->c:Landroidx/media3/session/MediaSessionStub;

    iput p2, p0, Landroidx/media3/session/s1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/s1;->b:I

    iget v1, p0, Landroidx/media3/session/s1;->d:I

    iget-object p0, p0, Landroidx/media3/session/s1;->c:Landroidx/media3/session/MediaSessionStub;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->M(I)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/media3/session/PlayerWrapper;->y0(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 3

    iget v0, p0, Landroidx/media3/session/s1;->b:I

    iget v1, p0, Landroidx/media3/session/s1;->d:I

    iget-object p0, p0, Landroidx/media3/session/s1;->c:Landroidx/media3/session/MediaSessionStub;

    packed-switch v0, :pswitch_data_0

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Landroidx/media3/session/PlayerWrapper;->A0(ILjava/util/List;)V

    return-void

    :pswitch_0
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/MediaItem;

    invoke-virtual {p1, p0, p2}, Landroidx/media3/session/PlayerWrapper;->l0(ILandroidx/media3/common/MediaItem;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v0

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, v0, p0, p3}, Landroidx/media3/session/PlayerWrapper;->K(IILjava/util/List;)V

    :goto_0
    return-void

    :pswitch_1
    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Landroidx/media3/session/PlayerWrapper;->A0(ILjava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
