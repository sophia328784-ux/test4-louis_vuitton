.class public final synthetic Landroidx/media3/session/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic d:Landroidx/media3/session/SessionCommand;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;I)V
    .locals 0

    iput p4, p0, Landroidx/media3/session/l;->b:I

    iput-object p1, p0, Landroidx/media3/session/l;->c:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/l;->d:Landroidx/media3/session/SessionCommand;

    iput-object p3, p0, Landroidx/media3/session/l;->e:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 8

    iget v0, p0, Landroidx/media3/session/l;->b:I

    iget-object v1, p0, Landroidx/media3/session/l;->d:Landroidx/media3/session/SessionCommand;

    iget-object v2, p0, Landroidx/media3/session/l;->c:Landroidx/media3/session/MediaControllerImplBase;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v2, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v1}, Landroidx/media3/session/SessionCommand;->b()Landroid/os/Bundle;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/session/l;->e:Landroid/os/Bundle;

    invoke-interface {p1, v0, p2, v1, p0}, Landroidx/media3/session/IMediaSession;->y2(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v3, v2, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v1}, Landroidx/media3/session/SessionCommand;->b()Landroid/os/Bundle;

    move-result-object v5

    const/4 v7, 0x0

    iget-object v6, p0, Landroidx/media3/session/l;->e:Landroid/os/Bundle;

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v2 .. v7}, Landroidx/media3/session/IMediaSession;->X1(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;Landroid/os/Bundle;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
