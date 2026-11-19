.class public Landroidx/media3/exoplayer/DefaultLoadControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/LoadControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;,
        Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;,
        Landroidx/media3/exoplayer/DefaultLoadControl$Builder;
    }
.end annotation


# static fields
.field public static final s:Lcom/google/common/collect/ImmutableList;


# instance fields
.field public final a:Landroidx/media3/common/Timeline$Window;

.field public final b:Landroidx/media3/common/Timeline$Period;

.field public final c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:I

.field public final m:Z

.field public final n:J

.field public final o:Z

.field public final p:Lcom/google/common/collect/ImmutableMap;

.field public final q:Ljava/util/concurrent/ConcurrentHashMap;

.field public r:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    sget-object v0, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    const-string v1, "file"

    const-string v2, "content"

    const-string v3, "data"

    const-string v4, "android.resource"

    const-string v5, "rawresource"

    const-string v6, "asset"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/google/common/collect/ObjectArrays;->a(I[Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableList;->q(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/DefaultLoadControl;->s:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 189
    new-instance v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v0, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    const/4 v13, 0x0

    .line 190
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v14

    const v2, 0xc350

    const/16 v3, 0x3e8

    const v4, 0xc350

    const v5, 0xc350

    const/16 v6, 0x3e8

    const/16 v7, 0x3e8

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v0, p0

    .line 191
    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/DefaultLoadControl;-><init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZIZLjava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/upstream/DefaultAllocator;IIIIIIIIIZIZLjava/util/Map;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p12

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x0

    const-string v11, "bufferForPlaybackMs"

    const-string v12, "0"

    invoke-static {v5, v10, v11, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v13, "bufferForPlaybackForLocalPlaybackMs"

    invoke-static {v6, v10, v13, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v14, "bufferForPlaybackAfterRebufferMs"

    invoke-static {v7, v10, v14, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v15, "bufferForPlaybackAfterRebufferForLocalPlaybackMs"

    invoke-static {v8, v10, v15, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "minBufferMs"

    invoke-static {v1, v5, v10, v11}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v11, "minBufferForLocalPlaybackMs"

    invoke-static {v2, v6, v11, v13}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v7, v10, v14}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v8, v11, v15}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v13, "maxBufferMs"

    invoke-static {v3, v1, v13, v10}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "maxBufferForLocalPlaybackMs"

    invoke-static {v4, v2, v10, v11}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    const-string v10, "backBufferDurationMs"

    const/4 v11, 0x0

    invoke-static {v9, v11, v10, v12}, Landroidx/media3/exoplayer/DefaultLoadControl;->k(IILjava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->a:Landroidx/media3/common/Timeline$Window;

    new-instance v10, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v10}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->b:Landroidx/media3/common/Timeline$Period;

    move-object/from16 v10, p1

    iput-object v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    int-to-long v10, v1

    invoke-static {v10, v11}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v10

    iput-wide v10, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->d:J

    int-to-long v1, v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->e:J

    int-to-long v1, v3

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->f:J

    int-to-long v1, v4

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->g:J

    int-to-long v1, v5

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->h:J

    int-to-long v1, v6

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->i:J

    int-to-long v1, v7

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->j:J

    int-to-long v1, v8

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->k:J

    move/from16 v1, p10

    iput v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->l:I

    move/from16 v1, p11

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->m:Z

    int-to-long v1, v9

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->n:J

    move/from16 v1, p13

    iput-boolean v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->o:Z

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {p14 .. p14}, Lcom/google/common/collect/ImmutableMap;->c(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Lcom/google/common/collect/ImmutableMap;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl;->r:J

    return-void
.end method

.method public static k(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "%s cannot be less than %s"

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/base/Preconditions;->i(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Comparable;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->l(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v0

    iget-object v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->a:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-wide v2, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->d:J

    iget v4, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->e:F

    invoke-static {v4, v2, v3}, Landroidx/media3/common/util/Util;->D(FJ)J

    move-result-wide v2

    iget-boolean v4, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->f:Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->k:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->j:J

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->i:J

    goto :goto_0

    :cond_2
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->h:J

    :goto_0
    iget-wide v6, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->g:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v6, v8

    if-eqz p1, :cond_3

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :cond_3
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_6

    cmp-long p1, v2, v4

    if-gez p1, :cond_6

    const/4 p1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->m:Z

    goto :goto_1

    :cond_4
    move v0, p1

    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget v2, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget v0, v0, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    mul-int/2addr v2, v0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    if-lt v2, p0, :cond_5

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    return p1

    :cond_6
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->o:Z

    return p0
.end method

.method public final c(Landroidx/media3/exoplayer/LoadControl$Parameters;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)V
    .locals 8

    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->a:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Lcom/google/common/collect/ImmutableMap;

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/PlayerId;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->l:I

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->l(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result p1

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    const/high16 v5, 0xc80000

    if-ge v3, v1, :cond_3

    aget-object v6, p2, v3

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v6

    iget v6, v6, Landroidx/media3/common/TrackGroup;->c:I

    const/high16 v7, 0x20000

    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return-void

    :pswitch_0
    move v5, v7

    goto :goto_2

    :pswitch_1
    const/high16 v5, 0x1900000

    goto :goto_2

    :pswitch_2
    if-eqz p1, :cond_1

    const/high16 v5, 0x12c0000

    goto :goto_2

    :cond_1
    const/high16 v5, 0x7d00000

    goto :goto_2

    :pswitch_3
    const/high16 v5, 0x89a0000

    goto :goto_2

    :pswitch_4
    move v5, v2

    :goto_2
    :pswitch_5
    add-int/2addr v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/high16 p1, 0xc880000

    invoke-static {v4, v5, p1}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v1

    :cond_4
    iput v1, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->m()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->n:J

    return-wide v0
.end method

.method public final e(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->r:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    const-string v3, "Players that share the same LoadControl must share the same playback thread. See ExoPlayer.Builder.setPlaybackLooper(Looper)."

    invoke-static {v3, v2}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->r:J

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-direct {v1}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    add-int/2addr v2, v5

    iput v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->p:Lcom/google/common/collect/ImmutableMap;

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/PlayerId;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_3

    :cond_3
    iget p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->l:I

    :goto_3
    if-eq p0, v1, :cond_4

    goto :goto_4

    :cond_4
    const/high16 p0, 0xc80000

    :goto_4
    iput p0, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    iput-boolean v6, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    return-void
.end method

.method public final f(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->m()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->r:J

    :cond_1
    return-void
.end method

.method public final g(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 14

    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->a:Landroidx/media3/exoplayer/analytics/PlayerId;

    iget-wide v1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->d:J

    iget-object v3, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v4

    :try_start_0
    iget v5, v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    iget v4, v4, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->b:I

    mul-int/2addr v5, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lt v5, v4, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    sget-object v5, Landroidx/media3/exoplayer/analytics/PlayerId;->c:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    xor-int/lit8 p0, v4, 0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl;->l(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->e:J

    goto :goto_1

    :cond_2
    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->d:J

    :goto_1
    if-eqz v0, :cond_3

    iget-wide v10, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->g:J

    goto :goto_2

    :cond_3
    iget-wide v10, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->f:J

    :goto_2
    iget p1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->e:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    invoke-static {p1, v8, v9}, Landroidx/media3/common/util/Util;->A(FJ)J

    move-result-wide v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    :cond_4
    const-wide/32 v12, 0x7a120

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long p1, v1, v8

    if-gez p1, :cond_8

    if-eqz v0, :cond_5

    iget-boolean p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->m:Z

    goto :goto_3

    :cond_5
    move p0, v6

    :goto_3
    if-nez p0, :cond_6

    if-nez v4, :cond_7

    :cond_6
    move v6, v7

    :cond_7
    iput-boolean v6, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    if-nez v6, :cond_a

    cmp-long p0, v1, v12

    if-gez p0, :cond_a

    const-string p0, "Target buffer size reached with less than 500ms of buffered media data."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    cmp-long p0, v1, v10

    if-gez p0, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    iput-boolean v6, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    :cond_a
    :goto_4
    iget-boolean p0, v3, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final h()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final i(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->a:I

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultLoadControl;->m()V

    :cond_0
    return-void
.end method

.method public final j(Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/upstream/Allocator;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerIdFilteringAllocatorImpl;-><init>(Landroidx/media3/exoplayer/DefaultLoadControl;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-object v0
.end method

.method public final l(Landroidx/media3/exoplayer/LoadControl$Parameters;)Z
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->b:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/LoadControl$Parameters;->c:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->a:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->b:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->g(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->c:I

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->a:Landroidx/media3/common/Timeline$Window;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, p0, v1, v2}, Landroidx/media3/common/Timeline;->m(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/Timeline$Window;->c:Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->b:Landroidx/media3/common/MediaItem$LocalConfiguration;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/MediaItem$LocalConfiguration;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroidx/media3/exoplayer/DefaultLoadControl;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->c:Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    monitor-enter v1

    :try_start_0
    iget-boolean p0, v1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->a:Z

    if-eqz p0, :cond_0

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultLoadControl;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;

    iget v0, v0, Landroidx/media3/exoplayer/DefaultLoadControl$PlayerLoadingState;->c:I

    add-int/2addr v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;->f(I)V

    return-void
.end method
