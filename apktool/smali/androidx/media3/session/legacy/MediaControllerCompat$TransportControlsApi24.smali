.class abstract Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi24;
.super Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControlsApi24"
.end annotation


# virtual methods
.method public final g()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->a:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    return-void
.end method

.method public final h(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->a:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->a:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->a:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
