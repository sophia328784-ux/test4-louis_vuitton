.class Landroidx/media3/session/MediaSessionImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/session/MediaSession$ControllerInfo;

.field public final synthetic b:Z

.field public final synthetic c:Landroidx/media3/session/MediaSessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ZLandroidx/media3/common/Player$Commands;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->c:Landroidx/media3/session/MediaSessionImpl;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl$1;->a:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-boolean p3, p0, Landroidx/media3/session/MediaSessionImpl$1;->b:Z

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    instance-of v0, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_0

    const-string v0, "UnsupportedOperationException: Make sure to implement MediaSession.Callback.onPlaybackResumption() if you add a media button receiver to your manifest or if you implement the recent media item contract with your MediaLibraryService."

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failure calling MediaSession.Callback.onPlaybackResumption(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->c:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl$1;->b:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$1;->a:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p1, p0}, Landroidx/media3/session/MediaSessionImpl;->s(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_1
    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    sget-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl$1;->c:Landroidx/media3/session/MediaSessionImpl;

    iget-object v1, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-static {v1, p1}, Landroidx/media3/session/MediaUtils;->f(Landroidx/media3/common/Player;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)V

    iget-object p1, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    iget-boolean p1, p0, Landroidx/media3/session/MediaSessionImpl$1;->b:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl$1;->a:Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0, p0}, Landroidx/media3/session/MediaSessionImpl;->s(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_0
    return-void
.end method
