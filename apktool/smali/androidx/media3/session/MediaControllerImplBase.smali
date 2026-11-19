.class Landroidx/media3/session/MediaControllerImplBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaController$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;,
        Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;,
        Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;,
        Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;,
        Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    }
.end annotation


# instance fields
.field public A:Landroidx/media3/common/Player$Commands;

.field public B:Landroid/view/Surface;

.field public C:Landroid/view/SurfaceHolder;

.field public D:Landroid/view/TextureView;

.field public E:Landroidx/media3/common/util/Size;

.field public F:Landroidx/media3/session/IMediaSession;

.field public G:Landroid/media/session/MediaController;

.field public H:J

.field public I:J

.field public J:Landroidx/media3/session/PlayerInfo;

.field public K:Landroid/os/Bundle;

.field public final a:Landroidx/media3/session/MediaController;

.field public final b:Landroidx/media3/session/SequencedFutureManager;

.field public final c:Landroidx/media3/session/MediaControllerStub;

.field public final d:Landroid/content/Context;

.field public final e:Landroidx/media3/session/SessionToken;

.field public final f:Landroid/os/Bundle;

.field public final g:Landroidx/media3/session/y;

.field public final h:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

.field public final i:Landroidx/media3/common/util/ListenerSet;

.field public final j:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

.field public final k:Landroidx/collection/ArraySet;

.field public final l:Landroid/util/SparseArray;

.field public final m:Landroid/os/Handler;

.field public final n:Z

.field public o:Landroidx/media3/session/SessionToken;

.field public p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

.field public q:Z

.field public r:Landroidx/media3/session/PlayerInfo;

.field public s:Landroid/app/PendingIntent;

.field public t:Lcom/google/common/collect/ImmutableList;

.field public u:Lcom/google/common/collect/ImmutableList;

.field public v:Lcom/google/common/collect/ImmutableList;

.field public w:Lcom/google/common/collect/ImmutableList;

.field public x:Landroidx/media3/session/SessionCommands;

.field public y:Landroidx/media3/common/Player$Commands;

.field public z:Landroidx/media3/common/Player$Commands;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/MediaController;Landroidx/media3/session/SessionToken;Landroid/os/Bundle;Landroid/os/Looper;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p6, p0, Landroidx/media3/session/MediaControllerImplBase;->n:Z

    sget-object p6, Landroidx/media3/session/PlayerInfo;->H:Landroidx/media3/session/PlayerInfo;

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    sget-object p6, Landroidx/media3/common/util/Size;->c:Landroidx/media3/common/util/Size;

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->E:Landroidx/media3/common/util/Size;

    sget-object p6, Landroidx/media3/session/SessionCommands;->b:Landroidx/media3/session/SessionCommands;

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p6

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->t:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p6

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->u:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p6

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p6

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->w:Lcom/google/common/collect/ImmutableList;

    sget-object p6, Landroidx/media3/common/Player$Commands;->b:Landroidx/media3/common/Player$Commands;

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->y:Landroidx/media3/common/Player$Commands;

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->z:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p0, p6, p6}, Landroidx/media3/session/MediaControllerImplBase;->T0(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object p6

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    new-instance p6, Landroidx/media3/common/util/ListenerSet;

    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    sget-object v1, Landroidx/media3/common/util/Clock;->a:Landroidx/media3/common/util/SystemClock;

    invoke-direct {p6, p5, v1, v0}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    new-instance p6, Landroid/os/Handler;

    invoke-direct {p6, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p6, p0, Landroidx/media3/session/MediaControllerImplBase;->m:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    const-string p2, "context must not be null"

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "token must not be null"

    invoke-static {p3, p2}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->d:Landroid/content/Context;

    new-instance p1, Landroidx/media3/session/SequencedFutureManager;

    invoke-direct {p1}, Landroidx/media3/session/SequencedFutureManager;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    new-instance p1, Landroidx/media3/session/MediaControllerStub;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaControllerStub;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->k:Landroidx/collection/ArraySet;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->e:Landroidx/media3/session/SessionToken;

    iput-object p4, p0, Landroidx/media3/session/MediaControllerImplBase;->f:Landroid/os/Bundle;

    new-instance p1, Landroidx/media3/session/y;

    invoke-direct {p1, p0}, Landroidx/media3/session/y;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->g:Landroidx/media3/session/y;

    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-direct {p1, p0}, Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;-><init>(Landroidx/media3/session/MediaControllerImplBase;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->h:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->K:Landroid/os/Bundle;

    iget-object p1, p3, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {p1}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-direct {p1, p0, p4}, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    invoke-direct {p1, p0, p5}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->j:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/session/MediaControllerImplBase;->H:J

    iput-wide p1, p0, Landroidx/media3/session/MediaControllerImplBase;->I:J

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->l:Landroid/util/SparseArray;

    return-void
.end method

.method public static U0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/common/Timeline$RemotableTimeline;
    .locals 4

    new-instance v0, Landroidx/media3/common/Timeline$RemotableTimeline;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget-object v2, Landroidx/media3/session/MediaUtils;->a:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    new-array v2, p0, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_0

    aput v3, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/common/Timeline$RemotableTimeline;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;[I)V

    return-object v0
.end method

.method public static Z0(Landroidx/media3/session/PlayerInfo;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->b:I

    return p0
.end method

.method public static f1(Landroidx/media3/session/PlayerInfo;ILjava/util/List;JJ)Landroidx/media3/session/PlayerInfo;
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v8

    if-ge v7, v8, :cond_0

    new-instance v8, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    add-int v8, v7, v1

    move-object/from16 v9, p2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Landroidx/media3/common/MediaItem;

    new-instance v11, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v11}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v29, -0x1

    const-wide/16 v30, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v28, -0x1

    invoke-virtual/range {v11 .. v31}, Landroidx/media3/common/Timeline$Window;->b(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)V

    invoke-virtual {v4, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p2

    invoke-static {v2, v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->n1(Landroidx/media3/common/Timeline;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->U0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/common/Timeline$RemotableTimeline;

    move-result-object v2

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v6

    goto :goto_4

    :cond_2
    iget-object v4, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->b:I

    if-lt v4, v1, :cond_3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v4

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    :goto_2
    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->e:I

    if-lt v3, v1, :cond_4

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    :goto_3
    move v3, v1

    :goto_4
    const/4 v8, 0x5

    move-wide/from16 v4, p3

    move-object v1, v2

    move v2, v6

    move-wide/from16 v6, p5

    invoke-static/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->h1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline$RemotableTimeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static g1(Landroidx/media3/session/PlayerInfo;IIZJJ)Landroidx/media3/session/PlayerInfo;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v9, p1

    move/from16 v10, p2

    iget-object v11, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->i:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->o()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ge v5, v6, :cond_2

    if-lt v5, v9, :cond_0

    if-lt v5, v10, :cond_1

    :cond_0
    new-instance v6, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v6}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v11, v5, v6, v7, v8}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v11, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->n1(Landroidx/media3/common/Timeline;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->U0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/common/Timeline$RemotableTimeline;

    move-result-object v2

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v12, v3, Landroidx/media3/common/Player$PositionInfo;->b:I

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->e:I

    new-instance v5, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Window;-><init>()V

    if-lt v12, v9, :cond_3

    if-ge v12, v10, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v4

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v14

    const/4 v15, -0x1

    if-eqz v14, :cond_4

    move v3, v4

    move v13, v15

    const/16 v16, 0x1

    goto :goto_8

    :cond_4
    if-eqz v6, :cond_b

    iget v3, v0, Landroidx/media3/session/PlayerInfo;->h:I

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->o()I

    move-result v14

    move v13, v12

    const/16 v16, 0x1

    :goto_2
    if-ge v4, v14, :cond_7

    invoke-virtual {v11, v13, v3, v1}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result v13

    if-ne v13, v15, :cond_5

    goto :goto_3

    :cond_5
    if-lt v13, v9, :cond_8

    if-lt v13, v10, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    move v13, v15

    :cond_8
    :goto_4
    if-ne v13, v15, :cond_9

    invoke-virtual {v2, v1}, Landroidx/media3/common/Timeline$RemotableTimeline;->a(Z)I

    move-result v13

    goto :goto_5

    :cond_9
    if-lt v13, v10, :cond_a

    sub-int v1, v10, v9

    sub-int/2addr v13, v1

    :cond_a
    :goto_5
    invoke-virtual {v2, v13, v5, v7, v8}, Landroidx/media3/common/Timeline$RemotableTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget v4, v5, Landroidx/media3/common/Timeline$Window;->n:I

    :goto_6
    move v3, v4

    goto :goto_8

    :cond_b
    const/16 v16, 0x1

    if-lt v12, v10, :cond_e

    sub-int v1, v10, v9

    sub-int v13, v12, v1

    if-ne v3, v15, :cond_d

    :cond_c
    move v4, v3

    goto :goto_6

    :cond_d
    move v1, v9

    :goto_7
    if-ge v1, v10, :cond_c

    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v11, v1, v4}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    iget v5, v4, Landroidx/media3/common/Timeline$Window;->o:I

    iget v4, v4, Landroidx/media3/common/Timeline$Window;->n:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    move v13, v12

    :goto_8
    const/4 v14, 0x4

    if-eqz v6, :cond_11

    if-ne v13, v15, :cond_f

    sget-object v1, Landroidx/media3/session/SessionPositionInfo;->k:Landroidx/media3/common/Player$PositionInfo;

    sget-object v3, Landroidx/media3/session/SessionPositionInfo;->l:Landroidx/media3/session/SessionPositionInfo;

    invoke-static {v0, v2, v1, v3, v14}, Landroidx/media3/session/MediaControllerImplBase;->i1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    goto/16 :goto_9

    :cond_f
    if-eqz p3, :cond_10

    const/4 v8, 0x4

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-object v1, v2

    move v2, v13

    invoke-static/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->h1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline$RemotableTimeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    goto/16 :goto_9

    :cond_10
    move-object v1, v2

    move v2, v13

    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v1, v2, v4, v7, v8}, Landroidx/media3/common/Timeline$RemotableTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-wide v5, v4, Landroidx/media3/common/Timeline$Window;->l:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v24

    iget-wide v5, v4, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v5

    new-instance v17, Landroidx/media3/common/Player$PositionInfo;

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-wide/from16 v23, v24

    move-wide/from16 v25, v23

    move/from16 v19, v2

    move/from16 v22, v3

    move-object/from16 v20, v4

    invoke-direct/range {v17 .. v28}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-wide/from16 v2, v23

    new-instance v4, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static {v2, v3, v5, v6}, Landroidx/media3/session/MediaUtils;->b(JJ)I

    move-result v26

    const-wide/16 v27, 0x0

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    move-wide/from16 v31, v5

    move-wide/from16 v33, v2

    move-wide/from16 v24, v2

    move-wide/from16 v22, v5

    move-object/from16 v18, v17

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v34}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2, v3, v14}, Landroidx/media3/session/MediaControllerImplBase;->i1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    goto :goto_9

    :cond_11
    move-object v1, v2

    move v2, v13

    const/4 v8, 0x4

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-static/range {v0 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->h1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline$RemotableTimeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    :goto_9
    iget v1, v0, Landroidx/media3/session/PlayerInfo;->A:I

    move/from16 v2, v16

    if-eq v1, v2, :cond_12

    if-eq v1, v14, :cond_12

    if-ge v9, v10, :cond_12

    invoke-virtual {v11}, Landroidx/media3/common/Timeline;->o()I

    move-result v1

    if-ne v10, v1, :cond_12

    if-lt v12, v9, :cond_12

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v1}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static h1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline$RemotableTimeline;IIJJI)Landroidx/media3/session/PlayerInfo;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroidx/media3/common/Player$PositionInfo;

    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v4, 0x0

    move/from16 v6, p2

    invoke-virtual {v1, v6, v3, v4, v5}, Landroidx/media3/common/Timeline$RemotableTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-object v5, v3, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v12, v3, Landroidx/media3/common/Player$PositionInfo;->h:I

    iget v13, v3, Landroidx/media3/common/Player$PositionInfo;->i:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    move/from16 v4, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    new-instance v3, Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v5, v4, Landroidx/media3/session/SessionPositionInfo;->b:Z

    move v7, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move v9, v7

    iget-wide v7, v4, Landroidx/media3/session/SessionPositionInfo;->d:J

    move v11, v9

    iget-wide v9, v4, Landroidx/media3/session/SessionPositionInfo;->e:J

    move v12, v11

    iget v11, v4, Landroidx/media3/session/SessionPositionInfo;->f:I

    move v14, v12

    iget-wide v12, v4, Landroidx/media3/session/SessionPositionInfo;->g:J

    move/from16 v16, v14

    iget-wide v14, v4, Landroidx/media3/session/SessionPositionInfo;->h:J

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    iget-wide v2, v4, Landroidx/media3/session/SessionPositionInfo;->i:J

    move-wide/from16 v17, v2

    iget-wide v2, v4, Landroidx/media3/session/SessionPositionInfo;->j:J

    move/from16 v4, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v2

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object v4, v2

    move/from16 v2, p8

    invoke-static {v0, v1, v3, v4, v2}, Landroidx/media3/session/MediaControllerImplBase;->i1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static i1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;
    .locals 1

    new-instance v0, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->j:Landroidx/media3/common/Timeline;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iput-object p0, v0, Landroidx/media3/session/PlayerInfo$Builder;->d:Landroidx/media3/common/Player$PositionInfo;

    iput-object p2, v0, Landroidx/media3/session/PlayerInfo$Builder;->e:Landroidx/media3/common/Player$PositionInfo;

    iput-object p3, v0, Landroidx/media3/session/PlayerInfo$Builder;->c:Landroidx/media3/session/SessionPositionInfo;

    iput p4, v0, Landroidx/media3/session/PlayerInfo$Builder;->f:I

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p0

    return-object p0
.end method

.method public static n1(Landroidx/media3/common/Timeline;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 11

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Timeline$Window;

    iget v2, v1, Landroidx/media3/common/Timeline$Window;->n:I

    iget v3, v1, Landroidx/media3/common/Timeline$Window;->o:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v1, Landroidx/media3/common/Timeline$Window;->n:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v6, v3, v2

    add-int/2addr v6, v5

    iput v6, v1, Landroidx/media3/common/Timeline$Window;->o:I

    :goto_1
    if-gt v2, v3, :cond_2

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {p0, v2, v1, v0}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iput v4, v1, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroidx/media3/common/Timeline$Window;->n:I

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroidx/media3/common/Timeline$Window;->o:I

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    sget-object v9, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v7, 0x0

    invoke-virtual/range {v1 .. v10}, Landroidx/media3/common/Timeline$Period;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static q1(Ljava/util/List;Ljava/util/List;Landroid/os/Bundle;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;I)Lcom/google/common/collect/ImmutableList;
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p3, p4}, Landroidx/media3/session/CommandButton;->g(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x6

    const/4 v1, 0x7

    filled-new-array {p1, v1}, [I

    move-result-object p1

    iget-object v1, p4, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v1, p1}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p3

    :goto_0
    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const/16 p2, 0x8

    const/16 v1, 0x9

    filled-new-array {p2, v1}, [I

    move-result-object p2

    iget-object p4, p4, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {p4, p2}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result p2

    if-nez p2, :cond_2

    move p3, v0

    :cond_2
    invoke-static {p0, p1, p3, p5}, Landroidx/media3/session/CommandButton;->j(Ljava/util/List;ZZI)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static r1(Ljava/util/List;Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p3, p4}, Landroidx/media3/session/CommandButton;->k(Ljava/util/List;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :cond_0
    invoke-static {p0, p2, p3}, Landroidx/media3/session/CommandButton;->g(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final A0(ILjava/util/List;)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/n;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->Q0(ILjava/util/List;)V

    return-void
.end method

.method public final B(Landroid/view/Surface;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->R0()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method

.method public final B0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->e:J

    return-wide v0
.end method

.method public final C()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->g:J

    return-wide v0
.end method

.method public final C0()Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public final D()V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->o1(II)V

    return-void
.end method

.method public final D0(Landroidx/media3/common/MediaItem;J)V
    .locals 7

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/p;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/p;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;J)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final E()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget p0, p0, Landroidx/media3/session/SessionPositionInfo;->f:I

    return p0
.end method

.method public final E0(I)V
    .locals 2

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/r;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->h:I

    if-eq v1, p1, :cond_1

    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput p1, v1, Landroidx/media3/session/PlayerInfo$Builder;->h:I

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Lms;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lms;-><init>(II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final F()V
    .locals 3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->c1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->c1()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final F0(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/s;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    if-eq p1, v1, :cond_1

    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object p1, v1, Landroidx/media3/session/PlayerInfo$Builder;->G:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Lfw;

    const/16 v1, 0x17

    invoke-direct {v0, p1, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final G(IZ)V
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/a0;

    invoke-direct {v0, p0, p2, p1}, Landroidx/media3/session/a0;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean v0, p1, Landroidx/media3/session/PlayerInfo;->u:Z

    if-eq v0, p2, :cond_1

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->t:I

    invoke-virtual {p1, v0, p2}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance p1, Landroidx/media3/session/b0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Landroidx/media3/session/b0;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p2, 0x1e

    invoke-virtual {p0, p2, p1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final G0(Landroid/view/SurfaceView;)V
    .locals 2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    if-eq v0, p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->S0()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final H()V
    .locals 3

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/16 v1, 0x11

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->t:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v2, v2, Landroidx/media3/common/DeviceInfo;->b:I

    if-lt v1, v2, :cond_1

    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Landroidx/media3/session/r;

    const/16 v2, 0xa

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final H0(II)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/v;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/v;-><init>(Landroidx/media3/session/MediaControllerImplBase;III)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->j1(III)V

    return-void
.end method

.method public final I(I)V
    .locals 2

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/r;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->t:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->c:I

    if-eqz v1, :cond_2

    if-gt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-boolean v1, p1, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-virtual {p1, v0, v1}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance p1, Landroidx/media3/session/r;

    const/4 v1, 0x6

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method

.method public final I0(III)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    if-ltz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/c0;-><init>(Landroidx/media3/session/MediaControllerImplBase;III)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->j1(III)V

    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->O(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public final J0(Ljava/util/List;)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/i;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->o()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->Q0(ILjava/util/List;)V

    return-void
.end method

.method public final K(IILjava/util/List;)V
    .locals 7

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v1, Landroidx/media3/session/m;

    const/4 v6, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-virtual {v2, v1}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {v2, v4, v5, v3}, Landroidx/media3/session/MediaControllerImplBase;->p1(IILjava/util/List;)V

    return-void
.end method

.method public final K0()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->u:Z

    return p0
.end method

.method public final L(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/s;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0, p1}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0, v0}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object v0

    iput-object p1, v0, Landroidx/media3/session/PlayerInfo$Builder;->m:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Lfw;

    const/16 v1, 0x19

    invoke-direct {v0, p1, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0xf

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final L0(I)V
    .locals 3

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/r;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v2, v0, Landroidx/media3/session/PlayerInfo;->t:I

    if-eq v2, p1, :cond_2

    iget v2, v1, Landroidx/media3/common/DeviceInfo;->b:I

    if-gt v2, p1, :cond_2

    iget v1, v1, Landroidx/media3/common/DeviceInfo;->c:I

    if-eqz v1, :cond_1

    if-gt p1, v1, :cond_2

    :cond_1
    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-virtual {v0, p1, v1}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Landroidx/media3/session/r;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final M(I)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/r;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->o1(II)V

    return-void
.end method

.method public final M0(Ljava/util/List;)V
    .locals 8

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/i;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final N(II)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    if-lt p2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/v;-><init>(Landroidx/media3/session/MediaControllerImplBase;III)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->o1(II)V

    return-void
.end method

.method public final N0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->C:J

    return-wide v0
.end method

.method public final O(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->S0()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->R0()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->h:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method

.method public final O0()Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->v:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final P(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/media3/session/b0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/b0;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaControllerImplBase;->v1(Z)V

    return-void
.end method

.method public final P0()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method public final Q()V
    .locals 5

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v0, v0, Landroidx/media3/session/PlayerInfo;->o:F

    new-instance v1, Landroidx/media3/session/z;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Landroidx/media3/session/z;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v3, v1, Landroidx/media3/session/PlayerInfo;->n:F

    iget v4, v1, Landroidx/media3/session/PlayerInfo;->o:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    new-instance v3, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v3, v1}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    iget v1, v3, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    :goto_0
    iput v1, v3, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    iput v0, v3, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    invoke-virtual {v3}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v1, Lsc;

    invoke-direct {v1, v0, v2}, Lsc;-><init>(FI)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v0, 0x16

    invoke-virtual {p0, v0, v1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final Q0(ILjava/util/List;)V
    .locals 13

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    const/4 v3, -0x1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p2

    iget-object p0, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->o()I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v4, v2

    iget-object v2, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {v1}, Landroidx/media3/session/MediaControllerImplBase;->u()J

    move-result-wide v7

    invoke-static/range {v2 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->f1(Landroidx/media3/session/PlayerInfo;ILjava/util/List;JJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v8

    iget-object p0, v1, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {p0}, Landroidx/media3/common/Timeline;->p()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    move-object v12, p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final R(Landroidx/media3/common/MediaItem;)V
    .locals 8

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/u;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final R0()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->h:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->C:Landroid/view/SurfaceHolder;

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    :cond_2
    return-void
.end method

.method public final S()V
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->a1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->a1()I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final S0()V
    .locals 2

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->R0()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v1, v1}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method

.method public final T(I)V
    .locals 3

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v0, p1, Landroidx/media3/session/PlayerInfo;->t:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p1, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v2, v2, Landroidx/media3/common/DeviceInfo;->b:I

    if-lt v0, v2, :cond_1

    iget-boolean v2, p1, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-virtual {p1, v0, v2}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance p1, Landroidx/media3/session/r;

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final T0(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;
    .locals 6

    invoke-static {p1, p2}, Landroidx/media3/session/MediaUtils;->d(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p2, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget p2, p2, Landroidx/media3/common/DeviceInfo;->a:I

    if-nez p2, :cond_0

    iget-boolean p0, p0, Landroidx/media3/session/MediaControllerImplBase;->n:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v0

    const/16 v1, 0x22

    const/16 v2, 0x1a

    const/16 v3, 0x21

    const/16 v4, 0x19

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    filled-new-array {v4, v3, v2, v1}, [I

    move-result-object v0

    iget-object v5, p1, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v5, v0}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object p1

    :cond_2
    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/common/Player$Commands$Builder;-><init>(Landroidx/media3/common/Player$Commands;)V

    iget-object p1, v0, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {p1, p2}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    invoke-virtual {v0, v4, p0}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)V

    invoke-virtual {v0, v3, p0}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)V

    invoke-virtual {v0, v2, p0}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)V

    invoke-virtual {v0, v1, p0}, Landroidx/media3/common/Player$Commands$Builder;->d(IZ)V

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method public final U()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->a1()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final V(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->e(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public final V0(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    if-eqz p1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->G:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    const-string v1, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v1, v0}, Landroidx/media3/session/SequencedFutureManager;->a(Ljava/lang/Object;)Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    move-result-object v0

    iget v2, v0, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->b:I

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->k:Landroidx/collection/ArraySet;

    if-eqz p3, :cond_2

    invoke-virtual {v3}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iput-object p3, p0, Landroidx/media3/session/MediaControllerImplBase;->J:Landroidx/media3/session/PlayerInfo;

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :try_start_0
    invoke-interface {p2, p1, v2}, Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;->d(Landroidx/media3/session/IMediaSession;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to the service or the session is gone"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/16 p1, -0x64

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-virtual {v1, v2, p0}, Landroidx/media3/session/SequencedFutureManager;->d(ILjava/lang/Object;)V

    return-object v0

    :cond_3
    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, -0x4

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final W()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->h:I

    return p0
.end method

.method public final W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->j:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->a:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    invoke-virtual {p0, v0, p1, v2}, Landroidx/media3/session/MediaControllerImplBase;->V0(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method public final X(Z)V
    .locals 2

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/b0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/b0;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    if-eq v1, p1, :cond_1

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->t:I

    invoke-virtual {v0, v1, p1}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Landroidx/media3/session/b0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/b0;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final X0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->j:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->a:Landroid/os/Handler;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    invoke-virtual {p0, v0, p1, v2}, Landroidx/media3/session/MediaControllerImplBase;->V0(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->v(Lcom/google/common/util/concurrent/ListenableFuture;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    instance-of v1, p1, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;

    iget p1, p1, Landroidx/media3/session/SequencedFutureManager$SequencedFuture;->b:I

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->k:Landroidx/collection/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/collection/ArraySet;->remove(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/media3/session/SessionResult;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroidx/media3/session/SessionResult;-><init>(I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {p0, p1, v1}, Landroidx/media3/session/SequencedFutureManager;->d(ILjava/lang/Object;)V

    :cond_1
    const-string p0, "Synchronous command takes too long on the session side."

    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final Y(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final Y0(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget v0, p1, Landroidx/media3/session/SessionCommand;->a:I

    iget-object v1, p1, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    iget-object v0, v0, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v1}, Landroidx/media3/session/CommandButton;->n(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Controller isn\'t allowed to call custom session command:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Landroidx/media3/session/MediaControllerImplBase;->V0(Landroidx/media3/session/IMediaSession;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;Z)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final Z()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->z:I

    return p0
.end method

.method public final a()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public final a0(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->a0(Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroidx/media3/session/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/l;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->Y0(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Landroidx/media3/session/l;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/l;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;I)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/session/MediaControllerImplBase;->Y0(Landroidx/media3/session/SessionCommand;Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final a1()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    invoke-virtual {v1, v0, v2, p0}, Landroidx/media3/common/Timeline;->e(IIZ)I

    move-result p0

    return p0
.end method

.method public final b()Landroidx/media3/session/SessionCommands;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->x:Landroidx/media3/session/SessionCommands;

    return-object p0
.end method

.method public final b0()V
    .locals 3

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iget v0, v1, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    iput v0, v1, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    iput v2, v1, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Llc0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Llc0;-><init>(I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0x16

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b1(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;
    .locals 5

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->o()I

    move-result v2

    if-lt p2, v2, :cond_2

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    invoke-virtual {p1, p0}, Landroidx/media3/common/Timeline;->a(Z)I

    move-result p2

    const-wide/16 p3, 0x0

    invoke-virtual {p1, p2, v0, p3, p4}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-wide p3, p0, Landroidx/media3/common/Timeline$Window;->l:J

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide p3

    :cond_2
    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide p3

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->o()I

    move-result p0

    invoke-static {p2, p0}, Lcom/google/common/base/Preconditions;->j(II)V

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p3, v2

    if-nez p0, :cond_3

    iget-wide p3, v0, Landroidx/media3/common/Timeline$Window;->l:J

    cmp-long p0, p3, v2

    if-nez p0, :cond_3

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget p0, v0, Landroidx/media3/common/Timeline$Window;->n:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v1, p2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    :goto_1
    iget v2, v0, Landroidx/media3/common/Timeline$Window;->o:I

    if-ge p0, v2, :cond_4

    iget-wide v2, v1, Landroidx/media3/common/Timeline$Period;->e:J

    cmp-long v2, v2, p3

    if-eqz v2, :cond_4

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {p1, v2, v1, p2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget-wide v3, v3, Landroidx/media3/common/Timeline$Period;->e:J

    cmp-long v3, v3, p3

    if-gtz v3, :cond_4

    move p0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p0, v1, p2}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-wide p1, v1, Landroidx/media3/common/Timeline$Period;->e:J

    sub-long/2addr p3, p1

    new-instance p1, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    invoke-direct {p1, p0, p3, p4}, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;-><init>(IJ)V

    return-object p1
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Landroidx/media3/session/o;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->v1(Z)V

    return-void
.end method

.method public final c0()V
    .locals 3

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->t:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v2, v2, Landroidx/media3/common/DeviceInfo;->c:I

    if-eqz v2, :cond_2

    if-gt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-virtual {v0, v1, v2}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Landroidx/media3/session/r;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v1, v2}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v1, 0x1e

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method

.method public final c1()I
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v2, p0, Landroidx/media3/session/PlayerInfo;->h:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    invoke-virtual {v1, v0, v2, p0}, Landroidx/media3/common/Timeline;->k(IIZ)I

    move-result p0

    return p0
.end method

.method public final connect()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->e:Landroidx/media3/session/SessionToken;

    iget-object v1, v0, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    iget-object v2, v0, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {v1}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getType()I

    move-result v1

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->d:Landroid/content/Context;

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->f:Landroid/os/Bundle;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/os/IBinder;

    sget v1, Landroidx/media3/session/IMediaSession$Stub;->a:I

    const-string v1, "androidx.media3.session.IMediaSession"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroidx/media3/session/IMediaSession;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/media3/session/IMediaSession;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/session/IMediaSession$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Landroidx/media3/session/IMediaSession$Stub$Proxy;->a:Landroid/os/IBinder;

    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->b()I

    move-result v0

    new-instance v2, Landroidx/media3/session/ConnectionRequest;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v6, v5, v7}, Landroidx/media3/session/ConnectionRequest;-><init>(Ljava/lang/String;ILandroid/os/Bundle;I)V

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-virtual {v2}, Landroidx/media3/session/ConnectionRequest;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Landroidx/media3/session/IMediaSession;->k0(Landroidx/media3/session/IMediaController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed to call connection request."

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    invoke-direct {v1, p0, v5}, Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    const-string v1, "bind to "

    new-instance v5, Landroid/content/Intent;

    const-string v6, "androidx.media3.session.MediaSessionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->c()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->p:Landroidx/media3/session/MediaControllerImplBase$SessionServiceConnection;

    const/16 v2, 0x1001

    invoke-virtual {v4, v5, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not allowed"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Let;

    const/16 v0, 0x19

    invoke-direct {p0, v3, v0}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v3, p0}, Landroidx/media3/session/MediaController;->Y0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/s;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, p1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, p1}, Landroidx/media3/session/PlayerInfo;->c(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Loc0;

    invoke-direct {v0, p1, v1}, Loc0;-><init>(Landroidx/media3/common/PlaybackParameters;I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d0()Landroidx/media3/common/TrackSelectionParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    return-object p0
.end method

.method public final d1()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->o:Landroidx/media3/session/SessionToken;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/session/SessionToken;->a:Landroidx/media3/session/SessionToken$SessionTokenImpl;

    invoke-interface {p0}, Landroidx/media3/session/SessionToken$SessionTokenImpl;->d()I

    move-result p0

    return p0
.end method

.method public final e()Landroidx/media3/common/PlaybackException;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    return-object p0
.end method

.method public final e0(Landroid/view/TextureView;)V
    .locals 3

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->S0()V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    if-ne v0, p1, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->R0()V

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->h:Landroidx/media3/session/MediaControllerImplBase$SurfaceCallback;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p0, v0, v0}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void

    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->B:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Landroidx/media3/session/MediaControllerImplBase;->w1(Landroid/view/Surface;II)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaControllerImplBase;->m1(II)V

    return-void
.end method

.method public final e1(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p0, p1}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Controller isn\'t allowed to call command= "

    invoke-static {p1, p0}, La;->u(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()V
    .locals 9

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/session/o;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v1}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v2, v1, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->t:I

    return p0
.end method

.method public final g(F)V
    .locals 3

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroidx/media3/session/z;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/z;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v2, v0, Landroidx/media3/session/PlayerInfo;->n:F

    cmpl-float v2, v2, p1

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v2, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    iget v0, v2, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    :goto_0
    iput v0, v2, Landroidx/media3/session/PlayerInfo$Builder;->o:F

    iput p1, v2, Landroidx/media3/session/PlayerInfo$Builder;->n:F

    invoke-virtual {v2}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Lsc;

    invoke-direct {v0, p1, v1}, Lsc;-><init>(FI)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final g0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->h:J

    return-wide v0
.end method

.method public final getCurrentPosition()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v1, p0, Landroidx/media3/session/MediaControllerImplBase;->H:J

    iget-wide v3, p0, Landroidx/media3/session/MediaControllerImplBase;->I:J

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    iget-wide v5, v5, Landroidx/media3/session/MediaController;->f:J

    invoke-static/range {v0 .. v6}, Landroidx/media3/session/MediaUtils;->c(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->H:J

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->d:J

    return-wide v0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->A:I

    return p0
.end method

.method public final h0(IJ)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/d0;

    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media3/session/d0;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void
.end method

.method public final i()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->h:I

    return p0
.end method

.method public final i0()Landroidx/media3/common/Player$Commands;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    return-object p0
.end method

.method public final isConnected()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPlaying()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->x:Z

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean p0, p0, Landroidx/media3/session/SessionPositionInfo;->b:Z

    return p0
.end method

.method public final j0(Z)V
    .locals 2

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/b0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/b0;-><init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean v1, v0, Landroidx/media3/session/PlayerInfo;->i:Z

    if-eq v1, p1, :cond_1

    new-instance v1, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v1, v0}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-boolean p1, v1, Landroidx/media3/session/PlayerInfo$Builder;->i:Z

    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v0, Lwm;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lwm;-><init>(ZI)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j1(III)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v3

    move/from16 v4, p2

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v4, v1

    sub-int v6, v3, v5

    move/from16 v7, p3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v3, :cond_5

    if-eq v1, v4, :cond_5

    if-ne v1, v6, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-wide/16 v11, 0x0

    if-ge v10, v3, :cond_1

    new-instance v13, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v13}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {v2, v10, v13, v11, v12}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v7, v1, v4, v6}, Landroidx/media3/common/util/Util;->Q(Ljava/util/ArrayList;III)V

    invoke-static {v2, v7, v8}, Landroidx/media3/session/MediaControllerImplBase;->n1(Landroidx/media3/common/Timeline;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v7, v8}, Landroidx/media3/session/MediaControllerImplBase;->U0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/common/Timeline$RemotableTimeline;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v7}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v7

    if-lt v7, v1, :cond_2

    if-ge v7, v4, :cond_2

    sub-int v1, v7, v1

    add-int/2addr v1, v6

    :goto_1
    move v13, v1

    goto :goto_2

    :cond_2
    if-gt v4, v7, :cond_3

    if-le v6, v7, :cond_3

    sub-int v1, v7, v5

    goto :goto_1

    :cond_3
    if-le v4, v7, :cond_4

    if-gt v6, v7, :cond_4

    add-int v1, v7, v5

    goto :goto_1

    :cond_4
    move v13, v7

    :goto_2
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->e:I

    invoke-virtual {v2, v7, v1, v11, v12}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Window;->n:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v13, v1, v11, v12}, Landroidx/media3/common/Timeline$RemotableTimeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget v1, v1, Landroidx/media3/common/Timeline$Window;->n:I

    add-int v14, v1, v4

    iget-object v11, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v15

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->u()J

    move-result-wide v17

    const/16 v19, 0x5

    move-object v12, v3

    invoke-static/range {v11 .. v19}, Landroidx/media3/session/MediaControllerImplBase;->h1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline$RemotableTimeline;IIJJI)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final k()V
    .locals 3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void
.end method

.method public final k0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->E:J

    return-wide v0
.end method

.method public final k1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const/4 v6, 0x0

    move-object/from16 v7, p0

    iget-object v7, v7, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    if-eqz v2, :cond_0

    new-instance v8, Landroidx/media3/session/w;

    invoke-direct {v8, v1, v2, v6}, Landroidx/media3/session/w;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;I)V

    invoke-virtual {v7, v6, v8}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    const/16 v2, 0xb

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    new-instance v9, Landroidx/media3/session/w;

    invoke-direct {v9, v1, v4, v8}, Landroidx/media3/session/w;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;I)V

    invoke-virtual {v7, v2, v9}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    invoke-virtual {v1}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object v4

    const/16 v9, 0x10

    if-eqz v5, :cond_2

    new-instance v10, Lp3;

    invoke-direct {v10, v4, v5, v9}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v8, v10}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_2
    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    iget-object v5, v1, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    const/4 v10, 0x2

    const/16 v11, 0xa

    if-eq v4, v5, :cond_4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v5}, Landroidx/media3/common/PlaybackException;->a(Landroidx/media3/common/PlaybackException;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lls;

    invoke-direct {v4, v8, v5}, Lls;-><init>(ILandroidx/media3/common/PlaybackException;)V

    invoke-virtual {v7, v11, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    if-eqz v5, :cond_4

    new-instance v4, Lls;

    invoke-direct {v4, v10, v5}, Lls;-><init>(ILandroidx/media3/common/PlaybackException;)V

    invoke-virtual {v7, v11, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_4
    :goto_0
    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    iget-object v5, v1, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x12

    if-nez v4, :cond_5

    new-instance v4, Landroidx/media3/session/x;

    invoke-direct {v4, v1, v5}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v10, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_5
    iget-object v4, v0, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    iget-object v12, v1, Landroidx/media3/session/PlayerInfo;->B:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v4, v12}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v12, 0x13

    const/16 v13, 0xe

    if-nez v4, :cond_6

    new-instance v4, Landroidx/media3/session/x;

    invoke-direct {v4, v1, v12}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v13, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_6
    iget-boolean v4, v0, Landroidx/media3/session/PlayerInfo;->y:Z

    iget-boolean v14, v1, Landroidx/media3/session/PlayerInfo;->y:Z

    const/16 v15, 0x14

    const/4 v12, 0x3

    if-eq v4, v14, :cond_7

    new-instance v4, Landroidx/media3/session/x;

    invoke-direct {v4, v1, v15}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v12, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_7
    iget v4, v0, Landroidx/media3/session/PlayerInfo;->A:I

    iget v14, v1, Landroidx/media3/session/PlayerInfo;->A:I

    const/16 v5, 0x15

    const/4 v9, 0x4

    if-eq v4, v14, :cond_8

    new-instance v4, Landroidx/media3/session/x;

    invoke-direct {v4, v1, v5}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v9, v4}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_8
    const/4 v4, 0x5

    if-eqz v3, :cond_9

    new-instance v14, Landroidx/media3/session/w;

    invoke-direct {v14, v1, v3, v10}, Landroidx/media3/session/w;-><init>(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;I)V

    invoke-virtual {v7, v4, v14}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_9
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->z:I

    iget v14, v1, Landroidx/media3/session/PlayerInfo;->z:I

    const/4 v13, 0x6

    if-eq v3, v14, :cond_a

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v6}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v13, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_a
    iget-boolean v3, v0, Landroidx/media3/session/PlayerInfo;->x:Z

    iget-boolean v6, v1, Landroidx/media3/session/PlayerInfo;->x:Z

    const/4 v14, 0x7

    if-eq v3, v6, :cond_b

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v8}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v14, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_b
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    iget-object v6, v1, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v3, v6}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v6, 0xc

    if-nez v3, :cond_c

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v10}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v6, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_c
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->h:I

    iget v8, v1, Landroidx/media3/session/PlayerInfo;->h:I

    const/16 v10, 0x8

    if-eq v3, v8, :cond_d

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v12}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v10, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_d
    iget-boolean v3, v0, Landroidx/media3/session/PlayerInfo;->i:Z

    iget-boolean v8, v1, Landroidx/media3/session/PlayerInfo;->i:Z

    const/16 v12, 0x9

    if-eq v3, v8, :cond_e

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v9}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v12, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_e
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    iget-object v8, v1, Landroidx/media3/session/PlayerInfo;->m:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v3, v8}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v8, 0xf

    if-nez v3, :cond_f

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v4}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v8, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_f
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->n:F

    iget v4, v1, Landroidx/media3/session/PlayerInfo;->n:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_10

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v13}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v4, 0x16

    invoke-virtual {v7, v4, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_10
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    iget-object v4, v1, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v3, v4}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v14}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v15, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_11
    iget v3, v0, Landroidx/media3/session/PlayerInfo;->p:I

    iget v4, v1, Landroidx/media3/session/PlayerInfo;->p:I

    if-eq v3, v4, :cond_12

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v10}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v5, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_12
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    iget-object v3, v3, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v1, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    iget-object v4, v4, Landroidx/media3/common/text/CueGroup;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v4}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v12}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v4, 0x1b

    invoke-virtual {v7, v4, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v11}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v4, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    iget-object v3, v0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget-object v4, v1, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {v3, v4}, Landroidx/media3/common/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Landroidx/media3/session/x;

    invoke-direct {v3, v1, v2}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v2, 0x1d

    invoke-virtual {v7, v2, v3}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_14
    iget v2, v0, Landroidx/media3/session/PlayerInfo;->t:I

    iget v3, v1, Landroidx/media3/session/PlayerInfo;->t:I

    if-ne v2, v3, :cond_15

    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo;->u:Z

    iget-boolean v3, v1, Landroidx/media3/session/PlayerInfo;->u:Z

    if-eq v2, v3, :cond_16

    :cond_15
    new-instance v2, Landroidx/media3/session/x;

    invoke-direct {v2, v1, v6}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v3, 0x1e

    invoke-virtual {v7, v3, v2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_16
    iget-object v2, v0, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    iget-object v3, v1, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    invoke-virtual {v2, v3}, Landroidx/media3/common/VideoSize;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Landroidx/media3/session/x;

    const/16 v3, 0xd

    invoke-direct {v2, v1, v3}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v3, 0x19

    invoke-virtual {v7, v3, v2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_17
    iget-wide v2, v0, Landroidx/media3/session/PlayerInfo;->C:J

    iget-wide v4, v1, Landroidx/media3/session/PlayerInfo;->C:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_18

    new-instance v2, Landroidx/media3/session/x;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v3, 0x10

    invoke-virtual {v7, v3, v2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_18
    iget-wide v2, v0, Landroidx/media3/session/PlayerInfo;->D:J

    iget-wide v4, v1, Landroidx/media3/session/PlayerInfo;->D:J

    cmp-long v2, v2, v4

    const/16 v3, 0x11

    if-eqz v2, :cond_19

    new-instance v2, Landroidx/media3/session/x;

    invoke-direct {v2, v1, v8}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    invoke-virtual {v7, v3, v2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_19
    iget-wide v4, v0, Landroidx/media3/session/PlayerInfo;->E:J

    iget-wide v8, v1, Landroidx/media3/session/PlayerInfo;->E:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1a

    new-instance v2, Landroidx/media3/session/x;

    const/16 v4, 0x10

    invoke-direct {v2, v1, v4}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v4, 0x12

    invoke-virtual {v7, v4, v2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1a
    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->G:Landroidx/media3/common/TrackSelectionParameters;

    invoke-virtual {v0, v2}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    new-instance v0, Landroidx/media3/session/x;

    invoke-direct {v0, v1, v3}, Landroidx/media3/session/x;-><init>(Landroidx/media3/session/PlayerInfo;I)V

    const/16 v1, 0x13

    invoke-virtual {v7, v1, v0}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1b
    invoke-virtual {v7}, Landroidx/media3/common/util/ListenerSet;->b()V

    return-void
.end method

.method public final l()V
    .locals 8

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->u0()Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v2}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v2

    new-instance v3, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v3}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v2, v0, Landroidx/media3/common/Timeline$Window;->i:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->c1()I

    move-result v0

    invoke-virtual {p0, v0, v6, v7}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v2, v2, Landroidx/media3/session/PlayerInfo;->E:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->c1()I

    move-result v0

    invoke-virtual {p0, v0, v6, v7}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    invoke-virtual {p0, v0, v4, v5}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final l0(ILandroidx/media3/common/MediaItem;)V
    .locals 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/n;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaControllerImplBase;->p1(IILjava/util/List;)V

    return-void
.end method

.method public final l1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    move v9, v4

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->J:Landroidx/media3/session/PlayerInfo;

    const/4 v1, 0x0

    if-eqz v5, :cond_3

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v10, p0, Landroidx/media3/session/MediaControllerImplBase;->o:Landroidx/media3/session/SessionToken;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v5 .. v10}, Landroidx/media3/session/MediaUtils;->e(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;ZLandroidx/media3/session/SessionToken;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->J:Landroidx/media3/session/PlayerInfo;

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->k:Landroidx/collection/ArraySet;

    invoke-virtual {v2}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->J:Landroidx/media3/session/PlayerInfo;

    sget-object v5, Landroidx/media3/session/PlayerInfo$BundlingExclusions;->c:Landroidx/media3/session/PlayerInfo$BundlingExclusions;

    iput-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->J:Landroidx/media3/session/PlayerInfo;

    move-object v6, v2

    move-object v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v6, p1

    move-object v7, p2

    :goto_2
    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v8, p0, Landroidx/media3/session/MediaControllerImplBase;->A:Landroidx/media3/common/Player$Commands;

    iget-object v10, p0, Landroidx/media3/session/MediaControllerImplBase;->o:Landroidx/media3/session/SessionToken;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v5 .. v10}, Landroidx/media3/session/MediaUtils;->e(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo$BundlingExclusions;Landroidx/media3/common/Player$Commands;ZLandroidx/media3/session/SessionToken;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v5, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    iget-object v8, v5, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    iget-object v9, v6, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v7, v9}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    invoke-virtual {v8, v6}, Landroidx/media3/common/Player$PositionInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v1

    goto :goto_4

    :cond_5
    :goto_3
    iget v6, v2, Landroidx/media3/session/PlayerInfo;->f:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_4
    invoke-virtual {v5}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object v7

    invoke-virtual {v2}, Landroidx/media3/session/PlayerInfo;->i()Landroidx/media3/common/MediaItem;

    move-result-object v9

    iget-object v10, v2, Landroidx/media3/session/PlayerInfo;->e:Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    iget v9, v2, Landroidx/media3/session/PlayerInfo;->b:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_5

    :cond_6
    move-object v9, v1

    :goto_5
    if-eqz v7, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v4, :cond_a

    :cond_7
    iget v7, v8, Landroidx/media3/common/Player$PositionInfo;->b:I

    iget v8, v10, Landroidx/media3/common/Player$PositionInfo;->b:I

    if-eq v7, v8, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    const/4 v4, 0x2

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_7

    :cond_9
    iget v4, v5, Landroidx/media3/session/PlayerInfo;->h:I

    if-eqz v4, :cond_a

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v5, Landroidx/media3/session/PlayerInfo;->d:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->h:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_a

    iget v4, v10, Landroidx/media3/common/Player$PositionInfo;->h:I

    if-ne v4, v7, :cond_a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_a
    :goto_7
    iget-object v3, v5, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    iget-object v4, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v3, v4}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget v3, v2, Landroidx/media3/session/PlayerInfo;->k:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_b
    move-object v3, v1

    :goto_8
    iget v4, v5, Landroidx/media3/session/PlayerInfo;->w:I

    iget v7, v2, Landroidx/media3/session/PlayerInfo;->w:I

    if-ne v4, v7, :cond_d

    iget-boolean v4, v5, Landroidx/media3/session/PlayerInfo;->v:Z

    iget-boolean v8, v2, Landroidx/media3/session/PlayerInfo;->v:Z

    if-eq v4, v8, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    move-object v0, p0

    move-object v4, v1

    move-object v1, v5

    move-object v5, v6

    move-object v6, v9

    goto :goto_b

    :cond_d
    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :goto_b
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->k1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->y:Z

    return p0
.end method

.method public final m0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->i:J

    return-wide v0
.end method

.method public final m1(II)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->E:Landroidx/media3/common/util/Size;

    iget v1, v0, Landroidx/media3/common/util/Size;->a:I

    if-ne v1, p1, :cond_1

    iget v0, v0, Landroidx/media3/common/util/Size;->b:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->E:Landroidx/media3/common/util/Size;

    new-instance v0, Lpc0;

    invoke-direct {v0, p1, p2}, Lpc0;-><init>(II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x18

    invoke-virtual {p0, p1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final n()Landroidx/media3/common/Tracks;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->F:Landroidx/media3/common/Tracks;

    return-object p0
.end method

.method public final n0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->e:I

    return p0
.end method

.method public final o()Landroidx/media3/common/text/CueGroup;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->r:Landroidx/media3/common/text/CueGroup;

    return-object p0
.end method

.method public final o0(Landroid/view/TextureView;)V
    .locals 1

    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->D:Landroid/view/TextureView;

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->S0()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o1(II)V
    .locals 12

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->o()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge p1, v1, :cond_5

    if-eq p1, v3, :cond_5

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lt v1, p1, :cond_1

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v1

    if-ge v1, v3, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_0
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->u()J

    move-result-wide v7

    const/4 v4, 0x0

    move v2, p1

    invoke-static/range {v1 .. v8}, Landroidx/media3/session/MediaControllerImplBase;->g1(Landroidx/media3/session/PlayerInfo;IIZJJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->b:I

    if-lt v4, p1, :cond_2

    if-ge v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v9, v10

    :goto_1
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v11, :cond_3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v3

    :goto_2
    if-eqz v9, :cond_4

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    move-object v5, v3

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final p()Landroidx/media3/common/Timeline;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    return-object p0
.end method

.method public final p0(Landroidx/media3/common/AudioAttributes;Z)V
    .locals 1

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/h;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p2, p2, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p2, p1}, Landroidx/media3/common/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {p2, p2}, Ld21;->c(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;)Landroidx/media3/session/PlayerInfo$Builder;

    move-result-object p2

    iput-object p1, p2, Landroidx/media3/session/PlayerInfo$Builder;->q:Landroidx/media3/common/AudioAttributes;

    invoke-virtual {p2}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance p2, Lfw;

    const/16 v0, 0x18

    invoke-direct {p2, p1, v0}, Lfw;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x14

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final p1(IILjava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->o()I

    move-result v2

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    const/4 v2, -0x1

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void

    :cond_1
    move-object v8, v0

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v9, v8, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v8}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v12

    invoke-virtual {v8}, Landroidx/media3/session/MediaControllerImplBase;->u()J

    move-result-wide v14

    move-object/from16 v11, p3

    move v10, v2

    invoke-static/range {v9 .. v15}, Landroidx/media3/session/MediaControllerImplBase;->f1(Landroidx/media3/session/PlayerInfo;ILjava/util/List;JJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    invoke-virtual {v8}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v4

    invoke-virtual {v8}, Landroidx/media3/session/MediaControllerImplBase;->u()J

    move-result-wide v6

    const/4 v3, 0x1

    invoke-static/range {v0 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->g1(Landroidx/media3/session/PlayerInfo;IIZJJ)Landroidx/media3/session/PlayerInfo;

    move-result-object v0

    iget-object v3, v8, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->b:I

    const/4 v4, 0x0

    if-lt v3, v1, :cond_2

    if-ge v3, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    :goto_1
    if-eqz v1, :cond_4

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_4
    move-object v5, v3

    const/4 v3, 0x0

    move-object v1, v0

    move-object v0, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final pause()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->v1(Z)V

    return-void
.end method

.method public final q()V
    .locals 7

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->p()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->U()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->a1()I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void

    :cond_2
    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v1}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v1

    new-instance v4, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/media3/common/Timeline$Window;->i:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    invoke-virtual {p0, v0, v2, v3}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final q0()F
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget p0, p0, Landroidx/media3/session/PlayerInfo;->n:F

    return p0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->v:Z

    return p0
.end method

.method public final r0()Landroidx/media3/common/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->q:Landroidx/media3/common/AudioAttributes;

    return-object p0
.end method

.method public final release()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    iget-boolean v1, p0, Landroidx/media3/session/MediaControllerImplBase;->q:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaControllerImplBase;->q:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->o:Landroidx/media3/session/SessionToken;

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->m:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->R0()V

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->j:Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;

    iget-object v4, v3, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->a:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroidx/media3/session/MediaControllerImplBase$FlushCommandQueueHandler;->a()V

    :cond_1
    invoke-virtual {v4, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/media3/session/MediaControllerImplBase;->F:Landroidx/media3/session/IMediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    invoke-virtual {v3}, Landroidx/media3/session/SequencedFutureManager;->b()I

    move-result v3

    :try_start_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->g:Landroidx/media3/session/y;

    invoke-interface {v4, v5, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v4, p0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    invoke-interface {v0, v4, v3}, Landroidx/media3/session/IMediaSession;->L(Landroidx/media3/session/IMediaController;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->d()V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->b:Landroidx/media3/session/SequencedFutureManager;

    new-instance v3, Landroidx/media3/session/j;

    invoke-direct {v3, p0, v1}, Landroidx/media3/session/j;-><init>(Ljava/lang/Object;I)V

    iget-object p0, v0, Landroidx/media3/session/SequencedFutureManager;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    invoke-static {v2}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/session/SequencedFutureManager;->e:Landroid/os/Handler;

    iput-object v3, v0, Landroidx/media3/session/SequencedFutureManager;->d:Landroidx/media3/session/j;

    iget-object v2, v0, Landroidx/media3/session/SequencedFutureManager;->c:Landroidx/collection/ArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/media3/session/SequencedFutureManager;->c()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v2, Landroidx/media3/session/j;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Landroidx/media3/session/j;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    monitor-exit p0

    :goto_1
    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final s()Landroidx/media3/common/VideoSize;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->l:Landroidx/media3/common/VideoSize;

    return-object p0
.end method

.method public final s0()Landroidx/media3/common/DeviceInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public final s1(IJ)V
    .locals 53

    move-object/from16 v0, p0

    move/from16 v3, p1

    move-wide/from16 v13, p2

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v1, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->o()I

    move-result v2

    if-ge v3, v2, :cond_e

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v4, v2, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    iget-object v6, v2, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    invoke-virtual {v2, v4, v6}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v13, v14}, Landroidx/media3/session/MediaControllerImplBase;->b1(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-nez v4, :cond_7

    new-instance v1, Landroidx/media3/common/Player$PositionInfo;

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v16, v13, v9

    move-wide v9, v7

    if-nez v16, :cond_3

    goto :goto_1

    :cond_3
    move-wide v7, v13

    :goto_1
    move-wide v11, v9

    if-nez v16, :cond_4

    goto :goto_2

    :cond_4
    move-wide v9, v13

    :goto_2
    const/4 v2, -0x1

    move-wide/from16 v17, v11

    const/4 v12, -0x1

    move v11, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 v19, v5

    const/4 v5, 0x0

    move/from16 v20, v6

    move/from16 v6, p1

    move/from16 v15, v19

    move/from16 v13, v20

    const/16 v34, 0x2

    invoke-direct/range {v1 .. v12}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    move/from16 v4, v16

    new-instance v16, Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v5, v5, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v5, v5, Landroidx/media3/session/SessionPositionInfo;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    iget-object v6, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v6, v6, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v7, v6, Landroidx/media3/session/SessionPositionInfo;->d:J

    if-nez v4, :cond_5

    const-wide/16 v23, 0x0

    goto :goto_3

    :cond_5
    move-wide/from16 v23, p2

    :goto_3
    iget-wide v9, v6, Landroidx/media3/session/SessionPositionInfo;->h:J

    iget-wide v11, v6, Landroidx/media3/session/SessionPositionInfo;->i:J

    if-nez v4, :cond_6

    const-wide/16 v32, 0x0

    goto :goto_4

    :cond_6
    move-wide/from16 v32, p2

    :goto_4
    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v17, v1

    move/from16 v18, v5

    move-wide/from16 v21, v7

    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    invoke-direct/range {v16 .. v33}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v4, v16

    invoke-static {v2, v3, v1, v4, v15}, Landroidx/media3/session/MediaControllerImplBase;->i1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    goto/16 :goto_9

    :cond_7
    move v15, v5

    move v13, v6

    const/16 v34, 0x2

    iget-object v3, v2, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v5, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-object v3, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v5, v5, Landroidx/media3/common/Player$PositionInfo;->e:I

    iget v6, v4, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->a:I

    new-instance v7, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v7}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v1, v5, v7, v13}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    new-instance v8, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Period;-><init>()V

    invoke-virtual {v1, v6, v8, v13}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    if-eq v5, v6, :cond_8

    move v9, v15

    goto :goto_5

    :cond_8
    move v9, v13

    :goto_5
    iget-wide v10, v4, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->b:J

    invoke-virtual {v0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v19

    iget-wide v13, v7, Landroidx/media3/common/Timeline$Period;->e:J

    sub-long v12, v19, v13

    if-nez v9, :cond_9

    cmp-long v14, v10, v12

    if-nez v14, :cond_9

    goto/16 :goto_8

    :cond_9
    iget v14, v3, Landroidx/media3/common/Player$PositionInfo;->h:I

    const/4 v4, -0x1

    if-ne v14, v4, :cond_a

    move v4, v15

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v19, Landroidx/media3/common/Player$PositionInfo;

    iget v4, v7, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object v3, v3, Landroidx/media3/common/Player$PositionInfo;->c:Landroidx/media3/common/MediaItem;

    move-object/from16 v22, v3

    move/from16 v21, v4

    iget-wide v3, v7, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v3, v12

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v25

    iget-wide v3, v7, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v3, v12

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v27

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v20, 0x0

    const/16 v23, 0x0

    move/from16 v24, v5

    invoke-direct/range {v19 .. v30}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v3, v19

    const/4 v4, 0x0

    invoke-virtual {v1, v6, v8, v4}, Landroidx/media3/common/Timeline;->f(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    new-instance v5, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v5}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iget v7, v8, Landroidx/media3/common/Timeline$Period;->c:I

    invoke-virtual {v1, v7, v5}, Landroidx/media3/common/Timeline;->n(ILandroidx/media3/common/Timeline$Window;)V

    move-object/from16 p2, v5

    iget-wide v4, v8, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v4, v10

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v25

    new-instance v36, Landroidx/media3/common/Player$PositionInfo;

    iget v1, v8, Landroidx/media3/common/Timeline$Period;->c:I

    move-object/from16 v4, p2

    iget-object v5, v4, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    move-wide/from16 v27, v25

    move/from16 v21, v1

    move-object/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v19, v36

    invoke-direct/range {v19 .. v30}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    move-object/from16 v1, v19

    move-wide/from16 v5, v25

    new-instance v7, Landroidx/media3/session/PlayerInfo$Builder;

    invoke-direct {v7, v2}, Landroidx/media3/session/PlayerInfo$Builder;-><init>(Landroidx/media3/session/PlayerInfo;)V

    iput-object v3, v7, Landroidx/media3/session/PlayerInfo$Builder;->d:Landroidx/media3/common/Player$PositionInfo;

    iput-object v1, v7, Landroidx/media3/session/PlayerInfo$Builder;->e:Landroidx/media3/common/Player$PositionInfo;

    iput v15, v7, Landroidx/media3/session/PlayerInfo$Builder;->f:I

    invoke-virtual {v7}, Landroidx/media3/session/PlayerInfo$Builder;->a()Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    if-nez v9, :cond_b

    cmp-long v3, v10, v12

    if-gez v3, :cond_c

    :cond_b
    move-object/from16 v36, v1

    goto :goto_7

    :cond_c
    iget-object v3, v2, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v5, v3, Landroidx/media3/session/SessionPositionInfo;->g:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v5

    sub-long v12, v10, v12

    sub-long/2addr v5, v12

    const-wide/16 v12, 0x0

    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-wide v7, v8, Landroidx/media3/common/Timeline$Period;->e:J

    add-long/2addr v7, v10

    add-long/2addr v7, v5

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v7

    new-instance v35, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    iget-wide v9, v4, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v9, v10}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v40

    iget-wide v3, v4, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v3

    invoke-static {v7, v8, v3, v4}, Landroidx/media3/session/MediaUtils;->b(JJ)I

    move-result v44

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v45

    const-wide v47, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    move-wide/from16 v51, v7

    move-object/from16 v36, v1

    move-wide/from16 v42, v7

    invoke-direct/range {v35 .. v52}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v1, v35

    invoke-virtual {v2, v1}, Landroidx/media3/session/PlayerInfo;->e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    goto :goto_8

    :goto_7
    new-instance v35, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    iget-wide v7, v4, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v40

    iget-wide v3, v4, Landroidx/media3/common/Timeline$Window;->m:J

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Landroidx/media3/session/MediaUtils;->b(JJ)I

    move-result v44

    const-wide v47, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v49, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v37, 0x0

    const-wide/16 v45, 0x0

    move-wide/from16 v51, v5

    move-wide/from16 v42, v5

    invoke-direct/range {v35 .. v52}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    move-object/from16 v1, v35

    invoke-virtual {v2, v1}, Landroidx/media3/session/PlayerInfo;->e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    :goto_8
    move-object v1, v2

    :goto_9
    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, v2, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v3, v3, Landroidx/media3/common/Player$PositionInfo;->b:I

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v4, v4, Landroidx/media3/common/Player$PositionInfo;->b:I

    if-eq v3, v4, :cond_d

    move v5, v15

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    if-nez v5, :cond_f

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v2, v2, Landroidx/media3/common/Player$PositionInfo;->f:J

    iget-object v4, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v4, v4, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v4, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v6, v4, Landroidx/media3/common/Player$PositionInfo;->f:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_e

    goto :goto_c

    :cond_e
    :goto_b
    return-void

    :cond_f
    :goto_c
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v5, :cond_10

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_d
    move-object v5, v2

    goto :goto_e

    :cond_10
    const/4 v2, 0x0

    goto :goto_d

    :goto_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/t;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/session/t;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void
.end method

.method public final stop()V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Landroidx/media3/session/o;

    const/16 v2, 0xb

    invoke-direct {v1, v0, v2}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v2, Landroidx/media3/session/SessionPositionInfo;

    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v4, v3, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-boolean v3, v3, Landroidx/media3/session/SessionPositionInfo;->b:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v8, v7, Landroidx/media3/session/SessionPositionInfo;->d:J

    iget-object v7, v7, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v10, v7, Landroidx/media3/common/Player$PositionInfo;->f:J

    move-wide v12, v10

    invoke-static {v12, v13, v8, v9}, Landroidx/media3/session/MediaUtils;->b(JJ)I

    move-result v11

    iget-object v7, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v7, v7, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v14, v7, Landroidx/media3/session/SessionPositionInfo;->h:J

    move-object v10, v2

    move/from16 v16, v3

    iget-wide v2, v7, Landroidx/media3/session/SessionPositionInfo;->i:J

    iget-object v7, v7, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    move-wide/from16 v17, v2

    iget-wide v2, v7, Landroidx/media3/common/Player$PositionInfo;->f:J

    move-wide/from16 v20, v2

    move-object v3, v4

    move/from16 v4, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v20

    move-wide v7, v8

    move-object v2, v10

    move-wide v9, v12

    const-wide/16 v12, 0x0

    invoke-direct/range {v2 .. v19}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    invoke-virtual {v1, v2}, Landroidx/media3/session/PlayerInfo;->e(Landroidx/media3/session/SessionPositionInfo;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v2, v1, Landroidx/media3/session/PlayerInfo;->A:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    invoke-virtual {v1, v3, v2}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance v1, Llc0;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Llc0;-><init>(I)V

    iget-object v0, v0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t(F)V
    .locals 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/z;-><init>(Ljava/lang/Object;FI)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->g:Landroidx/media3/common/PlaybackParameters;

    iget v1, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/media3/common/PlaybackParameters;

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->b:F

    invoke-direct {v1, p1, v0}, Landroidx/media3/common/PlaybackParameters;-><init>(FF)V

    iget-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {p1, v1}, Landroidx/media3/session/PlayerInfo;->c(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/session/PlayerInfo;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance p1, Loc0;

    const/4 v0, 0x1

    invoke-direct {p1, v1, v0}, Loc0;-><init>(Landroidx/media3/common/PlaybackParameters;I)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final t0(II)V
    .locals 2

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/v;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/v;-><init>(Landroidx/media3/session/MediaControllerImplBase;III)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, p2, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    iget v1, p2, Landroidx/media3/session/PlayerInfo;->t:I

    if-eq v1, p1, :cond_2

    iget v1, v0, Landroidx/media3/common/DeviceInfo;->b:I

    if-gt v1, p1, :cond_2

    iget v0, v0, Landroidx/media3/common/DeviceInfo;->c:I

    if-eqz v0, :cond_1

    if-gt p1, v0, :cond_2

    :cond_1
    iget-boolean v0, p2, Landroidx/media3/session/PlayerInfo;->u:Z

    invoke-virtual {p2, p1, v0}, Landroidx/media3/session/PlayerInfo;->a(IZ)Landroidx/media3/session/PlayerInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    new-instance p2, Landroidx/media3/session/r;

    const/4 v0, 0x2

    invoke-direct {p2, p0, p1, v0}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->i:Landroidx/media3/common/util/ListenerSet;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/ListenerSet;->c(ILandroidx/media3/common/util/ListenerSet$Event;)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final t1(J)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {v0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void
.end method

.method public final u()J
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-boolean v1, v0, Landroidx/media3/session/SessionPositionInfo;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, v0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget-wide v0, p0, Landroidx/media3/common/Player$PositionInfo;->g:J

    return-wide v0
.end method

.method public final u0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->c1()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u1(Ljava/util/List;IJZ)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move v11, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v11, v6, :cond_0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Landroidx/media3/common/MediaItem;

    sget-object v6, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    new-instance v6, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v6}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v25, 0x0

    const/4 v9, 0x0

    move/from16 v23, v11

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move/from16 v24, v23

    invoke-virtual/range {v6 .. v26}, Landroidx/media3/common/Timeline$Window;->b(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v8}, Landroidx/media3/common/Timeline$Period;-><init>()V

    sget-object v16, Landroidx/media3/common/AdPlaybackState;->g:Landroidx/media3/common/AdPlaybackState;

    const/16 v17, 0x1

    const/4 v10, 0x0

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    move/from16 v11, v23

    invoke-virtual/range {v8 .. v17}, Landroidx/media3/common/Timeline$Period;->i(Ljava/lang/Object;Ljava/lang/Object;IJJLandroidx/media3/common/AdPlaybackState;Z)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v23, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v4}, Landroidx/media3/session/MediaControllerImplBase;->U0(Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroidx/media3/common/Timeline$RemotableTimeline;

    move-result-object v3

    iget-object v4, v3, Landroidx/media3/common/Timeline$RemotableTimeline;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    :cond_1
    move-wide/from16 v8, p3

    goto :goto_1

    :cond_2
    new-instance v0, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v8, p3

    invoke-direct {v0, v3, v2, v8, v9}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v0

    :goto_1
    const/4 v6, -0x1

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x1

    if-eqz p5, :cond_4

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->i:Z

    invoke-virtual {v3, v2}, Landroidx/media3/common/Timeline$RemotableTimeline;->a(Z)I

    move-result v2

    :goto_2
    move v15, v2

    move-wide v8, v10

    goto :goto_3

    :cond_4
    if-ne v2, v6, :cond_6

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object v2, v2, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget v8, v2, Landroidx/media3/common/Player$PositionInfo;->b:I

    iget-wide v13, v2, Landroidx/media3/common/Player$PositionInfo;->f:J

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lt v8, v2, :cond_5

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean v2, v2, Landroidx/media3/session/PlayerInfo;->i:Z

    invoke-virtual {v3, v2}, Landroidx/media3/common/Timeline$RemotableTimeline;->a(Z)I

    move-result v2

    move v15, v2

    move-wide v8, v10

    move v5, v12

    goto :goto_3

    :cond_5
    move v15, v8

    move-wide v8, v13

    goto :goto_3

    :cond_6
    move v15, v2

    :goto_3
    invoke-virtual {v0, v3, v15, v8, v9}, Landroidx/media3/session/MediaControllerImplBase;->b1(Landroidx/media3/common/Timeline;IJ)Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;

    move-result-object v2

    if-nez v2, :cond_b

    new-instance v13, Landroidx/media3/common/Player$PositionInfo;

    cmp-long v1, v8, v10

    const-wide/16 v10, 0x0

    if-nez v1, :cond_7

    move-wide/from16 v19, v10

    goto :goto_4

    :cond_7
    move-wide/from16 v19, v8

    :goto_4
    if-nez v1, :cond_8

    move-wide/from16 v21, v10

    goto :goto_5

    :cond_8
    move-wide/from16 v21, v8

    :goto_5
    const/16 v23, -0x1

    const/16 v24, -0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v15

    invoke-direct/range {v13 .. v24}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    new-instance v16, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    if-nez v1, :cond_9

    move-wide/from16 v23, v10

    goto :goto_6

    :cond_9
    move-wide/from16 v23, v8

    :goto_6
    if-nez v1, :cond_a

    move-wide/from16 v32, v10

    goto :goto_7

    :cond_a
    move-wide/from16 v32, v8

    :goto_7
    const/16 v18, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v13

    invoke-direct/range {v16 .. v33}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    :goto_8
    move-object/from16 v1, v16

    goto :goto_9

    :cond_b
    iget-wide v8, v2, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->b:J

    new-instance v13, Landroidx/media3/common/Player$PositionInfo;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroidx/media3/common/MediaItem;

    iget v1, v2, Landroidx/media3/session/MediaControllerImplBase$PeriodInfo;->a:I

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v19

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v21

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/4 v14, 0x0

    const/16 v17, 0x0

    move/from16 v18, v1

    invoke-direct/range {v13 .. v24}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    new-instance v16, Landroidx/media3/session/SessionPositionInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v23

    const-wide v30, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v32

    const/16 v18, 0x0

    const-wide v21, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide v28, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v17, v13

    invoke-direct/range {v16 .. v33}, Landroidx/media3/session/SessionPositionInfo;-><init>(Landroidx/media3/common/Player$PositionInfo;ZJJJIJJJJ)V

    goto :goto_8

    :goto_9
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    const/4 v4, 0x4

    invoke-static {v2, v3, v13, v1, v4}, Landroidx/media3/session/MediaControllerImplBase;->i1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/common/Timeline;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/session/SessionPositionInfo;I)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget v2, v1, Landroidx/media3/session/PlayerInfo;->A:I

    if-eq v15, v6, :cond_e

    if-eq v2, v12, :cond_e

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v5, :cond_c

    goto :goto_a

    :cond_c
    const/4 v2, 0x2

    goto :goto_b

    :cond_d
    :goto_a
    move v2, v4

    :cond_e
    :goto_b
    iget-object v3, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v3, v3, Landroidx/media3/session/PlayerInfo;->a:Landroidx/media3/common/PlaybackException;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/session/PlayerInfo;->d(ILandroidx/media3/common/PlaybackException;)Landroidx/media3/session/PlayerInfo;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    goto :goto_c

    :cond_f
    move-object v4, v3

    :goto_c
    iget-object v2, v0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object v2, v2, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Landroidx/media3/session/PlayerInfo;->j:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->p()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_e

    :cond_10
    :goto_d
    move-object v5, v3

    goto :goto_f

    :cond_11
    :goto_e
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_d

    :goto_f
    const/4 v3, 0x0

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final v()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-static {p0}, Landroidx/media3/session/MediaControllerImplBase;->Z0(Landroidx/media3/session/PlayerInfo;)I

    move-result p0

    return p0
.end method

.method public final v0()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-object p0, p0, Landroidx/media3/session/SessionPositionInfo;->a:Landroidx/media3/common/Player$PositionInfo;

    iget p0, p0, Landroidx/media3/common/Player$PositionInfo;->i:I

    return p0
.end method

.method public final v1(Z)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget v1, v0, Landroidx/media3/session/PlayerInfo;->z:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    :cond_0
    move v8, v1

    :goto_0
    iget-boolean v2, v0, Landroidx/media3/session/PlayerInfo;->v:Z

    if-ne v2, p1, :cond_1

    if-ne v1, v8, :cond_1

    return-void

    :cond_1
    iget-wide v1, p0, Landroidx/media3/session/MediaControllerImplBase;->H:J

    iget-wide v3, p0, Landroidx/media3/session/MediaControllerImplBase;->I:J

    iget-object v5, p0, Landroidx/media3/session/MediaControllerImplBase;->a:Landroidx/media3/session/MediaController;

    iget-wide v5, v5, Landroidx/media3/session/MediaController;->f:J

    invoke-static/range {v0 .. v6}, Landroidx/media3/session/MediaUtils;->c(Landroidx/media3/session/PlayerInfo;JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->H:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/session/MediaControllerImplBase;->I:J

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    invoke-virtual {v0, v7, v8, p1}, Landroidx/media3/session/PlayerInfo;->b(IIZ)Landroidx/media3/session/PlayerInfo;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final w()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-boolean p0, p0, Landroidx/media3/session/PlayerInfo;->i:Z

    return p0
.end method

.method public final w0(Landroidx/media3/common/MediaItem;)V
    .locals 8

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/u;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/u;-><init>(Landroidx/media3/session/MediaControllerImplBase;Landroidx/media3/common/MediaItem;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final w1(Landroid/view/Surface;II)V
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaControllerImplBase;->d1()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    new-instance v2, Landroidx/media3/session/m;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    invoke-virtual {v3, v2}, Landroidx/media3/session/MediaControllerImplBase;->X0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    return-void

    :cond_1
    move-object v3, p0

    move-object v4, p1

    new-instance p0, Landroidx/media3/session/s;

    const/4 p1, 0x2

    invoke-direct {p0, v3, v4, p1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, p0}, Landroidx/media3/session/MediaControllerImplBase;->X0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    return-void
.end method

.method public final x()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    iget-wide v0, p0, Landroidx/media3/session/SessionPositionInfo;->j:J

    return-wide v0
.end method

.method public final x0(Ljava/util/List;IJ)V
    .locals 8

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroidx/media3/session/q;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/q;-><init>(Landroidx/media3/session/MediaControllerImplBase;Ljava/util/List;IJ)V

    invoke-virtual {v2, v1}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/media3/session/MediaControllerImplBase;->u1(Ljava/util/List;IJZ)V

    return-void
.end method

.method public final x1(Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7

    iget-object v1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iput-object p1, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/session/MediaControllerImplBase;->k1(Landroidx/media3/session/PlayerInfo;Landroidx/media3/session/PlayerInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method public final y()V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->D:J

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->t1(J)V

    return-void
.end method

.method public final y0(I)V
    .locals 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v0, Landroidx/media3/session/r;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/r;-><init>(Landroidx/media3/session/MediaControllerImplBase;II)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->s1(IJ)V

    return-void
.end method

.method public final z()V
    .locals 2

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->e1(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/o;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o;-><init>(Landroidx/media3/session/MediaControllerImplBase;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaControllerImplBase;->W0(Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;)V

    iget-object v0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, v0, Landroidx/media3/session/PlayerInfo;->C:J

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/MediaControllerImplBase;->t1(J)V

    return-void
.end method

.method public final z0()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/session/MediaControllerImplBase;->r:Landroidx/media3/session/PlayerInfo;

    iget-wide v0, p0, Landroidx/media3/session/PlayerInfo;->D:J

    return-wide v0
.end method
