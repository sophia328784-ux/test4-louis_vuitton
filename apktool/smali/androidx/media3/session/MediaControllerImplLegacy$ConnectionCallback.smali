.class Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaControllerImplLegacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionCallback"
.end annotation


# instance fields
.field public final synthetic c:Landroidx/media3/session/MediaControllerImplLegacy;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaControllerImplLegacy;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->j:Landroidx/media3/session/legacy/MediaBrowserCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    new-instance v2, Landroidx/media3/session/g0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V

    iget-object v0, v1, Landroidx/media3/session/MediaController;->e:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/j0;

    invoke-direct {v1, p0, v3}, Landroidx/media3/session/j0;-><init>(Landroidx/media3/session/MediaControllerImplLegacy;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy$ConnectionCallback;->c:Landroidx/media3/session/MediaControllerImplLegacy;

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplLegacy;->b:Landroidx/media3/session/MediaController;

    invoke-virtual {p0}, Landroidx/media3/session/MediaController;->release()V

    return-void
.end method
