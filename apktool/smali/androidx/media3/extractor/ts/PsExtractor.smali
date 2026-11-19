.class public final Landroidx/media3/extractor/ts/PsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/PsExtractor$PesReader;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/TimestampAdjuster;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/extractor/ts/PsDurationReader;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

.field public j:Landroidx/media3/extractor/ExtractorOutput;

.field public k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 29
    new-instance v0, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>(Landroidx/media3/common/util/TimestampAdjuster;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->a:Landroidx/media3/common/util/TimestampAdjuster;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x1000

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    new-instance p1, Landroidx/media3/extractor/ts/PsDurationReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/PsDurationReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->d:Landroidx/media3/extractor/ts/PsDurationReader;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7

    iget-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    iget-object p2, p0, Landroidx/media3/extractor/ts/PsExtractor;->a:Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter p2

    :try_start_0
    iget-wide v0, p2, Landroidx/media3/common/util/TimestampAdjuster;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroidx/media3/common/util/TimestampAdjuster;->d()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    cmp-long v0, v5, p3

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    move v0, v1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->f(J)V

    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/ts/PsExtractor;->i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->c(J)V

    :cond_4
    move p0, v4

    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p0, p2, :cond_5

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iput-boolean v4, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->f:Z

    iget-object p2, p2, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    invoke-interface {p2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->c()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    const/16 p0, 0xe

    new-array v0, p0, [B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p0, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr p0, v3

    const/4 v3, 0x2

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr p0, v4

    const/4 v4, 0x3

    aget-byte v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    or-int/2addr p0, v6

    const/16 v6, 0x1ba

    if-eq v6, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    aget-byte v6, v0, p0

    and-int/lit16 v6, v6, 0xc4

    const/16 v7, 0x44

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x6

    aget-byte v6, v0, v6

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_2

    goto :goto_0

    :cond_2
    aget-byte v6, v0, v5

    and-int/2addr v6, p0

    if-eq v6, p0, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x9

    aget-byte p0, v0, p0

    and-int/2addr p0, v2

    if-eq p0, v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0xc

    aget-byte p0, v0, p0

    and-int/2addr p0, v4

    if-eq p0, v4, :cond_5

    goto :goto_0

    :cond_5
    const/16 p0, 0xd

    aget-byte p0, v0, p0

    and-int/lit8 p0, p0, 0x7

    invoke-virtual {p1, p0, v1}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    invoke-virtual {p1, v1, v1, v4, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    aget-byte p1, v0, v2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p0, p1

    aget-byte p1, v0, v3

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    if-ne v2, p0, :cond_6

    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v3, v8, v10

    const/4 v12, 0x3

    const-wide/16 v13, 0x0

    const/16 v15, 0x1ba

    iget-object v6, v0, Landroidx/media3/extractor/ts/PsExtractor;->d:Landroidx/media3/extractor/ts/PsDurationReader;

    const/4 v7, 0x4

    move-wide/from16 v16, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v3, :cond_a

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->c:Z

    if-nez v4, :cond_b

    iget-object v0, v6, Landroidx/media3/extractor/ts/PsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    iget-object v3, v6, Landroidx/media3/extractor/ts/PsDurationReader;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget-boolean v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->e:Z

    const-wide/16 v8, 0x4e20

    if-nez v4, :cond_3

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v0, v8

    int-to-long v8, v0

    sub-long/2addr v4, v8

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-eqz v8, :cond_0

    iput-wide v4, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v10

    :cond_0
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v11, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    sub-int/2addr v1, v7

    :goto_0
    if-lt v1, v0, :cond_2

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v1, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->b(I[B)I

    move-result v2

    if-ne v2, v15, :cond_1

    add-int/lit8 v2, v1, 0x4

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->c(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v4

    cmp-long v2, v4, v18

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move-wide/from16 v4, v18

    :goto_1
    iput-wide v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->g:J

    iput-boolean v10, v6, Landroidx/media3/extractor/ts/PsDurationReader;->e:Z

    return v11

    :cond_3
    iget-wide v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->g:J

    cmp-long v4, v4, v18

    if-nez v4, :cond_4

    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v11

    :cond_4
    iget-boolean v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->d:Z

    if-nez v4, :cond_8

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    cmp-long v4, v4, v13

    if-eqz v4, :cond_5

    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v10

    :cond_5
    invoke-virtual {v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v11, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    iget v0, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v1, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    :goto_2
    add-int/lit8 v2, v1, -0x3

    if-ge v0, v2, :cond_7

    iget-object v2, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v0, v2}, Landroidx/media3/extractor/ts/PsDurationReader;->b(I[B)I

    move-result v2

    if-ne v2, v15, :cond_6

    add-int/lit8 v2, v0, 0x4

    invoke-virtual {v3, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static {v3}, Landroidx/media3/extractor/ts/PsDurationReader;->c(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v4

    cmp-long v2, v4, v18

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    move-wide/from16 v4, v18

    :goto_3
    iput-wide v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->f:J

    iput-boolean v10, v6, Landroidx/media3/extractor/ts/PsDurationReader;->d:Z

    return v11

    :cond_8
    iget-wide v2, v6, Landroidx/media3/extractor/ts/PsDurationReader;->f:J

    cmp-long v4, v2, v18

    if-nez v4, :cond_9

    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v11

    :cond_9
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v2

    iget-wide v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->g:J

    invoke-virtual {v0, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->c(J)J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->h:J

    invoke-virtual {v6, v1}, Landroidx/media3/extractor/ts/PsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v11

    :cond_a
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :cond_b
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->k:Z

    if-nez v4, :cond_d

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->k:Z

    iget-wide v4, v6, Landroidx/media3/extractor/ts/PsDurationReader;->h:J

    cmp-long v18, v4, v18

    if-eqz v18, :cond_c

    move-wide/from16 v18, v4

    new-instance v4, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v5, v6, Landroidx/media3/extractor/ts/PsDurationReader;->a:Landroidx/media3/common/util/TimestampAdjuster;

    move v13, v7

    move-wide/from16 v6, v18

    invoke-direct/range {v4 .. v9}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V

    iput-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    iget-object v5, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v4, v4, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-interface {v5, v4}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_4

    :cond_c
    move v13, v7

    move-wide v6, v4

    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v5, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v5, v6, v7}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v4, v5}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_4

    :cond_d
    move v13, v7

    :goto_4
    iget-object v4, v0, Landroidx/media3/extractor/ts/PsExtractor;->i:Landroidx/media3/extractor/ts/PsBinarySearchSeeker;

    if-eqz v4, :cond_e

    iget-object v5, v4, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v5, :cond_e

    invoke-virtual {v4, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_e
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    if-eqz v3, :cond_f

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v2

    sub-long/2addr v8, v2

    goto :goto_5

    :cond_f
    move-wide/from16 v8, v16

    :goto_5
    cmp-long v2, v8, v16

    if-eqz v2, :cond_10

    const-wide/16 v2, 0x4

    cmp-long v2, v8, v2

    if-gez v2, :cond_10

    goto :goto_6

    :cond_10
    iget-object v2, v0, Landroidx/media3/extractor/ts/PsExtractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v10, v11, v13, v3}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_6

    :cond_11
    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    const/16 v4, 0x1b9

    if-ne v3, v4, :cond_12

    :goto_6
    const/4 v0, -0x1

    return v0

    :cond_12
    if-ne v3, v15, :cond_13

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v3, 0xa

    invoke-interface {v1, v11, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xe

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v11

    :cond_13
    const/16 v4, 0x1bb

    const/4 v5, 0x2

    const/4 v6, 0x6

    if-ne v3, v4, :cond_14

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v11, v5, v0}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v0

    add-int/2addr v0, v6

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v11

    :cond_14
    and-int/lit16 v4, v3, -0x100

    const/16 v7, 0x8

    shr-int/2addr v4, v7

    if-eq v4, v10, :cond_15

    invoke-interface {v1, v10}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v11

    :cond_15
    and-int/lit16 v4, v3, 0xff

    iget-object v8, v0, Landroidx/media3/extractor/ts/PsExtractor;->b:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-boolean v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->e:Z

    if-nez v14, :cond_1b

    if-nez v9, :cond_19

    const/16 v14, 0xbd

    const-string v15, "video/mp2p"

    if-ne v4, v14, :cond_16

    new-instance v3, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v3, v15}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->f:Z

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    iput-wide v14, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    goto :goto_7

    :cond_16
    and-int/lit16 v14, v3, 0xe0

    const/16 v13, 0xc0

    if-ne v14, v13, :cond_17

    new-instance v3, Landroidx/media3/extractor/ts/MpegAudioReader;

    invoke-direct {v3, v15}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->f:Z

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    goto :goto_7

    :cond_17
    and-int/lit16 v3, v3, 0xf0

    const/16 v13, 0xe0

    if-ne v3, v13, :cond_18

    new-instance v3, Landroidx/media3/extractor/ts/H262Reader;

    invoke-direct {v3, v15}, Landroidx/media3/extractor/ts/H262Reader;-><init>(Ljava/lang/String;)V

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->g:Z

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    iput-wide v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    goto :goto_7

    :cond_18
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_19

    new-instance v9, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/16 v13, 0x100

    invoke-direct {v9, v4, v13}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    iget-object v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3, v13, v9}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    new-instance v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;

    iget-object v13, v0, Landroidx/media3/extractor/ts/PsExtractor;->a:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-direct {v9, v3, v13}, Landroidx/media3/extractor/ts/PsExtractor$PesReader;-><init>(Landroidx/media3/extractor/ts/ElementaryStreamReader;Landroidx/media3/common/util/TimestampAdjuster;)V

    invoke-virtual {v8, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_19
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->f:Z

    if-eqz v3, :cond_1a

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->g:Z

    if-eqz v3, :cond_1a

    iget-wide v3, v0, Landroidx/media3/extractor/ts/PsExtractor;->h:J

    const-wide/16 v13, 0x2000

    add-long/2addr v3, v13

    goto :goto_8

    :cond_1a
    const-wide/32 v3, 0x100000

    :goto_8
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v13

    cmp-long v3, v13, v3

    if-lez v3, :cond_1b

    iput-boolean v10, v0, Landroidx/media3/extractor/ts/PsExtractor;->e:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/PsExtractor;->j:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    :cond_1b
    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v11, v5, v0}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v0

    add-int/2addr v0, v6

    if-nez v9, :cond_1c

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v11

    :cond_1c
    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v3, v11, v0}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v0, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    iget-object v1, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->c:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v3, v1, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v2, v11, v12, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    iput-boolean v3, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->d:Z

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v3

    iput-boolean v3, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->e:Z

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    iget-object v4, v1, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v2, v11, v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    iget-object v3, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v4, 0x0

    iput-wide v4, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->g:J

    iget-boolean v4, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->d:Z

    if-eqz v4, :cond_1e

    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x1e

    shl-long/2addr v4, v6

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v7, 0xf

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    shl-int/2addr v8, v7

    int-to-long v13, v8

    or-long/2addr v4, v13

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    int-to-long v13, v8

    or-long/2addr v4, v13

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    iget-boolean v8, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->f:Z

    if-nez v8, :cond_1d

    iget-boolean v8, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->e:Z

    if-eqz v8, :cond_1d

    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    int-to-long v12, v8

    shl-long/2addr v12, v6

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    shl-int/2addr v6, v7

    int-to-long v14, v6

    or-long/2addr v12, v14

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v6, v12

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v3, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    iput-boolean v10, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->f:Z

    :cond_1d
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v3

    iput-wide v3, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->g:J

    :cond_1e
    iget-wide v3, v9, Landroidx/media3/extractor/ts/PsExtractor$PesReader;->g:J

    const/4 v13, 0x4

    invoke-interface {v0, v13, v3, v4}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->f(IJ)V

    invoke-interface {v0, v2}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-interface {v0, v11}, Landroidx/media3/extractor/ts/ElementaryStreamReader;->d(Z)V

    iget-object v0, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v0, v0

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    return v11
.end method

.method public final release()V
    .locals 0

    return-void
.end method
