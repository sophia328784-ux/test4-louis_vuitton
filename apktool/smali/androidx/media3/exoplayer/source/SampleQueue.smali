.class public Landroidx/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;,
        Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;,
        Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Landroidx/media3/common/Format;

.field public D:Landroidx/media3/common/Format;

.field public E:J

.field public F:Z

.field public G:Z

.field public H:J

.field public I:Z

.field public final a:Landroidx/media3/exoplayer/source/SampleDataQueue;

.field public final b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

.field public final c:Landroidx/media3/exoplayer/source/SpannedData;

.field public final d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field public final e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field public f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

.field public g:Landroidx/media3/common/Format;

.field public h:Landroidx/media3/exoplayer/drm/DrmSession;

.field public i:I

.field public j:[J

.field public k:[J

.field public l:[I

.field public m:[I

.field public n:[J

.field public o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    new-instance p2, Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    new-instance p1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    new-instance p1, Landroidx/media3/exoplayer/source/SpannedData;

    new-instance p2, Landroidx/media3/exoplayer/source/e;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/SpannedData;-><init>(Landroidx/media3/common/util/Consumer;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->F:Z

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->u:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized A(I)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    if-lt p1, v1, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v2, v1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-lt p1, v2, :cond_1

    monitor-exit p0

    return v0

    :cond_1
    const-wide/high16 v2, -0x8000000000000000L

    :try_start_3
    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1

    :goto_1
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final declared-synchronized B(JZ)Z
    .locals 10

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v6

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->u:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    if-eqz v3, :cond_0

    :try_start_4
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_7

    :cond_0
    :goto_0
    :try_start_5
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v9, 0x1

    if-eq v1, v2, :cond_1

    move v3, v9

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v3, :cond_2

    :try_start_6
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v7, v3, v6

    cmp-long v3, p1, v7

    if-ltz v3, :cond_2

    cmp-long v3, p1, v4

    if-lez v3, :cond_3

    if-nez p3, :cond_3

    :cond_2
    move-object v3, p0

    goto :goto_4

    :cond_3
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->F:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    sub-int v7, v2, v1

    move-object v3, p0

    move-wide v4, p1

    move v8, p3

    :try_start_7
    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->m(JIIZ)I

    move-result p0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_2
    move-object p1, v0

    goto :goto_7

    :cond_4
    move-object v3, p0

    move-wide v4, p1

    sub-int v7, v2, v1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->n(JIIZ)I

    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_3
    const/4 p1, -0x1

    if-ne p0, p1, :cond_5

    monitor-exit v3

    return v0

    :cond_5
    :try_start_8
    iput-wide v4, v3, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    iget p1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    add-int/2addr p1, p0

    iput p1, v3, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit v3

    return v9

    :catchall_2
    move-exception v0

    move-object v3, p0

    goto :goto_2

    :goto_4
    monitor-exit v3

    return v0

    :catchall_3
    move-exception v0

    move-object v3, p0

    :goto_5
    move-object p0, v0

    move-object p1, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v3, p0

    :goto_6
    move-object p0, v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    goto :goto_5

    :catchall_7
    move-exception v0

    goto :goto_6

    :goto_7
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p1
.end method

.method public final declared-synchronized C(J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-nez v0, :cond_1

    :try_start_1
    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto :goto_3

    :cond_1
    :try_start_2
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    iget v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v7, 0x0

    move-object v2, p0

    move-wide v3, p1

    :try_start_3
    invoke-virtual/range {v2 .. v7}, Landroidx/media3/exoplayer/source/SampleQueue;->m(JIIZ)I

    move-result p0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :cond_2
    move-object v2, p0

    move-wide v3, p1

    move p0, v1

    :goto_1
    if-ne p0, v1, :cond_3

    goto :goto_2

    :cond_3
    iget p1, v2, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    add-int v1, p1, p0

    :goto_2
    iput v1, v2, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    iput-wide v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->u:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v2

    return-void

    :goto_3
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final declared-synchronized D(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 8

    :cond_0
    :goto_0
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    if-lez p2, :cond_1

    invoke-virtual {p3, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->b(I)I

    move-result v0

    iget-object v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v3, v2, Landroidx/media3/exoplayer/upstream/Allocation;->a:[B

    iget-wide v4, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    iget v2, v2, Landroidx/media3/exoplayer/upstream/Allocation;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    sub-int/2addr p2, v0

    iget-wide v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    iget-object v0, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v0, p3, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final b(Landroidx/media3/common/Format;)V
    .locals 5

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->o(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    goto :goto_3

    :cond_0
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    invoke-virtual {p1, v0}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    :goto_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->F:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    iget-object v3, v0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v0, v0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    invoke-static {v3}, Landroidx/media3/common/MimeTypes;->i(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-static {v3, v0}, Landroidx/media3/common/MimeTypes;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    and-int/2addr p1, v0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->F:Z

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->G:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    move v1, v2

    :goto_3
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->f:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz p0, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;->t()V

    :cond_4
    return-void

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final d(Landroidx/media3/common/DataReader;IZ)I
    .locals 7

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->b(I)I

    move-result p2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    iget-object v2, v1, Landroidx/media3/exoplayer/upstream/Allocation;->a:[B

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iget v1, v1, Landroidx/media3/exoplayer/upstream/Allocation;->b:I

    add-int/2addr v0, v1

    invoke-interface {p1, v2, v0, p2}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    cmp-long p2, p2, v1

    if-nez p2, :cond_2

    iget-object p2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :cond_2
    return p1
.end method

.method public g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p4

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->b(Landroidx/media3/common/Format;)V

    :cond_0
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    iget-boolean v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    if-eqz v6, :cond_3

    if-nez v5, :cond_2

    goto/16 :goto_6

    :cond_2
    iput-boolean v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    :cond_3
    iget-wide v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    add-long v6, p1, v6

    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->F:Z

    if-eqz v8, :cond_6

    iget-wide v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    goto/16 :goto_6

    :cond_4
    if-nez v2, :cond_6

    iget-boolean v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->G:Z

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    iput-boolean v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->G:Z

    :cond_5
    or-int/lit8 v2, p3, 0x1

    goto :goto_1

    :cond_6
    move/from16 v2, p3

    :goto_1
    iget-boolean v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->I:Z

    const/4 v9, -0x1

    if-eqz v8, :cond_e

    if-eqz v5, :cond_d

    monitor-enter p0

    :try_start_0
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-nez v5, :cond_8

    iget-wide v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v6, v10

    if-lez v5, :cond_7

    move v5, v4

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    monitor-exit p0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_8
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-wide v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->p(I)J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    cmp-long v5, v10, v6

    if-ltz v5, :cond_9

    monitor-exit p0

    move v5, v3

    goto :goto_4

    :cond_9
    :try_start_4
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v8

    :cond_a
    :goto_3
    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    if-le v5, v10, :cond_b

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v10, v10, v8

    cmp-long v10, v10, v6

    if-ltz v10, :cond_b

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v8, v9, :cond_a

    iget v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    sub-int/2addr v8, v4

    goto :goto_3

    :cond_b
    iget v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    add-int/2addr v8, v5

    invoke-virtual {v1, v8}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move v5, v4

    :goto_4
    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    iput-boolean v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->I:Z

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :cond_d
    :goto_6
    return-void

    :cond_e
    :goto_7
    iget-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-wide v10, v5, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    int-to-long v12, v0

    sub-long/2addr v10, v12

    move/from16 v5, p5

    int-to-long v12, v5

    sub-long/2addr v10, v12

    monitor-enter p0

    :try_start_7
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-lez v5, :cond_10

    sub-int/2addr v5, v4

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v5

    iget-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    aget-wide v12, v8, v5

    iget-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    aget v5, v8, v5

    int-to-long v14, v5

    add-long/2addr v12, v14

    cmp-long v5, v12, v10

    if-gtz v5, :cond_f

    move v5, v4

    goto :goto_8

    :cond_f
    move v5, v3

    :goto_8
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->g(Z)V

    goto :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_f

    :cond_10
    :goto_9
    const/high16 v5, 0x20000000

    and-int/2addr v5, v2

    if-eqz v5, :cond_11

    move v5, v4

    goto :goto_a

    :cond_11
    move v5, v3

    :goto_a
    iput-boolean v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    iget-wide v12, v1, Landroidx/media3/exoplayer/source/SampleQueue;->u:J

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v5, v12, v14

    if-eqz v5, :cond_12

    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    if-ne v5, v9, :cond_12

    cmp-long v5, v6, v12

    if-ltz v5, :cond_12

    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v5, v8

    iput v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    :cond_12
    iget v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    invoke-virtual {v1, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v5

    iget-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aput-wide v6, v8, v5

    iget-object v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    aput-wide v10, v6, v5

    iget-object v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    aput v0, v6, v5

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    aput v2, v0, v5

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aput-object p6, v0, v5

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->E:J

    aput-wide v6, v0, v5

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_13

    move v0, v4

    goto :goto_b

    :cond_13
    move v0, v3

    :goto_b
    if-nez v0, :cond_14

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    invoke-virtual {v0, v2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_14
    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v2, :cond_15

    iget-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v2, v5, v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->d(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    move-result-object v2

    goto :goto_c

    :cond_15
    sget-object v2, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->d0:Lmt;

    :goto_c
    iget-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v6, v7

    new-instance v7, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    invoke-direct {v7, v0, v2}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;)V

    iget-object v0, v5, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    iget v2, v5, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    if-ne v2, v9, :cond_17

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_16

    move v2, v4

    goto :goto_d

    :cond_16
    move v2, v3

    :goto_d
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput v3, v5, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    :cond_17
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_19

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-lt v6, v2, :cond_18

    move v8, v4

    goto :goto_e

    :cond_18
    move v8, v3

    :goto_e
    invoke-static {v8}, Lcom/google/common/base/Preconditions;->g(Z)V

    if-ne v2, v6, :cond_19

    iget-object v2, v5, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/common/util/Consumer;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_1a
    iget v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v0, v4

    iput v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    iget v2, v1, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    if-ne v0, v2, :cond_1b

    add-int/lit16 v0, v2, 0x3e8

    new-array v4, v0, [J

    new-array v5, v0, [J

    new-array v6, v0, [J

    new-array v7, v0, [I

    new-array v8, v0, [I

    new-array v9, v0, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    sub-int/2addr v2, v10

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    invoke-static {v11, v10, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    invoke-static {v10, v11, v6, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    invoke-static {v10, v11, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    invoke-static {v10, v11, v8, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    invoke-static {v10, v11, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    iget v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    invoke-static {v10, v11, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    invoke-static {v11, v3, v5, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    invoke-static {v11, v3, v6, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    invoke-static {v11, v3, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    invoke-static {v11, v3, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-static {v11, v3, v9, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    invoke-static {v11, v3, v4, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, v1, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    iput-object v6, v1, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    iput-object v7, v1, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    iput-object v8, v1, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    iput-object v9, v1, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object v4, v1, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    iput v3, v1, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    iput v0, v1, Landroidx/media3/exoplayer/source/SampleQueue;->i:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_1b
    monitor-exit p0

    return-void

    :goto_f
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method public final h(I)J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->p(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    const/4 p1, 0x0

    if-gez v1, :cond_1

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-lt v0, v4, :cond_3

    iget-object v4, v1, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/common/util/Consumer;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    iget p1, v1, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    if-lez p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    if-nez p1, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    :cond_4
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_5
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    aget-wide p0, p1, p0

    return-wide p0
.end method

.method public final i(ZZJ)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    iget v8, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    aget-wide v4, v4, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    cmp-long v4, p3, v4

    if-gez v4, :cond_1

    :cond_0
    move-object v5, p0

    goto :goto_2

    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p2, v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    :cond_2
    move-object v5, p0

    move v10, p1

    move-wide v6, p3

    move v9, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v5, p0

    goto :goto_4

    :goto_0
    :try_start_2
    invoke-virtual/range {v5 .. v10}, Landroidx/media3/exoplayer/source/SampleQueue;->n(JIIZ)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    monitor-exit v5

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-virtual {v5, p0}, Landroidx/media3/exoplayer/source/SampleQueue;->h(I)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v5

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, p0

    goto :goto_1

    :goto_2
    monitor-exit v5

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroidx/media3/exoplayer/source/SampleDataQueue;->a(J)V

    return-void

    :goto_4
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->h(I)J

    move-result-wide v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->a(J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final k(I)J
    .locals 8

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_0

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    sub-int/2addr v1, v4

    if-gt v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->p(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-ge p1, v0, :cond_2

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_1
    if-ltz v4, :cond_3

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-ge p1, v5, :cond_3

    iget-object v5, v0, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/common/util/Consumer;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget p1, v0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    iput v1, v0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-eqz p1, :cond_5

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    aget-wide v0, v0, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_5
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final l(I)V
    .locals 8

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->k(I)J

    move-result-wide v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->b:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->a:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v5, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    iget-wide v5, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    cmp-long v0, v0, v5

    iget-object v1, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    if-lez v0, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/upstream/Allocator;->a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v4, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v4, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    invoke-direct {v0, v4, v5, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    iget-wide v6, v3, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    cmp-long p1, v4, v6

    if-nez p1, :cond_4

    move-object v3, v0

    :cond_4
    iput-object v3, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    if-ne p1, v1, :cond_5

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :cond_5
    return-void

    :cond_6
    :goto_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-interface {v2, v0}, Landroidx/media3/exoplayer/upstream/Allocator;->a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    iput-object v4, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v4, v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :goto_4
    new-instance v0, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    invoke-direct {v0, v1, v2, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    return-void
.end method

.method public final m(JIIZ)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v2, v2, p3

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    if-ne p3, v2, :cond_1

    move p3, v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    return p4

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final n(JIIZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p4, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v3, v3, p3

    cmp-long v5, v3, p1

    if-gtz v5, :cond_4

    if-eqz p5, :cond_0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    aget v5, v5, p3

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_0
    cmp-long v0, v3, p1

    if-nez v0, :cond_1

    return v2

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    if-ne p3, v3, :cond_3

    move p3, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public o(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Landroidx/media3/common/Format;->t:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/common/Format;->t:J

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    add-long/2addr v1, p0

    iput-wide v1, v0, Landroidx/media3/common/Format$Builder;->s:J

    new-instance p0, Landroidx/media3/common/Format;

    invoke-direct {p0, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final p(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final r(I)I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    add-int/2addr v0, p1

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->i:I

    if-ge v0, p0, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized s(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v4

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    const/4 v7, 0x0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v2, v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    :cond_1
    move-object v1, p0

    goto :goto_2

    :cond_2
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    if-eqz p3, :cond_3

    sub-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_3
    sub-int v5, v1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->n(JIIZ)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_4

    monitor-exit v1

    return v7

    :cond_4
    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    :goto_1
    move-object p0, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, p0

    goto :goto_1

    :goto_2
    monitor-exit v1

    return v7

    :goto_3
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final declared-synchronized t()Landroidx/media3/common/Format;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized u(Z)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    if-lt v0, v1, :cond_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-nez v1, :cond_4

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    monitor-exit p0

    return v3

    :cond_4
    :try_start_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/SpannedData;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq p1, v0, :cond_5

    monitor-exit p0

    return v3

    :cond_5
    :try_start_3
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->v(I)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final v(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->c()Z

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

.method public final w(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    iget-object v2, p1, Landroidx/media3/common/Format;->s:Landroidx/media3/common/DrmInitData;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->d:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v3, :cond_2

    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->c(Landroidx/media3/common/Format;)I

    move-result v4

    invoke-virtual {p1}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v5

    iput v4, v5, Landroidx/media3/common/Format$Builder;->O:I

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v5}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    goto :goto_2

    :cond_2
    move-object v4, p1

    :goto_2
    iput-object v4, p2, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v4, p2, Landroidx/media3/exoplayer/FormatHolder;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->e:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-interface {v3, v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->b(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->h:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object p1, p2, Landroidx/media3/exoplayer/FormatHolder;->a:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_5

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final declared-synchronized x()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->j:[J

    aget-wide v0, v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->E:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final y(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I
    .locals 11

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    monitor-enter p0

    :try_start_0
    iput-boolean v1, p2, Landroidx/media3/decoder/DecoderInputBuffer;->f:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->q()I

    move-result v4

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-lt v4, v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    if-eq v6, v7, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    const/4 v7, -0x4

    const/4 v8, 0x4

    const/4 v9, -0x5

    const/4 v10, -0x3

    if-eqz v6, :cond_9

    if-eqz v5, :cond_3

    goto :goto_6

    :cond_3
    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    invoke-virtual {v5, v4}, Landroidx/media3/exoplayer/source/SpannedData;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->a:Landroidx/media3/common/Format;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    if-eq v4, v0, :cond_4

    goto :goto_5

    :cond_4
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->r(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->v(I)Z

    move-result v0

    if-nez v0, :cond_5

    iput-boolean v2, p2, Landroidx/media3/decoder/DecoderInputBuffer;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :goto_3
    move v9, v10

    goto :goto_8

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    :cond_5
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->m:[I

    aget v0, v0, p1

    iput v0, p2, Landroidx/media3/decoder/Buffer;->b:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_7

    if-nez p4, :cond_6

    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    if-eqz p4, :cond_7

    :cond_6
    const/high16 p4, 0x20000000

    invoke-virtual {p2, p4}, Landroidx/media3/decoder/Buffer;->e(I)V

    :cond_7
    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->n:[J

    aget-wide v4, p4, p1

    iput-wide v4, p2, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->l:[I

    aget p4, p4, p1

    iput p4, v3, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->a:I

    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->k:[J

    aget-wide v4, p4, p1

    iput-wide v4, v3, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->b:J

    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->o:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    aget-object p1, p4, p1

    iput-object p1, v3, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->c:Landroidx/media3/extractor/TrackOutput$CryptoData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_4
    move v9, v7

    goto :goto_8

    :cond_8
    :goto_5
    :try_start_2
    invoke-virtual {p0, v4, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->w(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto :goto_8

    :cond_9
    :goto_6
    if-nez p4, :cond_d

    :try_start_3
    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    if-nez p4, :cond_d

    if-eqz v5, :cond_a

    goto :goto_7

    :cond_a
    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    if-eqz p4, :cond_c

    if-nez v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->g:Landroidx/media3/common/Format;

    if-eq p4, v0, :cond_c

    :cond_b
    invoke-virtual {p0, p4, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->w(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto :goto_8

    :cond_c
    monitor-exit p0

    goto :goto_3

    :cond_d
    :goto_7
    :try_start_4
    iput v8, p2, Landroidx/media3/decoder/Buffer;->b:I

    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p2, Landroidx/media3/decoder/DecoderInputBuffer;->g:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    goto :goto_4

    :goto_8
    if-ne v9, v7, :cond_11

    invoke-virtual {p2, v8}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result p1

    if-nez p1, :cond_11

    and-int/lit8 p1, p3, 0x1

    if-eqz p1, :cond_e

    move v1, v2

    :cond_e
    and-int/lit8 p1, p3, 0x4

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->b:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    if-eqz v1, :cond_f

    iget-object p4, p1, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleDataQueue;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p4, p2, p3, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->e(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    goto :goto_9

    :cond_f
    iget-object p4, p1, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v0, p1, Landroidx/media3/exoplayer/source/SampleDataQueue;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p4, p2, p3, v0}, Landroidx/media3/exoplayer/source/SampleDataQueue;->e(Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    move-result-object p2

    iput-object p2, p1, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :cond_10
    :goto_9
    if-nez v1, :cond_11

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    :cond_11
    return v9

    :goto_a
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public final z(Z)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->a:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget-object v2, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->a:Landroidx/media3/exoplayer/upstream/Allocator;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/upstream/Allocator;->a(Landroidx/media3/exoplayer/upstream/Allocator$AllocationNode;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    iput-object v4, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iget v3, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->b:I

    iget-object v5, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->c:Landroidx/media3/exoplayer/upstream/Allocation;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->a:J

    int-to-long v10, v3

    iput-wide v10, v1, Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;->b:J

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->d:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->e:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->f:Landroidx/media3/exoplayer/source/SampleDataQueue$AllocationNode;

    iput-wide v8, v0, Landroidx/media3/exoplayer/source/SampleDataQueue;->g:J

    invoke-interface {v2}, Landroidx/media3/exoplayer/upstream/Allocator;->d()V

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->p:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->q:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->r:I

    iput v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->s:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->x:I

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->z:Z

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->t:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->v:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->w:J

    iput-boolean v6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->y:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->c:Landroidx/media3/exoplayer/source/SpannedData;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    :goto_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v6, v3, :cond_2

    iget-object v3, v1, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/common/util/Consumer;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Landroidx/media3/common/util/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iput v0, v1, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_3

    iput-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->C:Landroidx/media3/common/Format;

    iput-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->D:Landroidx/media3/common/Format;

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->A:Z

    iput-boolean v7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->F:Z

    :cond_3
    return-void
.end method
