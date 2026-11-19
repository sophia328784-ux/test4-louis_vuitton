.class public final Landroidx/media3/extractor/ts/H264Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/ts/SeiReader;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final g:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public h:J

.field public final i:[Z

.field public j:Ljava/lang/String;

.field public k:Landroidx/media3/extractor/TrackOutput;

.field public l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

.field public m:Z

.field public n:J

.field public o:Z

.field public final p:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->b:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader;->c:Z

    iput-object p4, p0, Landroidx/media3/extractor/ts/H264Reader;->d:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->i:[Z

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->g:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->p:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v0, p1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v1, p1, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget-object v2, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    iget-object v3, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    invoke-interface {v3, v4, p1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/H264Reader;->i:[Z

    invoke-static {v2, v0, v1, p1}, Landroidx/media3/container/NalUnitUtil;->b([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/extractor/ts/H264Reader;->g(II[B)V

    return-void

    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, v2, v3

    and-int/lit8 v5, v3, 0x1f

    if-lez p1, :cond_1

    add-int/lit8 v3, p1, -0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    const/4 v3, 0x4

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    :goto_1
    sub-int v4, p1, v0

    if-lez v4, :cond_2

    invoke-virtual {p0, v0, p1, v2}, Landroidx/media3/extractor/ts/H264Reader;->g(II[B)V

    :cond_2
    sub-int v11, v1, p1

    iget-wide v6, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    int-to-long v8, v11

    sub-long/2addr v6, v8

    if-gez v4, :cond_3

    neg-int v0, v4

    :goto_2
    move v12, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :goto_3
    iget-wide v9, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    move-wide v7, v6

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Landroidx/media3/extractor/ts/H264Reader;->b(JJII)V

    move-object v4, v6

    move-wide v6, v7

    iget-wide v8, v4, Landroidx/media3/extractor/ts/H264Reader;->n:J

    invoke-virtual/range {v4 .. v9}, Landroidx/media3/extractor/ts/H264Reader;->h(IJJ)V

    add-int v0, p1, v3

    move-object p0, v4

    goto :goto_0
.end method

.method public final b(JJII)V
    .locals 14

    move/from16 v0, p6

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H264Reader;->m:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    iget-object v4, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v1, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    iget-object v5, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v5, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    iget-boolean v6, p0, Landroidx/media3/extractor/ts/H264Reader;->m:Z

    iget-boolean v7, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    const/4 v8, 0x3

    if-nez v6, :cond_1

    if-eqz v7, :cond_3

    iget-boolean v6, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v9, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v9, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v7, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v9, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v8, v9, v7}, Landroidx/media3/container/NalUnitUtil;->k(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v7

    iget v8, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->s:I

    iget-object v9, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v10, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    new-instance v11, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v11, v9, v2, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    invoke-virtual {v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v9

    invoke-virtual {v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v10

    invoke-virtual {v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v11

    new-instance v12, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v12, v9, v10, v11}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    iget v9, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->a:I

    iget v10, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->b:I

    iget v11, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->c:I

    sget-object v13, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "avc1.%02X%02X%02X"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/TrackOutput;

    new-instance v11, Landroidx/media3/common/Format$Builder;

    invoke-direct {v11}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v13, p0, Landroidx/media3/extractor/ts/H264Reader;->j:Ljava/lang/String;

    iput-object v13, v11, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v13, p0, Landroidx/media3/extractor/ts/H264Reader;->d:Ljava/lang/String;

    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v13, "video/avc"

    invoke-static {v13}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v11, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v9, v11, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget v9, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->e:I

    iput v9, v11, Landroidx/media3/common/Format$Builder;->u:I

    iget v9, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->f:I

    iput v9, v11, Landroidx/media3/common/Format$Builder;->v:I

    new-instance v9, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v9}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v13, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->p:I

    iput v13, v9, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iget v13, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->q:I

    iput v13, v9, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iget v13, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->r:I

    iput v13, v9, Landroidx/media3/common/ColorInfo$Builder;->c:I

    iget v13, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->h:I

    add-int/lit8 v13, v13, 0x8

    iput v13, v9, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iget v13, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->i:I

    add-int/lit8 v13, v13, 0x8

    iput v13, v9, Landroidx/media3/common/ColorInfo$Builder;->f:I

    invoke-virtual {v9}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v9

    iput-object v9, v11, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    iget v9, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->g:F

    iput v9, v11, Landroidx/media3/common/Format$Builder;->A:F

    iput-object v6, v11, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iput v8, v11, Landroidx/media3/common/Format$Builder;->p:I

    invoke-static {v11, v10}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->m:Z

    iget-object v6, v4, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v6, v8}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    iget-object v6, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v6, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    iget v8, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->d:I

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget-object v6, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v6, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    iget v7, v12, Landroidx/media3/container/NalUnitUtil$PpsData;->a:I

    invoke-virtual {v6, v7, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    invoke-virtual {v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    iget-object v5, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v6, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v8, v6, v5}, Landroidx/media3/container/NalUnitUtil;->k(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object v5

    iget v6, v5, Landroidx/media3/container/NalUnitUtil$SpsData;->s:I

    iget-object v7, v4, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v7, v6}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    iget-object v6, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v6, v6, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    iget v7, v5, Landroidx/media3/container/NalUnitUtil$SpsData;->d:I

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    goto :goto_0

    :cond_2
    iget-boolean v1, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    if-eqz v1, :cond_3

    iget-object v1, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v6, v5, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    new-instance v7, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v7, v1, v2, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    invoke-virtual {v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    invoke-virtual {v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v6

    invoke-virtual {v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v7

    new-instance v8, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v8, v1, v6, v7}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v1, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    iget v6, v8, Landroidx/media3/container/NalUnitUtil$PpsData;->a:I

    invoke-virtual {v1, v6, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->g:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v5, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v5, v0}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    move-result v0

    iget-object v1, v1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget-object v5, p0, Landroidx/media3/extractor/ts/H264Reader;->p:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v5, v2}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v0, v4, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2, v5}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H264Reader;->m:Z

    iget v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    const/16 v4, 0x9

    const/4 v5, 0x0

    if-eq v2, v4, :cond_b

    iget-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    if-eqz v2, :cond_e

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-boolean v6, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    if-nez v6, :cond_5

    goto/16 :goto_3

    :cond_5
    iget-boolean v6, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v6, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->c:Landroidx/media3/container/NalUnitUtil$SpsData;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->c:Landroidx/media3/container/NalUnitUtil$SpsData;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v7, Landroidx/media3/container/NalUnitUtil$SpsData;->m:I

    iget v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->f:I

    iget v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->f:I

    if-ne v8, v9, :cond_b

    iget v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->g:I

    iget v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->g:I

    if-ne v8, v9, :cond_b

    iget-boolean v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->h:Z

    iget-boolean v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->h:Z

    if-ne v8, v9, :cond_b

    iget-boolean v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->i:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->i:Z

    if-eqz v8, :cond_7

    iget-boolean v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->j:Z

    iget-boolean v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->j:Z

    if-ne v8, v9, :cond_b

    :cond_7
    iget v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->d:I

    iget v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->d:I

    if-eq v8, v9, :cond_8

    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    :cond_8
    iget v6, v6, Landroidx/media3/container/NalUnitUtil$SpsData;->m:I

    if-nez v6, :cond_9

    if-nez v7, :cond_9

    iget v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->m:I

    iget v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->m:I

    if-ne v8, v9, :cond_b

    iget v8, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->n:I

    iget v9, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->n:I

    if-ne v8, v9, :cond_b

    :cond_9
    if-ne v6, v3, :cond_a

    if-ne v7, v3, :cond_a

    iget v6, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->o:I

    iget v7, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->o:I

    if-ne v6, v7, :cond_b

    iget v6, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->p:I

    iget v7, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->p:I

    if-ne v6, v7, :cond_b

    :cond_a
    iget-boolean v6, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->k:Z

    iget-boolean v7, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->k:Z

    if-ne v6, v7, :cond_b

    if-eqz v6, :cond_e

    iget v2, v2, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->l:I

    iget v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->l:I

    if-eq v2, v4, :cond_e

    :cond_b
    :goto_1
    if-eqz v1, :cond_d

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    if-eqz v1, :cond_d

    iget-wide v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->j:J

    sub-long v6, p1, v1

    long-to-int v4, v6

    add-int v11, p5, v4

    iget-wide v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->q:J

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v7, v9

    if-eqz v4, :cond_d

    iget-wide v9, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->p:J

    cmp-long v4, v1, v9

    if-nez v4, :cond_c

    goto :goto_2

    :cond_c
    move-wide v12, v9

    iget-boolean v9, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    sub-long/2addr v1, v12

    long-to-int v10, v1

    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->a:Landroidx/media3/extractor/TrackOutput;

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_d
    :goto_2
    iget-wide v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->j:J

    iput-wide v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->p:J

    iget-wide v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->l:J

    iput-wide v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->q:J

    iput-boolean v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    iput-boolean v3, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    :cond_e
    :goto_3
    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->b:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-boolean v2, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    if-eqz v2, :cond_10

    iget v1, v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->e:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    :cond_f
    move v1, v3

    goto :goto_4

    :cond_10
    move v1, v5

    goto :goto_4

    :cond_11
    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->s:Z

    :goto_4
    iget-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    iget v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_13

    if-eqz v1, :cond_12

    if-ne v4, v3, :cond_12

    goto :goto_5

    :cond_12
    move v3, v5

    :cond_13
    :goto_5
    or-int v1, v2, v3

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->r:Z

    const/16 v2, 0x18

    iput v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    if-eqz v1, :cond_14

    iput-boolean v5, p0, Landroidx/media3/extractor/ts/H264Reader;->o:Z

    :cond_14
    return-void
.end method

.method public final c()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->o:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->i:[Z

    invoke-static {v1}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->g:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v1, v1, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v1, v0}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    if-eqz p0, :cond_0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 7

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v1, v1, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    iget-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    const/4 v6, 0x0

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->b(JJII)V

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    const/16 v1, 0x9

    iget-wide v4, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/ts/H264Reader;->h(IJJ)V

    iget-wide v1, p0, Landroidx/media3/extractor/ts/H264Reader;->h:J

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H264Reader;->b(JJII)V

    :cond_0
    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 4

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->j:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->k:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v2, p0, Landroidx/media3/extractor/ts/H264Reader;->b:Z

    iget-boolean v3, p0, Landroidx/media3/extractor/ts/H264Reader;->c:Z

    invoke-direct {v1, v0, v2, v3}, Landroidx/media3/extractor/ts/H264Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;ZZ)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/SeiReader;->a(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H264Reader;->n:J

    iget-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader;->o:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader;->o:Z

    return-void
.end method

.method public final g(II[B)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H264Reader;->m:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v4, v4, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    :cond_1
    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader;->g:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v1, v2, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-object v4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    iget-object v5, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->f:Landroidx/media3/container/ParsableNalUnitBitArray;

    iget-boolean v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    if-nez v6, :cond_2

    goto/16 :goto_7

    :cond_2
    sub-int/2addr v2, v1

    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    array-length v7, v6

    iget v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    add-int/2addr v8, v2

    const/4 v9, 0x2

    if-ge v7, v8, :cond_3

    mul-int/2addr v8, v9

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    iput-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    :cond_3
    iget-object v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    iget v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    invoke-static {v3, v1, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    iget-object v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    iput-object v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->a:[B

    const/4 v2, 0x0

    iput v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->c:I

    iput v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->d:I

    iput v1, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->b:I

    iput v2, v5, Landroidx/media3/container/ParsableNalUnitBitArray;->e:I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->a()V

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_7

    :cond_4
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v5, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    const/4 v3, 0x5

    invoke-virtual {v5, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_7

    :cond_6
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v6

    iget-boolean v7, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    const/4 v8, 0x1

    if-nez v7, :cond_7

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    iget-object v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput v6, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->e:I

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    return-void

    :cond_7
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_7

    :cond_8
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-gez v10, :cond_9

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    return-void

    :cond_9
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/NalUnitUtil$PpsData;

    iget-object v10, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    iget v11, v4, Landroidx/media3/container/NalUnitUtil$PpsData;->b:I

    iget-boolean v4, v4, Landroidx/media3/container/NalUnitUtil$PpsData;->c:Z

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/container/NalUnitUtil$SpsData;

    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->j:Z

    iget v12, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->n:I

    iget v13, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->l:I

    if-eqz v11, :cond_b

    invoke-virtual {v5, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v11

    if-nez v11, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v5, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_b
    invoke-virtual {v5, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v9

    if-nez v9, :cond_c

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v5, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v9

    iget-boolean v11, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->k:Z

    if-nez v11, :cond_10

    invoke-virtual {v5, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v11

    if-nez v11, :cond_d

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-virtual {v5, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v13

    move v14, v8

    goto :goto_1

    :cond_f
    move v13, v2

    :goto_0
    move v14, v13

    goto :goto_1

    :cond_10
    move v11, v2

    move v13, v11

    goto :goto_0

    :goto_1
    iget v15, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    if-ne v15, v3, :cond_11

    move v3, v8

    goto :goto_2

    :cond_11
    move v3, v2

    :goto_2
    if-eqz v3, :cond_13

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v15

    if-nez v15, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v15

    goto :goto_3

    :cond_13
    move v15, v2

    :goto_3
    iget v2, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->m:I

    if-nez v2, :cond_17

    invoke-virtual {v5, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_7

    :cond_14
    invoke-virtual {v5, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v2

    if-eqz v4, :cond_16

    if-nez v11, :cond_16

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    move-result v4

    move v5, v4

    const/4 v4, 0x0

    :goto_4
    const/4 v12, 0x0

    goto :goto_8

    :cond_16
    :goto_5
    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x0

    goto :goto_4

    :cond_17
    if-ne v2, v8, :cond_1b

    iget-boolean v2, v10, Landroidx/media3/container/NalUnitUtil$SpsData;->o:Z

    if-nez v2, :cond_1b

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_7

    :cond_18
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    move-result v2

    if-eqz v4, :cond_1a

    if-nez v11, :cond_1a

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->c()Z

    move-result v4

    if-nez v4, :cond_19

    :goto_7
    return-void

    :cond_19
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    move-result v4

    move v12, v4

    const/4 v5, 0x0

    move v4, v2

    const/4 v2, 0x0

    goto :goto_8

    :cond_1a
    move v4, v2

    const/4 v2, 0x0

    goto :goto_6

    :cond_1b
    const/4 v2, 0x0

    goto :goto_5

    :goto_8
    iget-object v8, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object v10, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->c:Landroidx/media3/container/NalUnitUtil$SpsData;

    iput v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->d:I

    iput v6, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->e:I

    iput v9, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->f:I

    iput v7, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->g:I

    iput-boolean v11, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->h:Z

    iput-boolean v14, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->i:Z

    iput-boolean v13, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->j:Z

    iput-boolean v3, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->k:Z

    iput v15, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->l:I

    iput v2, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->m:I

    iput v5, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->n:I

    iput v4, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->o:I

    iput v12, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->p:I

    const/4 v1, 0x1

    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    iput-boolean v1, v8, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    return-void
.end method

.method public final h(IJJ)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H264Reader;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean v0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->e:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->f:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->g:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H264Reader;->l:Landroidx/media3/extractor/ts/H264Reader$SampleReader;

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/H264Reader;->o:Z

    iput p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->i:I

    iput-wide p4, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->l:J

    iput-wide p2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->j:J

    iput-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->s:Z

    iget-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->b:Z

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    if-eq p1, p2, :cond_3

    :cond_2
    iget-boolean p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    if-eq p1, p0, :cond_3

    if-eq p1, p2, :cond_3

    const/4 p0, 0x2

    if-ne p1, p0, :cond_4

    :cond_3
    iget-object p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iget-object p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-object p0, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    iput p1, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->h:I

    iput-boolean p2, v0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    :cond_4
    return-void
.end method
