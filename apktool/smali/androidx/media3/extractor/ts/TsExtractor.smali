.class public final Landroidx/media3/extractor/ts/TsExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsExtractor$PatReader;,
        Landroidx/media3/extractor/ts/TsExtractor$PmtReader;,
        Landroidx/media3/extractor/ts/TsExtractor$Flags;,
        Landroidx/media3/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/util/List;

.field public final e:Landroidx/media3/common/util/ParsableByteArray;

.field public final f:Landroid/util/SparseIntArray;

.field public final g:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

.field public final h:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final i:Landroid/util/SparseArray;

.field public final j:Landroid/util/SparseBooleanArray;

.field public final k:Landroid/util/SparseBooleanArray;

.field public final l:Landroidx/media3/extractor/ts/TsDurationReader;

.field public m:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

.field public n:Landroidx/media3/extractor/ExtractorOutput;

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Landroidx/media3/extractor/ts/TsPayloadReader;

.field public t:I

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 146
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v5, p1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x1

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    invoke-direct {v5, p2}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const/4 v2, 0x1

    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    move v1, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor <init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    iput p6, p0, Landroidx/media3/extractor/ts/TsExtractor;->c:I

    iput p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->b:I

    iput-object p3, p0, Landroidx/media3/extractor/ts/TsExtractor;->h:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->d:Ljava/util/List;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->d:Ljava/util/List;

    :goto_1
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x24b8

    new-array p2, p2, [B

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->j:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseBooleanArray;

    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->k:Landroid/util/SparseBooleanArray;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseArray;

    new-instance p4, Landroid/util/SparseIntArray;

    invoke-direct {p4}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->f:Landroid/util/SparseIntArray;

    new-instance p4, Landroidx/media3/extractor/ts/TsDurationReader;

    invoke-direct {p4, p6}, Landroidx/media3/extractor/ts/TsDurationReader;-><init>(I)V

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ts/TsDurationReader;

    sget-object p4, Landroidx/media3/extractor/ExtractorOutput;->g0:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    const/4 p4, -0x1

    iput p4, p0, Landroidx/media3/extractor/ts/TsExtractor;->u:I

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    invoke-interface {p5}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->b()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p4

    move p5, p3

    :goto_2
    if-ge p5, p4, :cond_2

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p6

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-virtual {p2, p6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_2
    new-instance p1, Landroidx/media3/extractor/ts/SectionReader;

    new-instance p4, Landroidx/media3/extractor/ts/TsExtractor$PatReader;

    invoke-direct {p4, p0}, Landroidx/media3/extractor/ts/TsExtractor$PatReader;-><init>(Landroidx/media3/extractor/ts/TsExtractor;)V

    invoke-direct {p1, p4}, Landroidx/media3/extractor/ts/SectionReader;-><init>(Landroidx/media3/extractor/ts/SectionPayloadReader;)V

    invoke-virtual {p2, p3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->s:Landroidx/media3/extractor/ts/TsPayloadReader;

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const v6, 0x1b8a0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x1

    .line 149
    sget-object v3, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7

    .line 145
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7

    .line 144
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v4, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v5, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(I)V

    const v6, 0x1b8a0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 11

    iget-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseArray;

    iget-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->d:Ljava/util/List;

    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :goto_1
    const-wide/16 v4, 0x0

    if-ge v1, v0, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter v6

    :try_start_0
    iget-wide v7, v6, Landroidx/media3/common/util/TimestampAdjuster;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    move v7, v2

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroidx/media3/common/util/TimestampAdjuster;->d()J

    move-result-wide v7

    cmp-long v9, v7, v9

    if-eqz v9, :cond_2

    cmp-long v4, v7, v4

    if-eqz v4, :cond_2

    cmp-long v4, v7, p3

    if-eqz v4, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v3

    :cond_3
    :goto_3
    if-eqz v7, :cond_4

    invoke-virtual {v6, p3, p4}, Landroidx/media3/common/util/TimestampAdjuster;->f(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    cmp-long p2, p3, v4

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->m:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    if-eqz p2, :cond_6

    invoke-virtual {p2, p3, p4}, Landroidx/media3/extractor/BinarySearchSeeker;->c(J)V

    :cond_6
    iget-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p2, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object p2, p0, Landroidx/media3/extractor/ts/TsExtractor;->f:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    move p2, v3

    :goto_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_7

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/extractor/ts/TsPayloadReader;

    invoke-interface {p3}, Landroidx/media3/extractor/ts/TsPayloadReader;->c()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_7
    iput v3, p0, Landroidx/media3/extractor/ts/TsExtractor;->t:I

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/ts/TsExtractor;->b:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsExtractor;->h:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/ts/TsExtractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    const/4 v0, 0x0

    const/16 v1, 0x3ac

    invoke-virtual {p1, v0, v0, v1, p0}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    move v1, v0

    :goto_0
    const/16 v2, 0xbc

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    mul-int/lit16 v3, v2, 0xbc

    add-int/2addr v3, v1

    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1, v0}, Landroidx/media3/extractor/DefaultExtractorInput;->e(IZ)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget v13, v0, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_0

    move v15, v11

    goto :goto_0

    :cond_0
    move v15, v12

    :goto_0
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    const/16 v4, 0x47

    const-wide/16 v16, -0x1

    if-eqz v3, :cond_14

    cmp-long v3, v7, v16

    iget-object v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->l:Landroidx/media3/extractor/ts/TsDurationReader;

    move/from16 v18, v15

    const-wide/16 v14, 0x0

    if-eqz v3, :cond_10

    if-nez v18, :cond_10

    iget-boolean v3, v9, Landroidx/media3/extractor/ts/TsDurationReader;->d:Z

    if-nez v3, :cond_10

    iget v0, v0, Landroidx/media3/extractor/ts/TsExtractor;->u:I

    iget-object v3, v9, Landroidx/media3/extractor/ts/TsDurationReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    iget v7, v9, Landroidx/media3/extractor/ts/TsDurationReader;->a:I

    iget-object v8, v9, Landroidx/media3/extractor/ts/TsDurationReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    if-gtz v0, :cond_1

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v12

    :cond_1
    iget-boolean v10, v9, Landroidx/media3/extractor/ts/TsDurationReader;->f:Z

    if-nez v10, :cond_8

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v13

    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    int-to-long v5, v7

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    int-to-long v5, v3

    sub-long/2addr v13, v5

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v13

    if-eqz v5, :cond_2

    iput-wide v13, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v11

    :cond_2
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-object v2, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v12, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    iget v1, v8, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v2, v8, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/lit16 v3, v2, -0xbc

    :goto_1
    if-lt v3, v1, :cond_7

    iget-object v5, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v6, -0x4

    move v7, v12

    :goto_2
    const/4 v10, 0x4

    if-gt v6, v10, :cond_6

    mul-int/lit16 v10, v6, 0xbc

    add-int/2addr v10, v3

    if-lt v10, v1, :cond_4

    if-ge v10, v2, :cond_4

    aget-byte v10, v5, v10

    if-eq v10, v4, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v7, v11

    const/4 v10, 0x5

    if-ne v7, v10, :cond_5

    invoke-static {v8, v3, v0}, Landroidx/media3/extractor/ts/TsUtil;->a(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v5

    cmp-long v7, v5, v19

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_4
    :goto_3
    move v7, v12

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_7
    move-wide/from16 v5, v19

    :goto_4
    iput-wide v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    iput-boolean v11, v9, Landroidx/media3/extractor/ts/TsDurationReader;->f:Z

    return v12

    :cond_8
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-wide v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    cmp-long v5, v5, v19

    if-nez v5, :cond_9

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v12

    :cond_9
    iget-boolean v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->e:Z

    if-nez v5, :cond_e

    int-to-long v5, v7

    move/from16 v21, v11

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v11

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    cmp-long v5, v5, v14

    if-eqz v5, :cond_a

    iput-wide v14, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v21

    :cond_a
    invoke-virtual {v8, v3}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    iget-object v2, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v5, 0x0

    invoke-interface {v1, v5, v3, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    iget v1, v8, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v2, v8, Landroidx/media3/common/util/ParsableByteArray;->c:I

    :goto_5
    if-ge v1, v2, :cond_d

    iget-object v3, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v3, v3, v1

    if-eq v3, v4, :cond_b

    goto :goto_6

    :cond_b
    invoke-static {v8, v1, v0}, Landroidx/media3/extractor/ts/TsUtil;->a(Landroidx/media3/common/util/ParsableByteArray;II)J

    move-result-wide v5

    cmp-long v3, v5, v19

    if-eqz v3, :cond_c

    goto :goto_7

    :cond_c
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_d
    move-wide/from16 v5, v19

    :goto_7
    iput-wide v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    move/from16 v0, v21

    iput-boolean v0, v9, Landroidx/media3/extractor/ts/TsDurationReader;->e:Z

    const/16 v22, 0x0

    return v22

    :cond_e
    move/from16 v22, v12

    iget-wide v4, v9, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    cmp-long v0, v4, v19

    if-nez v0, :cond_f

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v22

    :cond_f
    invoke-virtual {v3, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->b(J)J

    move-result-wide v4

    iget-wide v6, v9, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    invoke-virtual {v3, v6, v7}, Landroidx/media3/common/util/TimestampAdjuster;->c(J)J

    move-result-wide v2

    sub-long/2addr v2, v4

    iput-wide v2, v9, Landroidx/media3/extractor/ts/TsDurationReader;->i:J

    invoke-virtual {v9, v1}, Landroidx/media3/extractor/ts/TsDurationReader;->a(Landroidx/media3/extractor/ExtractorInput;)V

    return v22

    :cond_10
    const-wide v19, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->q:Z

    if-nez v3, :cond_12

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->q:Z

    iget-wide v5, v9, Landroidx/media3/extractor/ts/TsDurationReader;->i:J

    cmp-long v3, v5, v19

    if-eqz v3, :cond_11

    new-instance v3, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    iget-object v9, v9, Landroidx/media3/extractor/ts/TsDurationReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    move v10, v4

    move-object v4, v9

    iget v9, v0, Landroidx/media3/extractor/ts/TsExtractor;->u:I

    move v11, v10

    iget v10, v0, Landroidx/media3/extractor/ts/TsExtractor;->c:I

    invoke-direct/range {v3 .. v10}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V

    iput-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->m:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    iget-object v4, v0, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    iget-object v3, v3, Landroidx/media3/extractor/BinarySearchSeeker;->a:Landroidx/media3/extractor/BinarySearchSeeker$BinarySearchSeekMap;

    invoke-interface {v4, v3}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_8

    :cond_11
    move v11, v4

    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v4, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v4, v5, v6}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    goto :goto_8

    :cond_12
    move v11, v4

    :goto_8
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->r:Z

    if-eqz v3, :cond_13

    const/4 v5, 0x0

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->r:Z

    invoke-virtual {v0, v14, v15, v14, v15}, Landroidx/media3/extractor/ts/TsExtractor;->a(JJ)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long v3, v3, v14

    if-eqz v3, :cond_13

    iput-wide v14, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    const/16 v21, 0x1

    return v21

    :cond_13
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->m:Landroidx/media3/extractor/ts/TsBinarySearchSeeker;

    if-eqz v3, :cond_15

    iget-object v4, v3, Landroidx/media3/extractor/BinarySearchSeeker;->c:Landroidx/media3/extractor/BinarySearchSeeker$SeekOperationParams;

    if-eqz v4, :cond_15

    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/BinarySearchSeeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result v0

    return v0

    :cond_14
    move v11, v4

    move/from16 v18, v15

    :cond_15
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor;->e:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v3, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    rsub-int v4, v4, 0x24b8

    const/16 v5, 0xbc

    if-ge v4, v5, :cond_17

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    if-lez v4, :cond_16

    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/4 v9, 0x0

    invoke-static {v3, v6, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    :cond_17
    :goto_9
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseArray;

    if-ge v4, v5, :cond_1e

    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    rsub-int v9, v4, 0x24b8

    invoke-interface {v1, v3, v4, v9}, Landroidx/media3/common/DataReader;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1d

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ts/TsPayloadReader;

    instance-of v2, v1, Landroidx/media3/extractor/ts/PesReader;

    if-eqz v2, :cond_1b

    check-cast v1, Landroidx/media3/extractor/ts/PesReader;

    if-eqz v18, :cond_19

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/PesReader;->e()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_b

    :cond_18
    const/4 v2, 0x0

    goto :goto_c

    :cond_19
    :goto_b
    const/4 v2, 0x1

    :goto_c
    iget v3, v1, Landroidx/media3/extractor/ts/PesReader;->c:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    iget v3, v1, Landroidx/media3/extractor/ts/PesReader;->j:I

    if-ne v3, v10, :cond_1b

    if-eqz v18, :cond_1a

    iget-object v3, v1, Landroidx/media3/extractor/ts/PesReader;->a:Landroidx/media3/extractor/ts/ElementaryStreamReader;

    instance-of v3, v3, Landroidx/media3/extractor/ts/H262Reader;

    if-nez v3, :cond_1b

    :cond_1a
    if-eqz v2, :cond_1b

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroidx/media3/extractor/ts/PesReader;->a(ILandroidx/media3/common/util/ParsableByteArray;)V

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    return v10

    :cond_1d
    add-int/2addr v4, v9

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    goto :goto_9

    :cond_1e
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    move v5, v1

    :goto_d
    if-ge v5, v3, :cond_1f

    aget-byte v9, v4, v5

    if-eq v9, v11, :cond_1f

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1f
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    add-int/lit16 v4, v5, 0xbc

    const/4 v9, 0x0

    if-le v4, v3, :cond_22

    iget v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->t:I

    sub-int/2addr v5, v1

    add-int/2addr v5, v3

    iput v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->t:I

    const/4 v1, 0x2

    if-ne v13, v1, :cond_21

    const/16 v1, 0x178

    if-gt v5, v1, :cond_20

    goto :goto_e

    :cond_20
    const-string v0, "Cannot find sync byte. Most likely not a Transport Stream."

    invoke-static {v9, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_21
    :goto_e
    const/4 v5, 0x0

    goto :goto_f

    :cond_22
    const/4 v5, 0x0

    iput v5, v0, Landroidx/media3/extractor/ts/TsExtractor;->t:I

    :goto_f
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-le v4, v1, :cond_23

    return v5

    :cond_23
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    const/high16 v10, 0x800000

    and-int/2addr v10, v3

    if-eqz v10, :cond_24

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    return v5

    :cond_24
    const/high16 v5, 0x400000

    and-int/2addr v5, v3

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_10

    :cond_25
    const/4 v5, 0x0

    :goto_10
    const v10, 0x1fff00

    and-int/2addr v10, v3

    shr-int/lit8 v10, v10, 0x8

    and-int/lit8 v11, v3, 0x20

    if-eqz v11, :cond_26

    const/4 v11, 0x1

    goto :goto_11

    :cond_26
    const/4 v11, 0x0

    :goto_11
    and-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_27

    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroidx/media3/extractor/ts/TsPayloadReader;

    :cond_27
    if-nez v9, :cond_28

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/16 v22, 0x0

    return v22

    :cond_28
    const/4 v6, 0x2

    const/16 v22, 0x0

    if-eq v13, v6, :cond_2a

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v6, v3, -0x1

    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v10, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    invoke-virtual {v12, v10, v3}, Landroid/util/SparseIntArray;->put(II)V

    if-ne v6, v3, :cond_29

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    return v22

    :cond_29
    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v6, v6, 0xf

    if-eq v3, v6, :cond_2a

    invoke-interface {v9}, Landroidx/media3/extractor/ts/TsPayloadReader;->c()V

    :cond_2a
    if-eqz v11, :cond_2c

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_2b

    const/4 v6, 0x2

    goto :goto_12

    :cond_2b
    const/4 v6, 0x0

    :goto_12
    or-int/2addr v5, v6

    const/16 v21, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_2c
    iget-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    const/4 v6, 0x2

    if-eq v13, v6, :cond_2e

    if-nez v3, :cond_2e

    iget-object v6, v0, Landroidx/media3/extractor/ts/TsExtractor;->k:Landroid/util/SparseBooleanArray;

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    if-nez v6, :cond_2d

    goto :goto_14

    :cond_2d
    :goto_13
    const/4 v6, 0x2

    goto :goto_15

    :cond_2e
    :goto_14
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    invoke-interface {v9, v5, v2}, Landroidx/media3/extractor/ts/TsPayloadReader;->a(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    goto :goto_13

    :goto_15
    if-eq v13, v6, :cond_2f

    if-nez v3, :cond_2f

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    if-eqz v1, :cond_2f

    cmp-long v1, v7, v16

    if-eqz v1, :cond_2f

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroidx/media3/extractor/ts/TsExtractor;->r:Z

    :cond_2f
    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/16 v22, 0x0

    return v22
.end method

.method public final release()V
    .locals 0

    return-void
.end method
