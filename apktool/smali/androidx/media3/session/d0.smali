.class public final synthetic Landroidx/media3/session/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;
.implements Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/d0;->d:Ljava/lang/Object;

    iput p4, p0, Landroidx/media3/session/d0;->b:I

    iput-wide p2, p0, Landroidx/media3/session/d0;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSessionStub;

    sget v1, Landroidx/media3/session/MediaSessionStub;->p:I

    iget v1, p0, Landroidx/media3/session/d0;->b:I

    invoke-virtual {v0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p2

    iget-wide v0, p0, Landroidx/media3/session/d0;->c:J

    invoke-virtual {p1, p2, v0, v1}, Landroidx/media3/session/PlayerWrapper;->h0(IJ)V

    return-void
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 6

    iget-object p3, p0, Landroidx/media3/session/d0;->d:Ljava/lang/Object;

    move-object v2, p3

    check-cast v2, Ljava/util/List;

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    iget p3, p0, Landroidx/media3/session/d0;->b:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    iget-object v1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->v()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :goto_0
    if-ne p3, v0, :cond_1

    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v0

    :goto_1
    move-wide v4, v0

    move-object v0, p1

    move-object v1, p2

    goto :goto_2

    :cond_1
    iget-wide v0, p0, Landroidx/media3/session/d0;->c:J

    goto :goto_1

    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaSessionImpl;->t(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/media3/session/IMediaSession;I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/d0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaControllerImplBase;

    iget-wide v5, p0, Landroidx/media3/session/d0;->c:J

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    iget v4, p0, Landroidx/media3/session/d0;->b:I

    move-object v1, p1

    move v3, p2

    invoke-interface/range {v1 .. v6}, Landroidx/media3/session/IMediaSession;->Z0(Landroidx/media3/session/IMediaController;IIJ)V

    return-void
.end method
