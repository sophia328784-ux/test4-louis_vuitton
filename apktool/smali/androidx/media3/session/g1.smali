.class public final synthetic Landroidx/media3/session/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;
.implements Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/MediaItem;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/g1;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/g1;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Landroidx/media3/session/g1;->b:Z

    iput-boolean p4, p0, Landroidx/media3/session/g1;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/session/SessionPositionInfo;ZZLandroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/g1;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Landroidx/media3/session/g1;->b:Z

    iput-boolean p3, p0, Landroidx/media3/session/g1;->c:Z

    iput-object p4, p0, Landroidx/media3/session/g1;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/g1;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, p0, Landroidx/media3/session/g1;->e:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/MediaItem;

    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    const/4 v5, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaSessionImpl;->t(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v1, Landroidx/media3/session/MediaSessionLegacyStub$1;

    iget-boolean v2, p0, Landroidx/media3/session/g1;->b:Z

    iget-boolean p0, p0, Landroidx/media3/session/g1;->c:Z

    invoke-direct {v1, v0, v3, v2, p0}, Landroidx/media3/session/MediaSessionLegacyStub$1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;ZZ)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public d(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/g1;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroidx/media3/session/SessionPositionInfo;

    iget-object v0, p0, Landroidx/media3/session/g1;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    sget-object v1, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    iget v6, v0, Landroidx/media3/session/MediaSession$ControllerInfo;->c:I

    iget-boolean v4, p0, Landroidx/media3/session/g1;->b:Z

    iget-boolean v5, p0, Landroidx/media3/session/g1;->c:Z

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v1 .. v6}, Landroidx/media3/session/MediaSession$ControllerCb;->c(ILandroidx/media3/session/SessionPositionInfo;ZZI)V

    return-void
.end method
