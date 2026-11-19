.class Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi29;
.super Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi24;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControlsApi29"
.end annotation


# virtual methods
.method public final n(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$TransportControlsApi23;->a:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController$TransportControls;->setPlaybackSpeed(F)V

    return-void

    :cond_0
    const-string p0, "speed must not be zero"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
