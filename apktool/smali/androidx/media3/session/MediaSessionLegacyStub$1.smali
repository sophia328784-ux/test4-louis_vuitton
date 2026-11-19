.class Landroidx/media3/session/MediaSessionLegacyStub$1;
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

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/media3/session/MediaSessionLegacyStub;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->d:Landroidx/media3/session/MediaSessionLegacyStub;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->a:Landroidx/media3/session/MediaSession$ControllerInfo;

    iput-boolean p3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->b:Z

    iput-boolean p4, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->c:Z

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    move-object v2, p1

    check-cast v2, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->d:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v6, p1, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/n1;

    iget-boolean v3, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->b:Z

    iget-boolean v4, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->c:Z

    iget-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub$1;->a:Landroidx/media3/session/MediaSession$ControllerInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/n1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub$1;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;ZZLandroidx/media3/session/MediaSession$ControllerInfo;)V

    new-instance p0, Landroidx/media3/session/g0;

    invoke-direct {p0, p1, v5, v0}, Landroidx/media3/session/g0;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V

    invoke-static {v6, p0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
