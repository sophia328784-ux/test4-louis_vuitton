.class final Landroidx/media3/exoplayer/hls/HlsMediaChunk;
.super Landroidx/media3/exoplayer/source/chunk/MediaChunk;
.source "SourceFile"


# static fields
.field public static final N:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final A:Z

.field public final B:Z

.field public final C:J

.field public D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

.field public E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

.field public F:I

.field public G:Z

.field public volatile H:Z

.field public I:Z

.field public J:Lcom/google/common/collect/ImmutableList;

.field public K:Z

.field public L:J

.field public M:Z

.field public final k:I

.field public final l:I

.field public final m:Landroid/net/Uri;

.field public final n:Z

.field public final o:I

.field public final p:Landroidx/media3/datasource/DataSource;

.field public final q:Landroidx/media3/datasource/DataSpec;

.field public final r:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

.field public final s:Z

.field public final t:Z

.field public final u:Landroidx/media3/common/util/TimestampAdjuster;

.field public final v:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

.field public final w:Ljava/util/List;

.field public final x:Landroidx/media3/common/DrmInitData;

.field public final y:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

.field public final z:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/HlsExtractorFactory;Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ZLandroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLandroidx/media3/common/util/TimestampAdjuster;JLandroidx/media3/common/DrmInitData;Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;Landroidx/media3/extractor/metadata/id3/Id3Decoder;Landroidx/media3/common/util/ParsableByteArray;ZZLandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 13

    move-object/from16 v0, p7

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p11

    move-object/from16 v6, p12

    move-wide/from16 v7, p13

    move-wide/from16 v9, p15

    move-wide/from16 v11, p17

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/source/chunk/MediaChunk;-><init>(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Landroidx/media3/common/Format;ILjava/lang/Object;JJJ)V

    move/from16 p2, p5

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->A:Z

    move/from16 p2, p19

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->o:I

    if-eqz p20, :cond_0

    sub-long v2, p15, p13

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->L:J

    move/from16 p2, p21

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->l:I

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->q:Landroidx/media3/datasource/DataSpec;

    move-object/from16 p2, p6

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->p:Landroidx/media3/datasource/DataSource;

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->G:Z

    move/from16 p2, p8

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->B:Z

    move-object/from16 p2, p9

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->m:Landroid/net/Uri;

    move/from16 p2, p23

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->s:Z

    move-object/from16 p2, p24

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->u:Landroidx/media3/common/util/TimestampAdjuster;

    move-wide/from16 v2, p25

    iput-wide v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->C:J

    move/from16 p2, p22

    iput-boolean p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->t:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->v:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    move-object/from16 p1, p10

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->w:Ljava/util/List;

    move-object/from16 p1, p27

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->x:Landroidx/media3/common/DrmInitData;

    move-object/from16 p1, p28

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->r:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    move-object/from16 p1, p29

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->y:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    move-object/from16 p1, p30

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->z:Landroidx/media3/common/util/ParsableByteArray;

    move/from16 p1, p31

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->M:Z

    move/from16 p1, p32

    iput-boolean p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->n:Z

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->J:Lcom/google/common/collect/ImmutableList;

    sget-object p1, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->k:I

    return-void
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 4

    invoke-static {p0}, Lcom/google/common/base/Ascii;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->r:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->r:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iput-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->G:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->q:Landroidx/media3/datasource/DataSpec;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->p:Landroidx/media3/datasource/DataSource;

    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->G:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->B:Z

    invoke-virtual {p0, v2, v0, v3, v1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->b(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V

    iput v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->F:I

    iput-boolean v1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->G:Z

    :goto_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->H:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->t:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->i:Landroidx/media3/datasource/StatsDataSource;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->b:Landroidx/media3/datasource/DataSpec;

    iget-boolean v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->A:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->b(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V

    :cond_2
    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->H:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->I:Z

    :cond_3
    return-void
.end method

.method public final b(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;ZZ)V
    .locals 8

    iget v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->F:I

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    move v0, p3

    move-object p3, p2

    goto :goto_2

    :cond_1
    int-to-long v2, v0

    iget-wide v4, p2, Landroidx/media3/datasource/DataSpec;->g:J

    const-wide/16 v6, -0x1

    cmp-long p3, v4, v6

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    sub-long v6, v4, v2

    :goto_1
    invoke-virtual {p2, v2, v3, v6, v7}, Landroidx/media3/datasource/DataSpec;->b(JJ)Landroidx/media3/datasource/DataSpec;

    move-result-object p3

    move v0, v1

    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, p3, p4}, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->g(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/extractor/DefaultExtractorInput;

    move-result-object p3

    if-eqz v0, :cond_3

    iget p4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->F:I

    invoke-virtual {p3, p4, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->e(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_8

    :cond_3
    :goto_3
    :try_start_1
    iget-boolean p4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->H:Z

    if-nez p4, :cond_4

    iget-object p4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {p4, p3}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->c(Landroidx/media3/extractor/DefaultExtractorInput;)Z

    move-result p4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_4

    goto :goto_3

    :catchall_1
    move-exception p4

    goto :goto_7

    :catch_0
    move-exception p4

    goto :goto_5

    :cond_4
    :try_start_2
    iget-wide p3, p3, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    :goto_4
    iget-wide v0, p2, Landroidx/media3/datasource/DataSpec;->f:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :goto_5
    :try_start_3
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->f:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_5

    iget-object p4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    invoke-interface {p4}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-wide p3, p3, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    goto :goto_4

    :goto_6
    sub-long/2addr p3, v0

    long-to-int p2, p3

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->F:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->a(Landroidx/media3/datasource/DataSource;)V

    return-void

    :cond_5
    :try_start_5
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    :try_start_6
    iget-wide v0, p3, Landroidx/media3/extractor/DefaultExtractorInput;->d:J

    iget-wide p2, p2, Landroidx/media3/datasource/DataSpec;->f:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->F:I

    throw p4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    invoke-static {p1}, Landroidx/media3/datasource/DataSourceUtil;->a(Landroidx/media3/datasource/DataSource;)V

    throw p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->H:Z

    return-void
.end method

.method public final e(I)I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->M:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->J:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->J:Lcom/google/common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->L:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final g(Landroidx/media3/datasource/DataSource;Landroidx/media3/datasource/DataSpec;Z)Landroidx/media3/extractor/DefaultExtractorInput;
    .locals 12

    invoke-interface {p1, p2}, Landroidx/media3/datasource/DataSource;->a(Landroidx/media3/datasource/DataSpec;)J

    move-result-wide v4

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v6, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->u:Landroidx/media3/common/util/TimestampAdjuster;

    iget-boolean v11, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->s:Z

    iget-wide v7, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    iget-wide v9, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->C:J

    invoke-virtual/range {v6 .. v11}, Landroidx/media3/common/util/TimestampAdjuster;->g(JJZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0

    :cond_0
    :goto_0
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-wide v2, p2, Landroidx/media3/datasource/DataSpec;->f:J

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/DefaultExtractorInput;-><init>(Landroidx/media3/common/DataReader;JJ)V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    const/4 p3, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_10

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->z:Landroidx/media3/common/util/ParsableByteArray;

    iput v7, v0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v2, 0xa

    :try_start_1
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v3, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v0, v7, v7, v2, v3}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_1

    :catch_2
    :goto_1
    move-wide v10, v8

    goto/16 :goto_4

    :cond_1
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->z()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    iget-object v5, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v6, v5

    if-le v4, v6, :cond_2

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v5, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v0, v7, v2, v3, v4}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->y:Landroidx/media3/extractor/metadata/id3/Id3Decoder;

    iget-object v4, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v2, v3, v4}, Landroidx/media3/extractor/metadata/id3/Id3Decoder;->c(I[B)Landroidx/media3/common/Metadata;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v3, v2

    move v4, v7

    :goto_2
    const/4 v5, 0x0

    if-ge v4, v3, :cond_6

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v11, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/Metadata$Entry;

    move-object v10, v6

    check-cast v10, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    iget-object v10, v10, Landroidx/media3/extractor/metadata/id3/PrivFrame;->b:Ljava/lang/String;

    const-string v11, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v5, v6

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    check-cast v5, Landroidx/media3/extractor/metadata/id3/PrivFrame;

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    iget-object v2, v5, Landroidx/media3/extractor/metadata/id3/PrivFrame;->c:[B

    iget-object v3, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v4, 0x8

    invoke-static {v2, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p1, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v2

    const-wide v4, 0x1ffffffffL

    and-long/2addr v2, v4

    move-wide v10, v2

    :goto_4
    iput v7, v0, Landroidx/media3/extractor/DefaultExtractorInput;->f:I

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->r:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->f()Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    goto :goto_5

    :cond_8
    iget-object p1, p2, Landroidx/media3/datasource/DataSpec;->a:Landroid/net/Uri;

    iget-object v4, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->u:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-interface {v1}, Landroidx/media3/datasource/DataSource;->f()Ljava/util/Map;

    move-result-object v5

    move-object v6, v0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->v:Landroidx/media3/exoplayer/hls/HlsExtractorFactory;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->d:Landroidx/media3/common/Format;

    iget-object v3, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->w:Ljava/util/List;

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/hls/HlsExtractorFactory;->b(Landroid/net/Uri;Landroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/common/util/TimestampAdjuster;Ljava/util/Map;Landroidx/media3/extractor/DefaultExtractorInput;)Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;

    move-result-object p1

    move-object v0, v6

    :goto_5
    iput-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/BundledHlsMediaChunkExtractor;->a:Landroidx/media3/extractor/Extractor;

    invoke-interface {p1}, Landroidx/media3/extractor/Extractor;->c()Landroidx/media3/extractor/Extractor;

    move-result-object p1

    instance-of p2, p1, Landroidx/media3/extractor/ts/AdtsExtractor;

    if-nez p2, :cond_a

    instance-of p2, p1, Landroidx/media3/extractor/ts/Ac3Extractor;

    if-nez p2, :cond_a

    instance-of p2, p1, Landroidx/media3/extractor/ts/Ac4Extractor;

    if-nez p2, :cond_a

    instance-of p1, p1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    if-eqz p1, :cond_9

    goto :goto_6

    :cond_9
    move p1, v7

    goto :goto_7

    :cond_a
    :goto_6
    move p1, p3

    :goto_7
    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    if-eqz p1, :cond_d

    cmp-long p1, v10, v8

    if-eqz p1, :cond_b

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->u:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {p1, v10, v11}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v1

    goto :goto_8

    :cond_b
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/Chunk;->g:J

    :goto_8
    iget-wide v3, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Y:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_f

    iput-wide v1, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Y:J

    iget-object p1, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length p2, p1

    move v3, v7

    :goto_9
    if-ge v3, p2, :cond_f

    aget-object v4, p1, v3

    iget-wide v5, v4, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    cmp-long v5, v5, v1

    if-eqz v5, :cond_c

    iput-wide v1, v4, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    iput-boolean p3, v4, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    iget-wide v1, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Y:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_f

    iput-wide v3, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Y:J

    iget-object p1, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length p2, p1

    move v1, v7

    :goto_a
    if-ge v1, p2, :cond_f

    aget-object v2, p1, v1

    iget-wide v5, v2, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    cmp-long v5, v5, v3

    if-eqz v5, :cond_e

    iput-wide v3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->H:J

    iput-boolean p3, v2, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_f
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object p1, p1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->y:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->D:Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;

    iget-object p2, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/hls/HlsMediaChunkExtractor;->b(Landroidx/media3/extractor/ExtractorOutput;)V

    :cond_10
    iget-object p1, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->E:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    iget-object p2, p1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Z:Landroidx/media3/common/DrmInitData;

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/HlsMediaChunk;->x:Landroidx/media3/common/DrmInitData;

    invoke-static {p2, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_12

    iput-object p0, p1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->Z:Landroidx/media3/common/DrmInitData;

    :goto_b
    iget-object p2, p1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, p2

    if-ge v7, v1, :cond_12

    iget-object v1, p1, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->P:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_11

    aget-object p2, p2, v7

    iput-object p0, p2, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;->K:Landroidx/media3/common/DrmInitData;

    iput-boolean p3, p2, Landroidx/media3/exoplayer/source/SampleQueue;->B:Z

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    return-object v0
.end method
