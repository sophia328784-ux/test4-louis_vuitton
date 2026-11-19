.class final Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$Callback;
.implements Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;
.implements Landroidx/media3/exoplayer/source/SequenceableLoader;
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;,
        Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;,
        Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/media3/exoplayer/upstream/Loader$Callback<",
        "Landroidx/media3/exoplayer/source/chunk/Chunk;",
        ">;",
        "Landroidx/media3/exoplayer/upstream/Loader$ReleaseCallback;",
        "Landroidx/media3/exoplayer/source/SequenceableLoader;",
        "Landroidx/media3/extractor/ExtractorOutput;",
        "Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field public static final t0:Ljava/util/Set;


# instance fields
.field public A:Landroidx/media3/extractor/TrackOutput;

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:I

.field public G:Landroidx/media3/common/Format;

.field public H:Landroidx/media3/common/Format;

.field public I:Z

.field public J:Landroidx/media3/exoplayer/source/TrackGroupArray;

.field public K:Ljava/util/Set;

.field public L:[I

.field public M:I

.field public N:Z

.field public O:[Z

.field public P:[Z

.field public Q:J

.field public R:J

.field public S:Z

.field public T:Z

.field public V:Z

.field public W:J

.field public X:Z

.field public Y:J

.field public Z:Landroidx/media3/common/DrmInitData;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

.field public final e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

.field public final f:Landroidx/media3/exoplayer/upstream/Allocator;

.field public final g:Landroidx/media3/common/Format;

.field public final h:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public h0:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

.field public final i:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public final j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field public final k:Landroidx/media3/exoplayer/upstream/Loader;

.field public final l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final m:I

.field public final n:Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

.field public final o:Ljava/util/ArrayList;

.field public final p:Ljava/util/List;

.field public final q:Landroidx/media3/exoplayer/hls/b;

.field public final r:Landroidx/media3/exoplayer/hls/b;

.field public final s:Landroid/os/Handler;

.field public final t:Ljava/util/ArrayList;

.field public final u:Ljava/util/Map;

.field public v:Landroidx/media3/exoplayer/source/chunk/Chunk;

.field public w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

.field public x:[I

.field public final y:Ljava/util/HashSet;

.field public final z:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t0:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;Landroidx/media3/exoplayer/hls/HlsChunkSource;Ljava/util/Map;Landroidx/media3/exoplayer/upstream/Allocator;JLandroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;ILandroidx/media3/exoplayer/util/ReleasableExecutor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;",
            "Landroidx/media3/exoplayer/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/common/DrmInitData;",
            ">;",
            "Landroidx/media3/exoplayer/upstream/Allocator;",
            "J",
            "Landroidx/media3/common/Format;",
            "Landroidx/media3/exoplayer/drm/DrmSessionManager;",
            "Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;",
            "Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;",
            "Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;",
            "I",
            "Landroidx/media3/exoplayer/util/ReleasableExecutor;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->b:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    iput-object p3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    iput-object p4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iput-object p5, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->u:Ljava/util/Map;

    iput-object p6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->f:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-object p9, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->g:Landroidx/media3/common/Format;

    iput-object p10, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->h:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p11, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->i:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p12, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p13, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput p14, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->m:I

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Landroidx/media3/exoplayer/util/ReleasableExecutor;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/exoplayer/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/upstream/Loader;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    new-instance p1, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->n:Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x:[I

    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t0:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->y:Ljava/util/HashSet;

    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->z:Landroid/util/SparseIntArray;

    new-array p2, p1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    new-array p2, p1, [Z

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P:[Z

    new-array p2, p1, [Z

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->p:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t:Ljava/util/ArrayList;

    new-instance p2, Landroidx/media3/exoplayer/hls/b;

    invoke-direct {p2, p0, p1}, Landroidx/media3/exoplayer/hls/b;-><init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->q:Landroidx/media3/exoplayer/hls/b;

    new-instance p1, Landroidx/media3/exoplayer/hls/b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/hls/b;-><init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->r:Landroidx/media3/exoplayer/hls/b;

    const/4 p1, 0x0

    invoke-static {p1}, Landroidx/media3/common/util/Util;->r(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->s:Landroid/os/Handler;

    iput-wide p7, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide p7, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->W:J

    return-void
.end method

.method public static B(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->v(ILjava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2, v0}, Landroidx/media3/common/util/Util;->w(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroidx/media3/common/MimeTypes;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v5, p0, Landroidx/media3/common/Format;->a:Ljava/lang/String;

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v5, p0, Landroidx/media3/common/Format;->b:Ljava/lang/String;

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->b:Ljava/lang/String;

    iget-object v5, p0, Landroidx/media3/common/Format;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v5, p0, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iput-object v5, v3, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget v5, p0, Landroidx/media3/common/Format;->e:I

    iput v5, v3, Landroidx/media3/common/Format$Builder;->e:I

    iget v5, p0, Landroidx/media3/common/Format;->f:I

    iput v5, v3, Landroidx/media3/common/Format$Builder;->f:I

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    iget v6, p0, Landroidx/media3/common/Format;->h:I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    iput v6, v3, Landroidx/media3/common/Format$Builder;->h:I

    if-eqz p2, :cond_3

    iget p2, p0, Landroidx/media3/common/Format;->i:I

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    iput p2, v3, Landroidx/media3/common/Format$Builder;->i:I

    iput-object v0, v3, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    const/4 p2, 0x2

    if-ne v2, p2, :cond_4

    iget p2, p0, Landroidx/media3/common/Format;->v:I

    iput p2, v3, Landroidx/media3/common/Format$Builder;->u:I

    iget p2, p0, Landroidx/media3/common/Format;->w:I

    iput p2, v3, Landroidx/media3/common/Format$Builder;->v:I

    iget p2, p0, Landroidx/media3/common/Format;->z:F

    iput p2, v3, Landroidx/media3/common/Format$Builder;->y:F

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    :cond_5
    iget p2, p0, Landroidx/media3/common/Format;->G:I

    if-eq p2, v5, :cond_6

    if-ne v2, v4, :cond_6

    iput p2, v3, Landroidx/media3/common/Format$Builder;->F:I

    :cond_6
    iget-object p0, p0, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-eqz p0, :cond_8

    iget-object p1, p1, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p0

    :cond_7
    iput-object p0, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    :cond_8
    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0
.end method

.method public static E(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static z(II)Landroidx/media3/extractor/DiscardingTrackOutput;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmapped track with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    new-instance p0, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p0}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final A([Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget v3, v2, Landroidx/media3/common/TrackGroup;->a:I

    new-array v3, v3, [Landroidx/media3/common/Format;

    move v4, v0

    :goto_1
    iget v5, v2, Landroidx/media3/common/TrackGroup;->a:I

    if-ge v4, v5, :cond_0

    iget-object v5, v2, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v5, v5, v4

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->h:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v6, v5}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->c(Landroidx/media3/common/Format;)I

    move-result v6

    invoke-virtual {v5}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput v6, v5, Landroidx/media3/common/Format$Builder;->O:I

    new-instance v6, Landroidx/media3/common/Format;

    invoke-direct {v6, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v4, Landroidx/media3/common/TrackGroup;

    iget-object v2, v2, Landroidx/media3/common/TrackGroup;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/TrackGroupArray;-><init>([Landroidx/media3/common/TrackGroup;)V

    return-object p0
.end method

.method public final C(I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    move/from16 v1, p1

    :goto_0
    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->y(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_1
    if-ne v1, v5, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v4

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-ltz v1, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_6

    if-gt v1, v7, :cond_6

    if-eq v1, v7, :cond_3

    invoke-virtual {v3, v1, v7}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_3
    const/4 v1, 0x0

    move v7, v1

    :goto_2
    iget-object v8, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v8, v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->e(I)I

    move-result v8

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v9, v9, v7

    invoke-virtual {v9, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->l(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iput-boolean v2, v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->K:Z

    :goto_3
    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    iget v9, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->B:I

    iget-wide v1, v6, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v13

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v15

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v16}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ly81;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v1, v7, v3}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a(Landroidx/media3/common/util/Consumer;)V

    return-void

    :cond_6
    invoke-static {}, Lct0;->c()V

    return-void
.end method

.method public final D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    return-object p0
.end method

.method public final F()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G()V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->I:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    if-nez v1, :cond_1a

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-nez v1, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v5

    if-nez v5, :cond_1

    goto/16 :goto_12

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    const/4 v2, 0x3

    const/4 v4, -0x1

    if-eqz v1, :cond_a

    iget v1, v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->a:I

    new-array v5, v1, [I

    iput-object v5, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_9

    move v5, v3

    :goto_2
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v7, v6

    if-ge v5, v7, :cond_8

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v7, v4}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v7, v7, v3

    iget-object v8, v6, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v9, v7, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v2, :cond_3

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    :cond_3
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    iget v6, v6, Landroidx/media3/common/Format;->L:I

    iget v7, v7, Landroidx/media3/common/Format;->L:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    aput v5, v6, v4

    goto :goto_5

    :cond_7
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/HlsSampleStream;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/HlsSampleStream;->d()V

    goto :goto_6

    :cond_a
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    const/4 v5, -0x2

    move v6, v3

    move v8, v4

    move v7, v5

    :goto_7
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-ge v6, v1, :cond_10

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v11, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    move v9, v10

    goto :goto_8

    :cond_b
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v11}, Landroidx/media3/common/MimeTypes;->n(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v9, v2

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    invoke-static {v9}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E(I)I

    move-result v10

    invoke-static {v7}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E(I)I

    move-result v11

    if-le v10, v11, :cond_e

    move v8, v6

    move v7, v9

    goto :goto_9

    :cond_e
    if-ne v9, v7, :cond_f

    if-eq v8, v4, :cond_f

    move v8, v4

    :cond_f
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_10
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    iget v5, v2, Landroidx/media3/common/TrackGroup;->a:I

    iput v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->M:I

    new-array v4, v1, [I

    iput-object v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    iget-object v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->L:[I

    aput v4, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    new-array v4, v1, [Landroidx/media3/common/TrackGroup;

    move v6, v3

    :goto_b
    if-ge v6, v1, :cond_18

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroidx/media3/exoplayer/source/SampleQueue;->t()Landroidx/media3/common/Format;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->g:Landroidx/media3/common/Format;

    iget-object v13, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->b:Ljava/lang/String;

    if-ne v6, v8, :cond_15

    new-array v14, v5, [Landroidx/media3/common/Format;

    move v15, v3

    :goto_c
    if-ge v15, v5, :cond_14

    iget-object v3, v2, Landroidx/media3/common/TrackGroup;->d:[Landroidx/media3/common/Format;

    aget-object v3, v3, v15

    if-ne v7, v9, :cond_12

    if-eqz v12, :cond_12

    invoke-virtual {v3, v12}, Landroidx/media3/common/Format;->d(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v3

    :cond_12
    if-ne v5, v9, :cond_13

    invoke-virtual {v11, v3}, Landroidx/media3/common/Format;->d(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v3

    goto :goto_d

    :cond_13
    invoke-static {v3, v11, v9}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->B(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v3

    :goto_d
    aput-object v3, v14, v15

    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_14
    new-instance v3, Landroidx/media3/common/TrackGroup;

    invoke-direct {v3, v13, v14}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v3, v4, v6

    iput v6, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->M:I

    const/4 v14, 0x0

    goto :goto_10

    :cond_15
    if-ne v7, v10, :cond_16

    iget-object v3, v11, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_e

    :cond_16
    const/4 v12, 0x0

    :goto_e
    const-string v3, ":muxed:"

    invoke-static {v13, v3}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v6, v8, :cond_17

    move v14, v6

    goto :goto_f

    :cond_17
    add-int/lit8 v14, v6, -0x1

    :goto_f
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    invoke-static {v12, v11, v14}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->B(Landroidx/media3/common/Format;Landroidx/media3/common/Format;Z)Landroidx/media3/common/Format;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v11

    iput-object v13, v11, Landroidx/media3/common/Format$Builder;->l:Ljava/lang/String;

    new-instance v12, Landroidx/media3/common/Format;

    invoke-direct {v12, v11}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    new-instance v11, Landroidx/media3/common/TrackGroup;

    filled-new-array {v12}, [Landroidx/media3/common/Format;

    move-result-object v12

    invoke-direct {v11, v3, v12}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    aput-object v11, v4, v6

    :goto_10
    add-int/lit8 v6, v6, 0x1

    move v3, v14

    goto :goto_b

    :cond_18
    move v14, v3

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->A([Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K:Ljava/util/Set;

    if-nez v1, :cond_19

    move v3, v9

    goto :goto_11

    :cond_19
    move v3, v14

    :goto_11
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K:Ljava/util/Set;

    iput-boolean v9, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->b()V

    :cond_1a
    :goto_12
    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/upstream/Loader;->c(I)V

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->q:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->r:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->q:Landroid/net/Uri;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->d(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    throw v0
.end method

.method public final varargs I([Landroidx/media3/common/TrackGroup;[I)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->A([Landroidx/media3/common/TrackGroup;)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K:Ljava/util/Set;

    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K:Ljava/util/Set;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/source/TrackGroupArray;->a(I)Landroidx/media3/common/TrackGroup;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->M:I

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Let;

    const/16 v0, 0x10

    invoke-direct {p2, p1, v0}, Let;-><init>(Ljava/lang/Object;I)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->s:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    return-void
.end method

.method public final J()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->S:Z

    invoke-virtual {v4, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->S:Z

    return-void
.end method

.method public final K(JZ)Z
    .locals 11

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->s:Z

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-wide v6, v5, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v2

    :goto_1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v0, :cond_8

    if-nez p3, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length p3, p3

    move v0, v4

    :goto_2
    if-ge v0, p3, :cond_7

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v6, v6, v0

    if-eqz v5, :cond_3

    invoke-virtual {v5, v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->e(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->A(I)Z

    move-result v6

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c()J

    move-result-wide v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v9, v7, v9

    if-eqz v9, :cond_5

    cmp-long v7, p1, v7

    if-gez v7, :cond_4

    goto :goto_3

    :cond_4
    move v7, v4

    goto :goto_4

    :cond_5
    :goto_3
    move v7, v1

    :goto_4
    invoke-virtual {v6, p1, p2, v7}, Landroidx/media3/exoplayer/source/SampleQueue;->B(JZ)Z

    move-result v6

    :goto_5
    if-nez v6, :cond_6

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P:[Z

    aget-boolean v6, v6, v0

    if-nez v6, :cond_8

    iget-boolean v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->N:Z

    if-nez v6, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v4

    :cond_8
    :goto_6
    iput-wide p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    iput-boolean v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz p2, :cond_9

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length p2, p0

    :goto_7
    if-ge v4, p2, :cond_9

    aget-object p3, p0, v4

    invoke-virtual {p3}, Landroidx/media3/exoplayer/source/SampleQueue;->j()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    return v1

    :cond_a
    iput-object v2, p1, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J()V

    return v1
.end method

.method public final a(Landroidx/media3/exoplayer/LoadingInfo;)Z
    .locals 72

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->n:Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    iget-boolean v5, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    const/4 v6, 0x0

    if-nez v5, :cond_5e

    invoke-virtual {v4}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v5

    if-nez v5, :cond_5e

    iget-object v5, v4, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v5, :cond_0

    return v6

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-wide v9, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v12, v11

    move v13, v6

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v14, v11, v13

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    iput-wide v7, v14, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    move-object v12, v5

    move-wide v5, v9

    move-wide/from16 v26, v5

    goto/16 :goto_6

    :cond_2
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->p:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v7

    iget-boolean v8, v7, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->I:Z

    iget-wide v9, v7, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    iget-wide v7, v7, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->L:J

    cmp-long v11, v7, v15

    if-eqz v11, :cond_4

    add-long/2addr v7, v9

    goto :goto_1

    :cond_4
    move-wide v7, v15

    :goto_1
    move-wide v9, v7

    goto :goto_3

    :cond_5
    :goto_2
    iget-wide v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    goto :goto_1

    :goto_3
    iget-wide v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iget-boolean v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v12, v11

    move v13, v6

    :goto_4
    if-ge v13, v12, :cond_6

    aget-object v14, v11, v13

    monitor-enter v14

    move-wide/from16 v18, v7

    :try_start_0
    iget-wide v6, v14, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    iget v8, v14, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    move-wide/from16 v20, v9

    invoke-virtual {v14, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->p(I)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    move-wide/from16 v8, v18

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v9, v20

    const/4 v6, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    move-wide/from16 v20, v9

    move-wide v8, v7

    move-object v12, v5

    move-wide/from16 v26, v8

    :goto_5
    move-wide/from16 v5, v20

    goto :goto_6

    :cond_7
    move-wide/from16 v20, v9

    move-object v12, v5

    move-wide/from16 v26, v7

    goto :goto_5

    :goto_6
    const/4 v14, 0x0

    iput-object v14, v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->a:Landroidx/media3/exoplayer/source/chunk/Chunk;

    const/4 v7, 0x0

    iput-boolean v7, v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->b:Z

    iput-object v14, v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->c:Landroid/net/Uri;

    iget-object v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-boolean v8, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-nez v8, :cond_9

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_7

    :cond_8
    const/16 v28, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/16 v28, 0x1

    :goto_8
    iget-object v8, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iget-object v10, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->l:Landroidx/media3/exoplayer/upstream/CmcdConfiguration;

    iget-object v11, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e:[Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;

    iget-object v13, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_a

    move-wide/from16 v29, v15

    move-object v15, v14

    goto :goto_9

    :cond_a
    invoke-static {v12}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-wide/from16 v29, v15

    move-object/from16 v15, v18

    :goto_9
    if-nez v15, :cond_b

    const/4 v14, -0x1

    :goto_a
    move-object/from16 v19, v8

    goto :goto_b

    :cond_b
    iget-object v9, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    iget-object v14, v15, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    invoke-virtual {v9, v14}, Landroidx/media3/common/TrackGroup;->b(Landroidx/media3/common/Format;)I

    move-result v9

    move v14, v9

    goto :goto_a

    :goto_b
    iget-wide v8, v1, Landroidx/media3/exoplayer/LoadingInfo;->a:J

    sub-long v20, v5, v8

    move-wide/from16 v22, v8

    iget-wide v8, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->u:J

    cmp-long v24, v8, v29

    if-eqz v24, :cond_c

    sub-long v8, v8, v22

    goto :goto_c

    :cond_c
    move-wide/from16 v8, v29

    :goto_c
    if-eqz v15, :cond_e

    iget-boolean v0, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->s:Z

    if-nez v0, :cond_e

    iget-wide v0, v15, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    move-wide/from16 v24, v0

    iget-wide v0, v15, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    sub-long v0, v24, v0

    move-wide/from16 v24, v0

    sub-long v0, v20, v24

    move-wide/from16 v34, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    cmp-long v0, v34, v29

    if-eqz v0, :cond_d

    sub-long v0, v34, v24

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v8, v0

    move-object v0, v13

    goto :goto_e

    :cond_d
    :goto_d
    move-object v0, v13

    move-wide/from16 v8, v34

    goto :goto_e

    :cond_e
    move-wide/from16 v34, v8

    goto :goto_d

    :goto_e
    invoke-virtual {v7, v15, v5, v6}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->b(Landroidx/media3/exoplayer/hls/HlsMediaChunk;J)[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;

    move-result-object v13

    const/4 v1, -0x1

    if-eq v14, v1, :cond_f

    iget-object v1, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v24, v0

    invoke-interface {v1, v14}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->l(I)I

    move-result v0

    move-wide/from16 v34, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-interface {v1, v0, v5, v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->b(IJ)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    move-object/from16 v24, v0

    move-wide/from16 v34, v5

    :cond_10
    const/4 v0, 0x0

    :goto_f
    iget-object v5, v7, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v1, v19

    move-object/from16 v19, v15

    move-object/from16 v15, v24

    move-wide/from16 v24, v34

    move-object/from16 v34, v1

    move/from16 v35, v0

    move-object/from16 v37, v4

    move-object v1, v7

    move-object v0, v10

    move-object/from16 v36, v11

    move-wide/from16 v6, v22

    const/4 v4, 0x1

    move-wide v10, v8

    move-wide/from16 v8, v20

    invoke-interface/range {v5 .. v13}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->g(JJJLjava/util/List;[Landroidx/media3/exoplayer/source/chunk/MediaChunkIterator;)V

    iget-object v5, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v5}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->r()I

    move-result v5

    if-eq v14, v5, :cond_11

    move/from16 v20, v4

    goto :goto_10

    :cond_11
    const/16 v20, 0x0

    :goto_10
    aget-object v6, v36, v5

    invoke-virtual {v6}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v15, v6}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->i(Landroid/net/Uri;)Z

    move-result v7

    if-nez v7, :cond_12

    iput-object v6, v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->c:Landroid/net/Uri;

    iput-object v6, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;->r:Landroid/net/Uri;

    :goto_11
    move-object/from16 v19, v2

    move-object v14, v3

    goto/16 :goto_41

    :cond_12
    invoke-interface {v15, v6, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v10, v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->c:Z

    iput-boolean v10, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;->s:Z

    iget-boolean v10, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    if-eqz v10, :cond_13

    move/from16 v38, v5

    move-wide/from16 v4, v29

    goto :goto_12

    :cond_13
    iget-wide v10, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    move/from16 v38, v5

    iget-wide v4, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->u:J

    add-long/2addr v10, v4

    invoke-interface {v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()J

    move-result-wide v4

    sub-long v4, v10, v4

    :goto_12
    iput-wide v4, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;->u:J

    iget-wide v4, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    invoke-interface {v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()J

    move-result-wide v10

    sub-long v22, v4, v10

    move-object/from16 v18, v1

    move-object/from16 v21, v7

    invoke-virtual/range {v18 .. v25}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v1

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v20, :cond_15

    :cond_14
    :goto_13
    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto :goto_16

    :cond_15
    if-eqz v35, :cond_16

    goto :goto_13

    :cond_16
    if-nez v19, :cond_17

    goto :goto_13

    :cond_17
    iget-wide v10, v7, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_18

    goto :goto_14

    :cond_18
    invoke-static {v7, v4, v5, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->f(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v10

    if-nez v10, :cond_19

    goto :goto_13

    :cond_19
    iget-object v10, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->a:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-wide v10, v10, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    add-long v10, v22, v10

    cmp-long v10, v10, v26

    if-gez v10, :cond_14

    :goto_14
    aget-object v1, v36, v14

    invoke-virtual {v1}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v6

    const/4 v13, 0x1

    invoke-interface {v15, v6, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->r(Landroid/net/Uri;Z)Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v1, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->h:J

    invoke-interface {v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->f()J

    move-result-wide v10

    sub-long v22, v4, v10

    const/16 v20, 0x0

    move-object/from16 v21, v1

    invoke-virtual/range {v18 .. v25}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->e(Landroidx/media3/exoplayer/hls/HlsMediaChunk;ZLandroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JJ)Landroid/util/Pair;

    move-result-object v1

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object v7, v6

    move v6, v14

    move-object/from16 v13, v21

    :goto_15
    move-object/from16 v19, v12

    goto :goto_17

    :goto_16
    move-object v13, v7

    move-object v7, v6

    move/from16 v6, v38

    goto :goto_15

    :goto_17
    iget-boolean v12, v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->c:Z

    move/from16 v20, v12

    iget-boolean v12, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->o:Z

    move-object/from16 v21, v11

    move/from16 v26, v12

    iget-wide v11, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->k:J

    move-wide/from16 v38, v11

    iget-object v11, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->r:Lcom/google/common/collect/ImmutableList;

    iget-object v12, v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    move-object/from16 v27, v11

    if-eq v6, v14, :cond_1a

    const/4 v11, -0x1

    if-eq v14, v11, :cond_1a

    aget-object v11, v36, v14

    invoke-virtual {v11}, Landroidx/media3/exoplayer/hls/playlist/HlsRedundantGroup;->c()Landroid/net/Uri;

    move-result-object v11

    invoke-interface {v15, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->c(Landroid/net/Uri;)V

    :cond_1a
    cmp-long v11, v4, v38

    if-gez v11, :cond_1b

    new-instance v0, Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/BehindLiveWindowException;-><init>()V

    iput-object v0, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    goto/16 :goto_11

    :cond_1b
    invoke-static {v13, v4, v5, v1}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->f(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v1

    const-wide/16 v4, 0x1

    if-nez v1, :cond_1f

    if-nez v26, :cond_1c

    iput-object v7, v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->c:Landroid/net/Uri;

    iput-object v7, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->r:Landroid/net/Uri;

    goto/16 :goto_11

    :cond_1c
    if-nez v28, :cond_1d

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v13, 0x1

    goto :goto_18

    :cond_1e
    new-instance v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    invoke-static/range {v27 .. v27}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v14

    int-to-long v14, v14

    add-long v14, v38, v14

    sub-long/2addr v14, v4

    move-wide/from16 v27, v4

    const/4 v4, -0x1

    invoke-direct {v1, v11, v14, v15, v4}, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;-><init>(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;JI)V

    goto :goto_19

    :goto_18
    iput-boolean v13, v3, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->b:Z

    goto/16 :goto_11

    :cond_1f
    move-wide/from16 v27, v4

    :goto_19
    iget-boolean v4, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->d:Z

    iget v5, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->c:I

    iget-object v11, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->a:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    const/4 v14, 0x0

    iput-object v14, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->r:Landroid/net/Uri;

    if-eqz v0, :cond_33

    new-instance v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;

    const-string v14, "h"

    invoke-direct {v15, v0, v14}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;-><init>(Landroidx/media3/exoplayer/upstream/CmcdConfiguration;Ljava/lang/String;)V

    iget-object v0, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    iput-object v0, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->c:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object v0, v2

    move-object v14, v3

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    cmp-long v35, v8, v2

    if-ltz v35, :cond_20

    const/4 v2, 0x1

    goto :goto_1a

    :cond_20
    const/4 v2, 0x0

    :goto_1a
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v8, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->d:J

    move-object/from16 v2, p1

    iget v3, v2, Landroidx/media3/exoplayer/LoadingInfo;->b:F

    const v8, -0x800001

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_22

    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-lez v8, :cond_21

    goto :goto_1b

    :cond_21
    const/4 v8, 0x0

    goto :goto_1c

    :cond_22
    :goto_1b
    const/4 v8, 0x1

    :goto_1c
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput v3, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->e:F

    const/16 v18, 0x1

    xor-int/lit8 v3, v26, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->f:Ljava/lang/Boolean;

    iget-wide v8, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->v:J

    iget-wide v2, v2, Landroidx/media3/exoplayer/LoadingInfo;->c:J

    cmp-long v26, v2, v29

    if-eqz v26, :cond_23

    cmp-long v26, v8, v29

    if-eqz v26, :cond_23

    cmp-long v2, v2, v8

    if-ltz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_1d

    :cond_23
    const/4 v2, 0x0

    :goto_1d
    iput-boolean v2, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->g:Z

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iput-boolean v2, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->h:Z

    iget-wide v2, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    const-wide/16 v32, 0x0

    cmp-long v8, v2, v32

    if-ltz v8, :cond_24

    const/4 v8, 0x1

    goto :goto_1e

    :cond_24
    const/4 v8, 0x0

    :goto_1e
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v2, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->i:J

    iget-wide v2, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->b:J

    const/4 v8, -0x1

    if-ne v5, v8, :cond_25

    add-long v2, v2, v27

    :cond_25
    if-ne v5, v8, :cond_26

    goto :goto_1f

    :cond_26
    add-int/lit8 v8, v5, 0x1

    :goto_1f
    invoke-static {v13, v2, v3, v8}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->f(Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;JI)Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v2, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->a:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;

    iget-object v3, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    invoke-static {v12, v3}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v8, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    move-object/from16 p1, v3

    move v9, v4

    iget-wide v3, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->k:J

    move-wide/from16 v26, v3

    iget-wide v2, v2, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->j:J

    invoke-static {v12, v8}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-nez v8, :cond_27

    invoke-virtual {v4}, Landroid/net/Uri;->isOpaque()Z

    move-result v8

    if-eqz v8, :cond_28

    :cond_27
    move-object/from16 v19, v0

    move/from16 v28, v5

    goto/16 :goto_26

    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v8, :cond_29

    if-nez v0, :cond_2a

    goto :goto_20

    :cond_29
    if-eqz v0, :cond_2a

    invoke-static {v8, v0}, Lcom/google/common/base/Ascii;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_20
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_2a
    move/from16 v28, v5

    goto/16 :goto_25

    :cond_2b
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move/from16 v28, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    const/16 v31, 0x0

    :goto_21
    if-ge v8, v5, :cond_2d

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 p1, v0

    move-object/from16 v0, v32

    check-cast v0, Ljava/lang/String;

    move/from16 v32, v5

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_22

    :cond_2c
    add-int/lit8 v31, v31, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v5, v32

    goto :goto_21

    :cond_2d
    move-object/from16 p1, v0

    :goto_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v5, v31

    :goto_23
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_2e

    const-string v8, "../"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_2e
    move/from16 v5, v31

    :goto_24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_30

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/16 v18, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_2f

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :goto_25
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :goto_26
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    iput-object v0, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, -0x1

    cmp-long v4, v26, v4

    if-eqz v4, :cond_31

    invoke-static {v0}, Ln00;->t(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-long v2, v2, v26

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_31
    iput-object v0, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->l:Ljava/lang/String;

    goto :goto_28

    :cond_32
    move-object/from16 v19, v0

    move v9, v4

    move/from16 v28, v5

    goto :goto_28

    :cond_33
    move-object/from16 v19, v2

    move-object v14, v3

    move v9, v4

    move/from16 v28, v5

    const/4 v15, 0x0

    :goto_28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->v:J

    iget-object v0, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->c:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v2, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->f:J

    if-eqz v0, :cond_35

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->h:Ljava/lang/String;

    if-nez v0, :cond_34

    goto :goto_2a

    :cond_34
    iget-object v4, v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_29
    const/4 v4, 0x1

    goto :goto_2b

    :cond_35
    :goto_2a
    const/4 v0, 0x0

    goto :goto_29

    :goto_2b
    invoke-virtual {v10, v0, v6, v4, v15}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-result-object v5

    iput-object v5, v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->a:Landroidx/media3/exoplayer/source/chunk/Chunk;

    if-eqz v5, :cond_36

    goto/16 :goto_41

    :cond_36
    iget-object v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->h:Ljava/lang/String;

    if-nez v4, :cond_37

    const/4 v4, 0x0

    :goto_2c
    const/4 v5, 0x0

    goto :goto_2d

    :cond_37
    iget-object v5, v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylist;->a:Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2c

    :goto_2d
    invoke-virtual {v10, v4, v6, v5, v15}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g(Landroid/net/Uri;IZLandroidx/media3/exoplayer/upstream/CmcdData$Factory;)Landroidx/media3/exoplayer/source/chunk/Chunk;

    move-result-object v8

    iput-object v8, v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->a:Landroidx/media3/exoplayer/source/chunk/Chunk;

    if-eqz v8, :cond_38

    goto/16 :goto_41

    :cond_38
    instance-of v5, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    if-eqz v5, :cond_3b

    move-object v5, v11

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;

    iget-boolean v5, v5, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Part;->m:Z

    if-nez v5, :cond_3a

    if-nez v28, :cond_39

    if-eqz v20, :cond_39

    goto :goto_2e

    :cond_39
    const/16 v70, 0x0

    goto :goto_2f

    :cond_3a
    :goto_2e
    const/16 v70, 0x1

    goto :goto_2f

    :cond_3b
    move/from16 v70, v20

    :goto_2f
    if-nez v21, :cond_3d

    sget-object v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v5, v21

    :cond_3c
    :goto_30
    const/16 v69, 0x0

    goto :goto_31

    :cond_3d
    move-object/from16 v5, v21

    iget-object v8, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    iget-boolean v8, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->I:Z

    if-eqz v8, :cond_3e

    goto :goto_30

    :cond_3e
    add-long v20, v22, v2

    if-eqz v70, :cond_3f

    cmp-long v8, v20, v24

    if-gez v8, :cond_3c

    :cond_3f
    const/16 v69, 0x1

    :goto_31
    if-eqz v69, :cond_40

    if-eqz v9, :cond_40

    goto/16 :goto_41

    :cond_40
    iget-object v8, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->a:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    move-wide/from16 v20, v2

    iget-object v2, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->b:Landroidx/media3/datasource/DataSource;

    iget-object v3, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->f:[Landroidx/media3/common/Format;

    aget-object v42, v3, v6

    iget-object v3, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->i:Ljava/util/List;

    iget-object v6, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->t()I

    move-result v49

    iget-object v6, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v6}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->j()Ljava/lang/Object;

    move-result-object v50

    iget-boolean v6, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->n:Z

    move-object/from16 v48, v3

    iget-object v3, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->d:Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;

    move-object/from16 v39, v8

    move/from16 p1, v9

    iget-wide v8, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->m:J

    if-nez v4, :cond_41

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v61, v6

    move-wide/from16 v63, v8

    move-object/from16 v6, v34

    const/4 v4, 0x0

    goto :goto_32

    :cond_41
    move/from16 v61, v6

    move-wide/from16 v63, v8

    move-object/from16 v6, v34

    iget-object v8, v6, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    :goto_32
    if-nez v0, :cond_42

    const/4 v0, 0x0

    goto :goto_33

    :cond_42
    iget-object v6, v6, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_33
    iget-object v6, v10, Landroidx/media3/exoplayer/hls/HlsChunkSource;->k:Landroidx/media3/exoplayer/analytics/PlayerId;

    sget-object v8, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v8, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v8}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iget-object v9, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    invoke-static {v12, v9}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, v8, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    iget-wide v9, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->j:J

    iput-wide v9, v8, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iget-wide v9, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->k:J

    iput-wide v9, v8, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    if-eqz p1, :cond_43

    const/16 v9, 0x8

    goto :goto_34

    :cond_43
    const/4 v9, 0x0

    :goto_34
    iput v9, v8, Landroidx/media3/datasource/DataSpec$Builder;->i:I

    invoke-virtual {v8}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v8

    if-eqz v15, :cond_44

    invoke-virtual {v15}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/media3/exoplayer/upstream/CmcdData;->a(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object v8

    :cond_44
    move-object/from16 v41, v8

    if-eqz v4, :cond_45

    const/16 v43, 0x1

    goto :goto_35

    :cond_45
    const/16 v43, 0x0

    :goto_35
    if-eqz v43, :cond_46

    iget-object v8, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->i:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->d(Ljava/lang/String;)[B

    move-result-object v8

    goto :goto_36

    :cond_46
    const/4 v8, 0x0

    :goto_36
    if-eqz v4, :cond_47

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Landroidx/media3/exoplayer/hls/Aes128DataSource;

    invoke-direct {v9, v2, v4, v8}, Landroidx/media3/exoplayer/hls/Aes128DataSource;-><init>(Landroidx/media3/datasource/DataSource;[B[B)V

    move-object/from16 v40, v9

    goto :goto_37

    :cond_47
    move-object/from16 v40, v2

    :goto_37
    iget-object v4, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->c:Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v4, :cond_4c

    if-eqz v0, :cond_48

    const/4 v8, 0x1

    goto :goto_38

    :cond_48
    const/4 v8, 0x0

    :goto_38
    if-eqz v8, :cond_49

    iget-object v9, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->i:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->d(Ljava/lang/String;)[B

    move-result-object v9

    goto :goto_39

    :cond_49
    const/4 v9, 0x0

    :goto_39
    iget-object v10, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->b:Ljava/lang/String;

    invoke-static {v12, v10}, Landroidx/media3/common/util/UriUtil;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    new-instance v12, Landroidx/media3/datasource/DataSpec$Builder;

    invoke-direct {v12}, Landroidx/media3/datasource/DataSpec$Builder;-><init>()V

    iput-object v10, v12, Landroidx/media3/datasource/DataSpec$Builder;->a:Landroid/net/Uri;

    move-object/from16 v71, v6

    move-object/from16 v47, v7

    iget-wide v6, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->j:J

    iput-wide v6, v12, Landroidx/media3/datasource/DataSpec$Builder;->f:J

    iget-wide v6, v4, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->k:J

    iput-wide v6, v12, Landroidx/media3/datasource/DataSpec$Builder;->g:J

    invoke-virtual {v12}, Landroidx/media3/datasource/DataSpec$Builder;->a()Landroidx/media3/datasource/DataSpec;

    move-result-object v4

    if-eqz v15, :cond_4a

    const-string v6, "i"

    iput-object v6, v15, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->j:Ljava/lang/String;

    invoke-virtual {v15}, Landroidx/media3/exoplayer/upstream/CmcdData$Factory;->a()Landroidx/media3/exoplayer/upstream/CmcdData;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroidx/media3/exoplayer/upstream/CmcdData;->a(Landroidx/media3/datasource/DataSpec;)Landroidx/media3/datasource/DataSpec;

    move-result-object v4

    :cond_4a
    if-eqz v0, :cond_4b

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroidx/media3/exoplayer/hls/Aes128DataSource;

    invoke-direct {v6, v2, v0, v9}, Landroidx/media3/exoplayer/hls/Aes128DataSource;-><init>(Landroidx/media3/datasource/DataSource;[B[B)V

    move-object v2, v6

    :cond_4b
    move-object/from16 v44, v2

    move/from16 v46, v8

    goto :goto_3a

    :cond_4c
    move-object/from16 v71, v6

    move-object/from16 v47, v7

    const/4 v4, 0x0

    const/16 v44, 0x0

    const/16 v46, 0x0

    :goto_3a
    add-long v51, v22, v20

    iget-wide v6, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->d:J

    add-long v53, v51, v6

    iget v0, v13, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist;->j:I

    iget v2, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->e:I

    add-int/2addr v0, v2

    if-eqz v5, :cond_51

    iget-object v2, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->q:Landroidx/media3/datasource/DataSpec;

    if-eq v4, v2, :cond_4e

    if-eqz v4, :cond_4d

    if-eqz v2, :cond_4d

    iget-object v6, v4, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    iget-object v7, v2, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d

    iget-wide v6, v4, Landroidx/media3/datasource/DataSpec;->f:J

    iget-wide v8, v2, Landroidx/media3/datasource/DataSpec;->f:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_4d

    goto :goto_3b

    :cond_4d
    const/4 v2, 0x0

    goto :goto_3c

    :cond_4e
    :goto_3b
    const/4 v2, 0x1

    :goto_3c
    iget-object v6, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    move-object/from16 v7, v47

    invoke-virtual {v7, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    iget-boolean v6, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->I:Z

    if-eqz v6, :cond_4f

    const/4 v6, 0x1

    goto :goto_3d

    :cond_4f
    const/4 v6, 0x0

    :goto_3d
    iget-object v8, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->y:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    iget-object v9, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->z:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v2, :cond_50

    if-eqz v6, :cond_50

    iget-boolean v2, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->K:Z

    if-nez v2, :cond_50

    iget v2, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->l:I

    if-ne v2, v0, :cond_50

    iget-object v2, v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-object/from16 v16, v2

    goto :goto_3e

    :cond_50
    const/16 v16, 0x0

    :goto_3e
    move-object/from16 v66, v16

    :goto_3f
    move-object/from16 v67, v8

    move-object/from16 v68, v9

    goto :goto_40

    :cond_51
    move-object/from16 v7, v47

    new-instance v8, Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    invoke-direct {v8}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;-><init>()V

    new-instance v9, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v2, 0xa

    invoke-direct {v9, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const/16 v66, 0x0

    goto :goto_3f

    :goto_40
    new-instance v38, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-wide v5, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->b:J

    iget v1, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource$SegmentBaseHolder;->c:I

    const/16 v18, 0x1

    xor-int/lit8 v58, p1, 0x1

    iget-boolean v2, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->l:Z

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/TimestampAdjusterProvider;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/common/util/TimestampAdjuster;

    if-nez v8, :cond_52

    new-instance v8, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide v9, 0x7ffffffffffffffeL

    invoke-direct {v8, v9, v10}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_52
    move-object/from16 v62, v8

    iget-object v3, v11, Landroidx/media3/exoplayer/hls/playlist/HlsMediaPlaylist$SegmentBase;->g:Landroidx/media3/common/DrmInitData;

    move/from16 v59, v0

    move/from16 v57, v1

    move/from16 v60, v2

    move-object/from16 v65, v3

    move-object/from16 v45, v4

    move-wide/from16 v55, v5

    move-object/from16 v47, v7

    invoke-direct/range {v38 .. v71}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;-><init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ZLandroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLandroidx/media3/common/util/TimestampAdjuster;JLandroidx/media3/common/DrmInitData;Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;Landroidx/media3/extractor/metadata/id3/Id3Decoder;Landroidx/media3/common/util/ParsableByteArray;ZZLandroidx/media3/exoplayer/analytics/PlayerId;)V

    move-object/from16 v0, v38

    iput-object v0, v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->a:Landroidx/media3/exoplayer/source/chunk/Chunk;

    :goto_41
    iget-boolean v0, v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->b:Z

    iget-object v1, v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->a:Landroidx/media3/exoplayer/source/chunk/Chunk;

    iget-object v2, v14, Landroidx/media3/exoplayer/hls/HlsChunkSource$HlsChunkHolder;->c:Landroid/net/Uri;

    if-eqz v0, :cond_53

    move-object/from16 v0, p0

    move-wide/from16 v3, v29

    iput-wide v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    const/4 v13, 0x1

    iput-boolean v13, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    return v13

    :cond_53
    move-object/from16 v0, p0

    if-nez v1, :cond_55

    if-eqz v2, :cond_54

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;->n(Landroid/net/Uri;)V

    const/16 v17, 0x0

    return v17

    :cond_54
    const/16 v17, 0x0

    goto/16 :goto_47

    :cond_55
    instance-of v2, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    if-eqz v2, :cond_5d

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_56
    move-object/from16 v4, v19

    goto :goto_44

    :cond_57
    invoke-virtual {v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v18, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C(I)V

    goto :goto_42

    :cond_58
    const/16 v18, 0x1

    :goto_42
    iget-boolean v3, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->n:Z

    if-eqz v3, :cond_56

    iget-boolean v3, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->M:Z

    if-eqz v3, :cond_56

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_43
    if-ltz v3, :cond_56

    move-object/from16 v4, v19

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-wide v5, v5, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-wide v7, v2, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_59

    goto :goto_44

    :cond_59
    if-nez v5, :cond_5a

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->y(I)Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C(I)V

    const/4 v5, 0x0

    iput-boolean v5, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->M:Z

    goto :goto_44

    :cond_5a
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v19, v4

    goto :goto_43

    :goto_44
    iput-object v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->h0:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object v3, v2, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iput-object v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->G:Landroidx/media3/common/Format;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v5, :cond_5b

    aget-object v6, v4, v7

    iget v8, v6, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget v6, v6, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    :cond_5b
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    iput-object v0, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iput-object v3, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->J:Lcom/google/common/collect/ImmutableList;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v4, v3

    const/4 v6, 0x0

    :goto_46
    if-ge v6, v4, :cond_5d

    aget-object v5, v3, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->k:I

    int-to-long v7, v7

    iput-wide v7, v5, Landroidx/media3/exoplayer/source/SampleQueue;->E:J

    iget-boolean v7, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->M:Z

    if-eqz v7, :cond_5c

    const/4 v13, 0x1

    iput-boolean v13, v5, Landroidx/media3/exoplayer/source/SampleQueue;->I:Z

    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_46

    :cond_5d
    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->v:Landroidx/media3/exoplayer/source/chunk/Chunk;

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->c:I

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->b(I)I

    move-result v2

    move-object/from16 v3, v37

    invoke-virtual {v3, v1, v0, v2}, Landroidx/media3/exoplayer/upstream/Loader;->e(Landroidx/media3/exoplayer/upstream/Loader$Loadable;Landroidx/media3/exoplayer/upstream/Loader$Callback;I)V

    const/16 v18, 0x1

    return v18

    :cond_5e
    move/from16 v17, v6

    :goto_47
    return v17
.end method

.method public final b(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJLjava/io/IOException;I)Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    instance-of v2, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->f()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v12, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    move-object v3, v12

    check-cast v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Landroidx/media3/datasource/HttpDataSource$InvalidResponseCodeException;->d:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/upstream/Loader;->d:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    return-object v0

    :cond_1
    iget-object v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->i:Landroidx/media3/datasource/StatsDataSource;

    iget-wide v3, v3, Landroidx/media3/datasource/StatsDataSource;->b:J

    new-instance v13, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v14, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->a:J

    iget-object v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->i:Landroidx/media3/datasource/StatsDataSource;

    iget-object v7, v6, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v6, v6, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    move-wide/from16 v19, p2

    move-wide/from16 v21, p4

    move-wide/from16 v23, v3

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    invoke-direct/range {v13 .. v24}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    new-instance v25, Landroidx/media3/exoplayer/source/MediaLoadData;

    iget v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->c:I

    iget-object v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    iget-object v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v31

    iget-wide v7, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    invoke-static {v7, v8}, Landroidx/media3/common/util/Util;->f0(J)J

    move-result-wide v33

    iget v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    move/from16 v26, v3

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v27, v7

    invoke-direct/range {v25 .. v34}, Landroidx/media3/exoplayer/source/MediaLoadData;-><init>(IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    move-object/from16 v3, v25

    new-instance v4, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v4, v13, v3, v12, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;I)V

    instance-of v3, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object v5, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    move-object v8, v1

    check-cast v8, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object v8, v8, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->a(Landroid/net/Uri;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v8

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v10, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v10}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v10

    new-instance v11, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    invoke-virtual {v5, v8, v9}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->d(J)I

    move-result v8

    invoke-direct {v11, v7, v6, v10, v8}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    move-object v8, v11

    :goto_0
    iget-object v9, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v9, v8, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->c(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v8, :cond_3

    move v14, v6

    const/16 p1, 0x0

    goto :goto_3

    :cond_3
    iget v10, v8, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->a:I

    const/16 p1, 0x0

    iget-wide v14, v8, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackSelection;->b:J

    if-eq v10, v7, :cond_8

    const/4 v3, 0x2

    if-ne v10, v3, :cond_7

    iget-object v3, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->h:Landroidx/media3/common/TrackGroup;

    iget-object v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    invoke-virtual {v3, v8}, Landroidx/media3/common/TrackGroup;->b(Landroidx/media3/common/Format;)I

    move-result v3

    const/4 v8, -0x1

    if-ne v3, v8, :cond_5

    :cond_4
    :goto_1
    move v14, v6

    goto :goto_3

    :cond_5
    iget-object v10, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v10, v3}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->l(I)I

    move-result v3

    if-ne v3, v8, :cond_6

    goto :goto_1

    :cond_6
    iget-object v5, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v5, v3, v14, v15}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->h(IJ)Z

    move-result v3

    :goto_2
    move v14, v3

    goto :goto_3

    :cond_7
    const-string v0, "Invalid fallback selection type: "

    invoke-static {v10, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object p1

    :cond_8
    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-object v5, v5, Landroidx/media3/exoplayer/hls/HlsChunkSource;->g:Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;

    iget-object v3, v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    invoke-interface {v5, v3, v14, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistTracker;->n(Landroid/net/Uri;J)Z

    move-result v3

    goto :goto_2

    :goto_3
    if-eqz v14, :cond_c

    if-eqz v2, :cond_b

    const-wide/16 v2, 0x0

    cmp-long v2, v23, v2

    if-nez v2, :cond_b

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    if-ne v3, v1, :cond_9

    move v3, v7

    goto :goto_4

    :cond_9
    move v3, v6

    :goto_4
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    goto :goto_5

    :cond_a
    invoke-static {v2}, Lcom/google/common/collect/Iterables;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iput-boolean v7, v2, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->K:Z

    :cond_b
    :goto_5
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->e:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    :goto_6
    move-object v15, v2

    goto :goto_7

    :cond_c
    invoke-interface {v9, v4}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;->a(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_d

    new-instance v4, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    invoke-direct {v4, v6, v2, v3}, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;-><init>(IJ)V

    move-object v2, v4

    goto :goto_6

    :cond_d
    sget-object v2, Landroidx/media3/exoplayer/upstream/Loader;->f:Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;

    goto :goto_6

    :goto_7
    iget v2, v15, Landroidx/media3/exoplayer/upstream/Loader$LoadErrorAction;->a:I

    if-eqz v2, :cond_f

    if-ne v2, v7, :cond_e

    goto :goto_8

    :cond_e
    move/from16 v16, v6

    goto :goto_9

    :cond_f
    :goto_8
    move/from16 v16, v7

    :goto_9
    move-object v2, v13

    xor-int/lit8 v13, v16, 0x1

    iget v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->c:I

    iget-object v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    iget-object v7, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-wide v10, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    invoke-virtual/range {v1 .. v13}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->d(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-nez v16, :cond_10

    move-object/from16 v1, p1

    iput-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->v:Landroidx/media3/exoplayer/source/chunk/Chunk;

    :cond_10
    if-eqz v14, :cond_12

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-nez v1, :cond_11

    new-instance v1, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v2, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    new-instance v2, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {v2, v1}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    return-object v15

    :cond_11
    iget-object v1, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    :cond_12
    return-object v15
.end method

.method public final c()J
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object p0

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    return-wide v0
.end method

.method public final h()V
    .locals 5

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->z(Z)V

    iget-object v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v3, :cond_0

    iget-object v4, v2, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v3, v4}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    const/4 v3, 0x0

    iput-object v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public final l(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    if-nez p6, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v3, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->a:J

    iget-object v5, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    move-wide/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;J)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    new-instance v3, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v4, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->a:J

    iget-object v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->i:Landroidx/media3/datasource/StatsDataSource;

    iget-object v7, v2, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v8, v2, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v13, v2, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    move-object v5, v3

    :goto_0
    iget v6, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->c:I

    iget-object v8, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget v9, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    iget-object v10, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-wide v13, v1, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    iget-object v4, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v7, v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    move/from16 v15, p6

    invoke-virtual/range {v4 .. v15}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->f(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJI)V

    return-void
.end method

.method public final m()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result p0

    return p0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->X:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->s:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->r:Landroidx/media3/exoplayer/hls/b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final q(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJ)V
    .locals 13

    check-cast p1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->v:Landroidx/media3/exoplayer/source/chunk/Chunk;

    instance-of v0, p1, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/DataChunk;->j:[B

    iput-object v2, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;->o:[B

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/HlsChunkSource;->j:Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v2, v2, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource$EncryptionKeyChunk;->l:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/exoplayer/hls/FullSegmentEncryptionKeyCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->a:J

    iget-object v4, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->i:Landroidx/media3/datasource/StatsDataSource;

    iget-object v5, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v6, v0, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v11, v0, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->c:I

    iget-object v5, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget v6, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    iget-object v7, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v8, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-wide v10, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    move-object v2, v1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    invoke-virtual/range {v1 .. v11}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->c(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    if-nez p1, :cond_1

    new-instance p1, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v0, p1, Landroidx/media3/exoplayer/LoadingInfo$Builder;->a:J

    new-instance v0, Landroidx/media3/exoplayer/LoadingInfo;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/LoadingInfo;-><init>(Landroidx/media3/exoplayer/LoadingInfo$Builder;)V

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->a(Landroidx/media3/exoplayer/LoadingInfo;)Z

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public final r(II)Landroidx/media3/extractor/TrackOutput;
    .locals 10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t0:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->y:Ljava/util/HashSet;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->z:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    const/4 v0, -0x1

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x:[I

    aput p1, v0, v1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v5, v0, v1

    goto :goto_1

    :cond_2
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->z(II)Landroidx/media3/extractor/DiscardingTrackOutput;

    move-result-object v5

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v6, v1

    if-ge v0, v6, :cond_5

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x:[I

    aget v6, v6, v0

    if-ne v6, p1, :cond_4

    aget-object v5, v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v5, :cond_d

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->X:Z

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->z(II)Landroidx/media3/extractor/DiscardingTrackOutput;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v5, 0x2

    if-ne p2, v5, :cond_8

    :cond_7
    move v2, v1

    :cond_8
    new-instance v5, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->i:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v7, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->u:Ljava/util/Map;

    iget-object v8, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->f:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-object v9, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->h:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-direct {v5, v8, v9, v6, v7}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V

    iget-wide v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    iput-wide v6, v5, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    if-eqz v2, :cond_9

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Z:Landroidx/media3/common/DrmInitData;

    iput-object v6, v5, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->K:Landroidx/media3/common/DrmInitData;

    iput-boolean v1, v5, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    :cond_9
    iget-wide v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Y:J

    iget-wide v8, v5, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    cmp-long v8, v8, v6

    if-eqz v8, :cond_a

    iput-wide v6, v5, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    iput-boolean v1, v5, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    :cond_a
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->h0:Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    if-eqz v6, :cond_b

    iget v6, v6, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->k:I

    int-to-long v6, v6

    iput-wide v6, v5, Landroidx/media3/exoplayer/source/SampleQueue;->E:J

    :cond_b
    iput-object p0, v5, Landroidx/media3/exoplayer/source/SampleQueue;->f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x:[I

    add-int/lit8 v7, v0, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->x:[I

    aput p1, v6, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    array-length v6, p1

    add-int/2addr v6, v1

    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    array-length p1, p1

    aput-object v5, v1, p1

    check-cast v1, [Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P:[Z

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P:[Z

    aput-boolean v2, p1, v0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->N:Z

    or-int/2addr p1, v2

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->N:Z

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    invoke-static {p2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E(I)I

    move-result p1

    iget v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->B:I

    invoke-static {v1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E(I)I

    move-result v1

    if-le p1, v1, :cond_c

    iput v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C:I

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->B:I

    :cond_c
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    :cond_d
    const/4 p1, 0x5

    if-ne p2, p1, :cond_f

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->A:Landroidx/media3/extractor/TrackOutput;

    if-nez p1, :cond_e

    new-instance p1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;

    iget p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->m:I

    invoke-direct {p1, v5, p2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;-><init>(Landroidx/media3/extractor/TrackOutput;I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->A:Landroidx/media3/extractor/TrackOutput;

    :cond_e
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->A:Landroidx/media3/extractor/TrackOutput;

    return-object p0

    :cond_f
    return-object v5
.end method

.method public final s()J
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    if-eqz v1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->R:J

    return-wide v0

    :cond_1
    iget-wide v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Q:J

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D()Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move-result-object v3

    iget-boolean v4, v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->I:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v0, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    aget-object v4, p0, v3

    monitor-enter v4

    :try_start_0
    iget-wide v5, v4, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    return-wide v1
.end method

.method public final t()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->s:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->q:Landroidx/media3/exoplayer/hls/b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v(J)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->e:Landroidx/media3/exoplayer/hls/HlsChunkSource;

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->p:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->k:Landroidx/media3/exoplayer/upstream/Loader;

    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/Loader;->c:Ljava/io/IOException;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/Loader;->b()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->v:Landroidx/media3/exoplayer/source/chunk/Chunk;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->v:Landroidx/media3/exoplayer/source/chunk/Chunk;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p0, v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->n(JLandroidx/media3/exoplayer/source/chunk/Chunk;Ljava/util/List;)Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_f

    invoke-virtual {v2}, Landroidx/media3/exoplayer/upstream/Loader;->a()V

    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    const/4 v3, 0x2

    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    invoke-virtual {v0, v5}, Landroidx/media3/exoplayer/hls/HlsChunkSource;->c(Landroidx/media3/exoplayer/hls/HlsMediaChunk;)I

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C(I)V

    :cond_5
    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->p:Landroidx/media3/exoplayer/source/BehindLiveWindowException;

    if-nez v2, :cond_7

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v2}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->length()I

    move-result v2

    if-ge v2, v3, :cond_6

    goto :goto_2

    :cond_6
    iget-object v0, v0, Landroidx/media3/exoplayer/hls/HlsChunkSource;->t:Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->q(JLjava/util/List;)I

    move-result p1

    goto :goto_3

    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    :goto_3
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->C(I)V

    :cond_8
    iget-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_e

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->W:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    move v0, p2

    move p1, v4

    :goto_4
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v2, v1

    if-ge p1, v2, :cond_d

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->O:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_a

    iget-boolean v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->N:Z

    if-nez v2, :cond_c

    :cond_a
    aget-object v1, v1, p1

    monitor-enter v1

    :try_start_0
    iget v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    move v2, p2

    goto :goto_5

    :cond_b
    move v2, v4

    :goto_5
    monitor-exit v1

    and-int/2addr v0, v2

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_c
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_d
    move v4, v0

    :cond_e
    :goto_7
    if-eqz v4, :cond_f

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->V:Z

    :cond_f
    :goto_8
    return-void
.end method

.method public final w(Landroidx/media3/exoplayer/upstream/Loader$Loadable;JJZ)V
    .locals 13

    check-cast p1, Landroidx/media3/exoplayer/source/chunk/Chunk;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->v:Landroidx/media3/exoplayer/source/chunk/Chunk;

    new-instance v1, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->a:J

    iget-object v4, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->i:Landroidx/media3/datasource/StatsDataSource;

    iget-object v5, v0, Landroidx/media3/datasource/StatsDataSource;->c:Landroid/net/Uri;

    iget-object v6, v0, Landroidx/media3/datasource/StatsDataSource;->d:Ljava/util/Map;

    iget-wide v11, v0, Landroidx/media3/datasource/StatsDataSource;->b:J

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/source/LoadEventInfo;-><init>(JLandroidx/media3/datasource/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->j:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->c:I

    iget-object v5, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget v6, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->e:I

    iget-object v7, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->f:Ljava/lang/Object;

    iget-wide v8, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-wide v10, p1, Landroidx/media3/exoplayer/source/chunk/Chunk;->h:J

    move-object v2, v1

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->l:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->c:I

    invoke-virtual/range {v1 .. v11}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b(Landroidx/media3/exoplayer/source/LoadEventInfo;IILandroidx/media3/common/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J()V

    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->F:I

    if-lez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->d:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/SequenceableLoader$Callback;->l(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    :cond_2
    return-void
.end method

.method public final x()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->E:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->J:Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->K:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final y(I)Z
    .locals 4

    move v0, p1

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->o:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    iget-boolean v1, v1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->M:Z

    if-eqz v1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;

    move v0, v3

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->e(I)I

    move-result v1

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result v2

    if-le v2, v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
