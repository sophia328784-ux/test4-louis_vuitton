.class public final synthetic Landroidx/media3/session/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic c:Landroidx/media3/common/MediaItem;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/p;->b:Landroidx/media3/session/MediaControllerImplBase;

    iput-object p2, p0, Landroidx/media3/session/p;->c:Landroidx/media3/common/MediaItem;

    iput-wide p3, p0, Landroidx/media3/session/p;->d:J

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/p;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    const/4 v1, 0x1

    iget-object v3, p0, Landroidx/media3/session/p;->c:Landroidx/media3/common/MediaItem;

    invoke-virtual {v3, v0, v1}, Landroidx/media3/common/MediaItem;->c(IZ)Landroid/os/Bundle;

    move-result-object v4

    iget-wide v5, p0, Landroidx/media3/session/p;->d:J

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Landroidx/media3/session/IMediaSession;->x0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;J)V

    return-void
.end method
