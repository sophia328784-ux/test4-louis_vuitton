.class final Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;,
        Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/source/MediaPeriod;",
        "Landroidx/media3/extractor/ExtractorOutput;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;",
        ">;",
        "Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;",
        "Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final W:Ljava/util/Map;

.field public static final X:Landroidx/media3/common/Format;


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

.field public F:Landroidx/media3/extractor/SeekMap;

.field public G:J

.field public H:Z

.field public I:I

.field public J:J

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:I

.field public O:Z

.field public P:J

.field public Q:J

.field public R:Z

.field public S:I

.field public T:Z

.field public V:Z

.field public final b:Landroid/net/Uri;

.field public final c:Landroidx/media3/datasource/DataSource;

.field public final d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final g:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final h:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

.field public final i:Landroidx/media3/exoplayer/upstream/Allocator;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:Z

.field public final m:I

.field public final n:Landroidx/media3/common/Format;

.field public final o:J

.field public final p:Landroidx/media3/exoplayer/upstream/Loader;

.field public final q:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

.field public final r:Landroidx/media3/common/util/ConditionVariable;

.field public final s:Landroidx/media3/exoplayer/source/c;

.field public final t:Landroidx/media3/exoplayer/source/c;

.field public final u:Landroid/os/Handler;

.field public v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public w:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

.field public x:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

.field public y:[Landroidx/media3/exoplayer/source/SampleQueue;

.field public z:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->W:Ljava/util/Map;

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "icy"

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    const-string v1, "application/x-icy"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    sput-object v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->X:Landroidx/media3/common/Format;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Landroidx/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IZILandroidx/media3/common/Format;JLandroidx/media3/exoplayer/util/ReleasableExecutor;)V
    .locals 1

    move-object/from16 v0, p17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->b:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->c:Landroidx/media3/datasource/DataSource;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->g:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->h:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iput-object p9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->i:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-object p10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->j:Ljava/lang/String;

    int-to-long p1, p11

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->k:J

    iput-boolean p12, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->l:Z

    iput p13, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:I

    iput-object p14, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/common/Format;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:J

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->q:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-wide/from16 p1, p15

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->o:J

    new-instance p1, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {p1}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:Landroidx/media3/common/util/ConditionVariable;

    new-instance p1, Landroidx/media3/exoplayer/source/c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/source/c;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->s:Landroidx/media3/exoplayer/source/c;

    new-instance p1, Landroidx/media3/exoplayer/source/c;

    const/4 p3, 0x2

    invoke-direct {p1, p0, p3}, Landroidx/media3/exoplayer/source/c;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->t:Landroidx/media3/exoplayer/source/c;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p3, p1, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    new-array p3, p1, [Landroidx/media3/exoplayer/source/SampleQueue;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    new-array p1, p1, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    iput p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:I

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final B()V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->o:J

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->V:Z

    if-nez v3, :cond_17

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    if-nez v3, :cond_17

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v7

    if-nez v7, :cond_1

    goto/16 :goto_9

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:Landroidx/media3/common/util/ConditionVariable;

    monitor-enter v3

    :try_start_0
    iput-boolean v5, v3, Landroidx/media3/common/util/ConditionVariable;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    iget-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    const/4 v4, -0x1

    move v7, v4

    move v6, v5

    move v8, v6

    :goto_1
    const/4 v9, 0x1

    if-ge v6, v3, :cond_c

    iget-object v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v10, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v10}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x4

    if-eq v10, v9, :cond_6

    if-eq v10, v11, :cond_5

    if-eq v10, v12, :cond_4

    if-eq v10, v13, :cond_3

    move v14, v5

    goto :goto_2

    :cond_3
    move v14, v11

    goto :goto_2

    :cond_4
    move v14, v9

    goto :goto_2

    :cond_5
    move v14, v13

    goto :goto_2

    :cond_6
    move v14, v12

    :goto_2
    if-eq v7, v9, :cond_9

    if-eq v7, v11, :cond_8

    if-eq v7, v12, :cond_a

    if-eq v7, v13, :cond_7

    move v9, v5

    goto :goto_3

    :cond_7
    move v9, v11

    goto :goto_3

    :cond_8
    move v9, v13

    goto :goto_3

    :cond_9
    move v9, v12

    :cond_a
    :goto_3
    if-le v14, v9, :cond_b

    move v8, v6

    move v7, v10

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_c
    new-array v6, v3, [Landroidx/media3/common/TrackGroup;

    new-array v7, v3, [Z

    move v10, v5

    :goto_4
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v10, v3, :cond_15

    iget-object v13, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v13, v13, v10

    invoke-virtual {v13}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_e

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    goto :goto_5

    :cond_d
    move/from16 v16, v5

    goto :goto_6

    :cond_e
    :goto_5
    move/from16 v16, v9

    :goto_6
    aput-boolean v16, v7, v10

    move/from16 v17, v5

    iget-boolean v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:Z

    or-int v5, v5, v16

    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:Z

    invoke-static {v14}, Landroidx/media3/common/MimeTypes;->m(Ljava/lang/String;)Z

    move-result v5

    cmp-long v11, v1, v11

    if-eqz v11, :cond_f

    if-ne v3, v9, :cond_f

    if-eqz v5, :cond_f

    move v5, v9

    goto :goto_7

    :cond_f
    move/from16 v5, v17

    :goto_7
    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    if-eqz v5, :cond_13

    iget v11, v5, Landroidx/media3/extractor/metadata/icy/IcyHeaders;->a:I

    if-nez v15, :cond_10

    iget-object v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v12, v12, v10

    iget-boolean v12, v12, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->b:Z

    if-eqz v12, :cond_12

    :cond_10
    iget-object v12, v13, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-nez v12, :cond_11

    new-instance v12, Landroidx/media3/common/Metadata;

    new-array v14, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v14, v17

    invoke-direct {v12, v14}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_8

    :cond_11
    new-array v14, v9, [Landroidx/media3/common/Metadata$Entry;

    aput-object v5, v14, v17

    invoke-virtual {v12, v14}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v12

    :goto_8
    invoke-virtual {v13}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput-object v12, v5, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v13, Landroidx/media3/common/Format;

    invoke-direct {v13, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_12
    if-eqz v15, :cond_13

    iget v5, v13, Landroidx/media3/common/Format;->h:I

    if-ne v5, v4, :cond_13

    iget v5, v13, Landroidx/media3/common/Format;->i:I

    if-ne v5, v4, :cond_13

    if-eq v11, v4, :cond_13

    invoke-virtual {v13}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput v11, v5, Landroidx/media3/common/Format$Builder;->h:I

    new-instance v13, Landroidx/media3/common/Format;

    invoke-direct {v13, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :cond_13
    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v5, v13}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->c(Landroidx/media3/common/Format;)I

    move-result v5

    invoke-virtual {v13}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iput v5, v11, Landroidx/media3/common/Format$Builder;->O:I

    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    if-eq v10, v8, :cond_14

    invoke-virtual {v5}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v11, Landroidx/media3/common/Format;

    invoke-direct {v11, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object v5, v11

    :cond_14
    new-instance v11, Landroidx/media3/common/TrackGroup;

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    filled-new-array {v5}, [Landroidx/media3/common/Format;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v11, v6, v10

    iget-boolean v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    iget-boolean v5, v5, Landroidx/media3/common/Format;->u:Z

    or-int/2addr v5, v11

    iput-boolean v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v5, v5, v10

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:J

    invoke-virtual {v5, v11, v12}, Landroidx/media3/exoplayer/source/SampleQueue;->C(J)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v17

    goto/16 :goto_4

    :cond_15
    new-instance v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    new-instance v4, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {v4, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    invoke-direct {v3, v4, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;-><init>(Landroidx/media3/exoplayer/source/TrackGroupArray;[Z)V

    iput-object v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:Z

    if-eqz v3, :cond_16

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    cmp-long v3, v3, v11

    if-nez v3, :cond_16

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    new-instance v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$1;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V

    iput-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    :cond_16
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->h:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    invoke-interface {v1, v2, v3, v4, v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->i(JLandroidx/media3/extractor/SeekMap;Z)V

    iput-boolean v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->j(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_17
    :goto_9
    return-void
.end method

.method public final C(I)V
    .locals 13

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->d:[Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->a:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v0, v0, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v6, v0, v2

    iget-object v0, v6, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v7, v2

    new-instance v3, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    new-instance v0, Lp3;

    const/16 v2, 0x11

    invoke-direct {v0, p0, v3, v2}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    const/4 p0, 0x1

    aput-boolean p0, v1, p1

    :cond_0
    return-void
.end method

.method public final D(I)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->u(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    iput v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final E(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Z

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Extractor added new track (id="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    new-instance p0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p0

    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/source/SampleQueue;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->g:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->i:Landroidx/media3/exoplayer/upstream/Allocator;

    invoke-direct {v1, v4, v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    new-instance v2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;-><init>(Landroidx/media3/exoplayer/source/SampleQueue;)V

    iput-object p0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    aput-object p1, v3, v0

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iput-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/exoplayer/source/SampleQueue;

    aput-object v1, p1, v0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    aput-object v2, p1, v0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    return-object v2
.end method

.method public final F(Landroidx/media3/extractor/SeekMap;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->w:Landroidx/media3/extractor/metadata/icy/IcyHeaders;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p1}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->O:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    :cond_2
    iput v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:I

    iget-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->h:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    invoke-interface {v1, v2, v3, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->i(JLandroidx/media3/extractor/SeekMap;Z)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B()V

    return-void
.end method

.method public final G()V
    .locals 9

    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->q:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:Landroidx/media3/common/util/ConditionVariable;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->b:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->c:Landroidx/media3/datasource/DataSource;

    move-object v5, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/common/util/ConditionVariable;)V

    iget-boolean p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    :goto_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v4

    const/4 v6, 0x1

    if-eqz p0, :cond_1

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    cmp-long p0, v7, v2

    if-lez p0, :cond_1

    iput-boolean v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    iput-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    return-void

    :cond_1
    iget-object p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    invoke-interface {p0, v2, v3}, Landroidx/media3/extractor/SeekMap;->c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    iget-wide v2, p0, Landroidx/media3/extractor/SeekPoint;->b:J

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    iget-object p0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    iput-wide v2, p0, Landroidx/media3/extractor/PositionHolder;->a:J

    iput-wide v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    iput-boolean v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->m:Z

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v2

    :goto_1
    if-ge p0, v3, :cond_2

    aget-object v6, v2, p0

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    iput-wide v7, v6, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    iput-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    :cond_3
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y()I

    move-result p0

    iput p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    iget-object p0, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:I

    invoke-interface {p0, v2}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result p0

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v2, v0, v1, p0}, Landroidx/media3/exoplayer/upstream/Loader;->e(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    return-void
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v0, p1, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/common/Format;

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v0}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    move-result v0

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    iget-object v7, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v8, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v13, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v4, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v10

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v12

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v13}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    new-instance v2, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v14, p6

    move/from16 v5, p7

    invoke-direct {v2, v3, v4, v14, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v4, v2}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v4, v6

    const/4 v9, 0x1

    if-nez v2, :cond_0

    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y()I

    move-result v2

    iget v10, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    if-le v2, v10, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    :goto_0
    iget-boolean v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->O:Z

    if-nez v11, :cond_5

    iget-object v11, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v11

    cmp-long v6, v11, v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H()Z

    move-result v2

    if-nez v2, :cond_3

    iput-boolean v9, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->e:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_4

    :cond_3
    iget-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    iput v8, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v11, v2

    move v12, v8

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v2, v12

    invoke-virtual {v13, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->g:Landroidx/media3/extractor/PositionHolder;

    iput-wide v6, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    iput-wide v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    iput-boolean v9, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->i:Z

    iput-boolean v8, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->m:Z

    goto :goto_3

    :cond_5
    :goto_2
    iput v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    :goto_3
    new-instance v2, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v2, v10, v4, v5}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    :goto_4
    iget v4, v2, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->a:I

    if-eqz v4, :cond_6

    if-ne v4, v9, :cond_7

    :cond_6
    move v8, v9

    :cond_7
    xor-int/lit8 v15, v8, 0x1

    iget-wide v10, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    iget-wide v12, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move-object v3, v0

    invoke-virtual/range {v3 .. v15}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-object v2
.end method

.method public final c()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 8

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/SeekMap;->c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p0

    iget-object v0, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->a:Landroidx/media3/extractor/SeekPoint;

    iget-wide v4, v0, Landroidx/media3/extractor/SeekPoint;->a:J

    iget-object p0, p0, Landroidx/media3/extractor/SeekMap$SeekPoints;->b:Landroidx/media3/extractor/SeekPoint;

    iget-wide v6, p0, Landroidx/media3/extractor/SeekPoint;->a:J

    move-wide v2, p1

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Landroidx/media3/exoplayer/SeekParameters;->a(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final e(J)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    return-wide p1

    :cond_2
    iget v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:I

    const/4 v4, 0x7

    iget-object v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    if-eq v3, v4, :cond_7

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    if-nez v3, :cond_3

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_a

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v6, v6, v4

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    aget-object v7, v7, v4

    iget-object v7, v7, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    if-ne v7, v8, :cond_6

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:Z

    if-eqz v7, :cond_5

    iget v7, v6, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->A(I)Z

    move-result v6

    goto :goto_3

    :cond_5
    iget-boolean v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    invoke-virtual {v6, p1, p2, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->B(JZ)Z

    move-result v6

    :goto_3
    if-nez v6, :cond_6

    aget-boolean v6, v0, v4

    if-nez v6, :cond_7

    iget-boolean v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:Z

    if-nez v6, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p0

    :goto_6
    if-ge v1, v0, :cond_8

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    return-wide p1

    :cond_9
    const/4 v0, 0x0

    iput-object v0, v5, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p0

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    return-wide p1
.end method

.method public final f([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 9

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->a:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v7, p1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    check-cast v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    iget v5, v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;->a:I

    aget-boolean v7, v0, v5

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    sub-int/2addr v7, v6

    iput v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Z

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_3
    move p2, v3

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:Z

    if-nez p2, :cond_3

    goto :goto_1

    :goto_2
    move v2, v3

    :goto_3
    array-length v4, p1

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->l:Z

    if-ge v2, v4, :cond_a

    aget-object v4, p3, v2

    if-nez v4, :cond_9

    aget-object v4, p1, v2

    if-eqz v4, :cond_9

    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v7

    if-ne v7, v6, :cond_5

    move v7, v6

    goto :goto_4

    :cond_5
    move v7, v3

    :goto_4
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-interface {v4, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->f(I)I

    move-result v7

    if-nez v7, :cond_6

    move v7, v6

    goto :goto_5

    :cond_6
    move v7, v3

    :goto_5
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->m()Landroidx/media3/common/TrackGroup;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/media3/exoplayer/source/TrackGroupArray;->b(Landroidx/media3/common/TrackGroup;)I

    move-result v7

    aget-boolean v8, v0, v7

    xor-int/2addr v8, v6

    invoke-static {v8}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    add-int/2addr v8, v6

    iput v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    aput-boolean v6, v0, v7

    iget-boolean v8, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    invoke-interface {v4}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->s()Landroidx/media3/common/Format;

    move-result-object v4

    iget-boolean v4, v4, Landroidx/media3/common/Format;->u:Z

    or-int/2addr v4, v8

    iput-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    new-instance v4, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;

    invoke-direct {v4, p0, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$SampleStreamImpl;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;I)V

    aput-object v4, p3, v2

    aput-boolean v6, p4, v2

    if-eqz v5, :cond_7

    iget-boolean v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Z

    or-int/2addr p2, v4

    goto :goto_6

    :cond_7
    if-nez p2, :cond_9

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object p2, p2, v7

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, p5, p6, v6}, Landroidx/media3/exoplayer/source/SampleQueue;->B(JZ)Z

    move-result p2

    if-nez p2, :cond_8

    move p2, v6

    goto :goto_6

    :cond_8
    move p2, v3

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-eqz v5, :cond_d

    move p1, v3

    :goto_7
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x:[Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;

    array-length v2, v1

    if-ge p1, v2, :cond_d

    aget-object v1, v1, p1

    aget-boolean v2, v0, p1

    iget-object v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->d:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v2, :cond_b

    sget-object v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->PASS_THROUGH:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    goto :goto_8

    :cond_b
    sget-object v5, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;->DISCARD_AFTER_NEXT_SAMPLE_METADATA:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput$OutputMode;

    :goto_8
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-nez v2, :cond_c

    iget-object v1, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ControlledTrackOutput;->b:Landroidx/media3/exoplayer/source/SampleQueue;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_d
    iget p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    if-nez p1, :cond_10

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->R:Z

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result p2

    if-eqz p2, :cond_f

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length p3, p2

    :goto_9
    if-ge v3, p3, :cond_e

    aget-object p4, p2, v3

    invoke-virtual {p4}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    goto :goto_c

    :cond_f
    iput-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length p2, p1

    move p3, v3

    :goto_a
    if-ge p3, p2, :cond_12

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_a

    :cond_10
    if-eqz p2, :cond_12

    invoke-virtual {p0, p5, p6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e(J)J

    move-result-wide p5

    :goto_b
    array-length p1, p3

    if-ge v3, p1, :cond_12

    aget-object p1, p3, v3

    if-eqz p1, :cond_11

    aput-boolean v6, p4, v3

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->K:Z

    return-wide p5
.end method

.method public final g()J
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->M:Z

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y()I

    move-result v0

    iget v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->S:I

    if-le v0, v2, :cond_2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->L:Z

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    return-wide v0

    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final h()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    iget-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v4, :cond_0

    iget-object v5, v3, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v4, v5}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->q:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;->release()V

    return-void
.end method

.method public final i(J)J
    .locals 3

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->C(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide p1
.end method

.method public final j(Landroidx/media3/extractor/SeekMap;)V
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/source/d;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/source/d;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;Landroidx/media3/extractor/SeekMap;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->I:I

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/upstream/Loader;->c(I)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    if-nez p6, :cond_0

    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    move-wide/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    move-object v6, v3

    goto :goto_0

    :cond_0
    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    iget-object v8, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v9, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v14, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v4 .. v15}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v6, v4

    :goto_0
    iget-wide v12, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    iget-wide v14, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    iget-object v5, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v16, p6

    invoke-virtual/range {v5 .. v16}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->p:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:Landroidx/media3/common/util/ConditionVariable;

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/common/util/ConditionVariable;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->s:Landroidx/media3/exoplayer/source/c;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final o(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 5

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n:Landroidx/media3/common/Format;

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->m:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    new-instance p1, Landroidx/media3/extractor/IndexSeekMap;

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    new-array v0, v0, [J

    aput-wide v3, v0, v2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, v1, v0, v2, v3}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F(Landroidx/media3/extractor/SeekMap;)V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->n()V

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->r:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {p1}, Landroidx/media3/common/util/ConditionVariable;->d()Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G()V

    return-void
.end method

.method public final p()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->a:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method

.method public final q(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-wide v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    :goto_0
    iput-wide v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->H:Z

    iget-object v7, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->h:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;

    invoke-interface {v7, v4, v5, v2, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;->i(JLandroidx/media3/extractor/SeekMap;Z)V

    :cond_1
    iget-object v2, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    new-instance v4, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v5, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    iget-object v7, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    iget-object v8, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v9, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v14, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v4 .. v15}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v2, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    move-object v5, v4

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v14}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    iget-object v1, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final r(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1

    new-instance p2, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;-><init>(IZ)V

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E(Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackId;)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method

.method public final s()J
    .locals 12

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->Q:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v10, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_0
    iget-boolean v10, v9, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v9

    if-nez v10, :cond_2

    iget-object v9, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v9, v9, v6

    monitor-enter v9

    :try_start_1
    iget-wide v10, v9, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->z(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->P:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->u:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->s:Landroidx/media3/exoplayer/source/c;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final u(JZ)V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->D:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p3, v4, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->i(ZZJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final v(J)V
    .locals 5

    iget p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->A()Z

    move-result p1

    if-nez p1, :cond_5

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->J:J

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->x()V

    move p1, p2

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v2

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    iget-object v4, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_3

    iget-object v3, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->b:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->C:Z

    if-nez v3, :cond_3

    :cond_1
    aget-object v2, v2, p1

    monitor-enter v2

    :try_start_0
    iget v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, p2

    :goto_1
    monitor-exit v2

    and-int/2addr v1, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    move p2, v1

    :goto_3
    if-eqz p2, :cond_5

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->T:Z

    :cond_5
    return-void
.end method

.method public final w(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 13

    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->c:Landroidx/media3/datasource/StatsDataSource;

    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->a:J

    iget-object v4, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->k:Landroidx/media3/datasource/DataSpec;

    iget-object v5, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v6, v0, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v11, v0, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->e:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v8, p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$ExtractingLoadable;->j:J

    iget-wide v10, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->G:J

    move-object v2, v1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->f:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v11}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->N:I

    if-lez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->v:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->B:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->F:Landroidx/media3/extractor/SeekMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final y()I
    .locals 5

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    iget v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget v3, v3, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final z(Z)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->E:Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$TrackState;->c:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->y:[Landroidx/media3/exoplayer/source/SampleQueue;

    aget-object v3, v3, v2

    monitor-enter v3

    :try_start_0
    iget-wide v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-wide v0
.end method
