.class public final synthetic Landroidx/media3/session/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/t;->c:Ljava/lang/Object;

    iput-wide p2, p0, Landroidx/media3/session/t;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 7

    iget-object p3, p0, Landroidx/media3/session/t;->c:Ljava/lang/Object;

    check-cast p3, Landroidx/media3/common/MediaItem;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    const/4 v4, 0x0

    iget-wide v5, p0, Landroidx/media3/session/t;->b:J

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaSessionImpl;->t(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/t;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaControllerImplBase;

    iget-wide v1, p0, Landroidx/media3/session/t;->b:J

    iget-object p0, v0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {p1, p0, p2, v1, v2}, Landroidx/media3/session/IMediaSession;->A0(Landroidx/media3/session/IMediaController;IJ)V

    return-void
.end method
