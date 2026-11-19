.class public final Landroidx/media3/extractor/ts/H265Reader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H265Reader$SampleReader;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/ts/SeiReader;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroidx/media3/extractor/TrackOutput;

.field public e:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

.field public f:Z

.field public final g:[Z

.field public final h:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final i:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final j:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final k:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public final l:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

.field public m:J

.field public n:J

.field public final o:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/SeiReader;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    iput-object p2, p0, Landroidx/media3/extractor/ts/H265Reader;->b:Ljava/lang/String;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->g:[Z

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x20

    const/16 v0, 0x80

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->h:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x21

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->i:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x22

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->j:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x27

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->k:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    new-instance p1, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const/16 p2, 0x28

    invoke-direct {p1, p2, v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;-><init>(II)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->l:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->o:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 15

    move-object/from16 v7, p1

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->d:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-lez v1, :cond_5

    iget v1, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget v8, v7, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget-object v9, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader;->m:J

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/extractor/ts/H265Reader;->m:J

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->d:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v3

    invoke-interface {v2, v3, v7}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    :goto_0
    if-ge v1, v8, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/ts/H265Reader;->g:[Z

    invoke-static {v9, v1, v8, v2}, Landroidx/media3/container/NalUnitUtil;->b([BII[Z)I

    move-result v2

    if-ne v2, v8, :cond_1

    invoke-virtual {p0, v1, v8, v9}, Landroidx/media3/extractor/ts/H265Reader;->g(II[B)V

    return-void

    :cond_1
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v9, v3

    and-int/lit8 v3, v3, 0x7e

    shr-int/lit8 v10, v3, 0x1

    if-lez v2, :cond_2

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, v9, v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    :goto_1
    move v11, v2

    move v12, v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :goto_2
    sub-int v2, v11, v1

    if-lez v2, :cond_3

    invoke-virtual {p0, v1, v11, v9}, Landroidx/media3/extractor/ts/H265Reader;->g(II[B)V

    :cond_3
    sub-int v5, v8, v11

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->m:J

    int-to-long v13, v5

    sub-long/2addr v3, v13

    if-gez v2, :cond_4

    neg-int v1, v2

    :goto_3
    move v6, v1

    move-wide v1, v3

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :goto_4
    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->b(JJII)V

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->h(JJII)V

    add-int v1, v11, v12

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b(JJII)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move/from16 v3, p6

    iget-object v4, v0, Landroidx/media3/extractor/ts/H265Reader;->e:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v5, v0, Landroidx/media3/extractor/ts/H265Reader;->f:Z

    iget-boolean v6, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->j:Z

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    iget-boolean v6, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->g:Z

    if-eqz v6, :cond_0

    iget-boolean v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->c:Z

    iput-boolean v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->m:Z

    iput-boolean v7, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->j:Z

    goto :goto_0

    :cond_0
    iget-boolean v6, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->h:Z

    if-nez v6, :cond_1

    iget-boolean v6, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->g:Z

    if-eqz v6, :cond_3

    :cond_1
    if-eqz v5, :cond_2

    iget-boolean v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->i:Z

    if-eqz v5, :cond_2

    iget-wide v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->b:J

    sub-long v5, p1, v5

    long-to-int v5, v5

    add-int v5, p5, v5

    invoke-virtual {v4, v5}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->a(I)V

    :cond_2
    iget-wide v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->b:J

    iput-wide v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->k:J

    iget-wide v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->e:J

    iput-wide v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->l:J

    iget-boolean v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->c:Z

    iput-boolean v5, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->m:Z

    iput-boolean v8, v4, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->i:Z

    :cond_3
    :goto_0
    iget-boolean v4, v0, Landroidx/media3/extractor/ts/H265Reader;->f:Z

    iget-object v5, v0, Landroidx/media3/extractor/ts/H265Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    if-nez v4, :cond_6

    iget-object v4, v0, Landroidx/media3/extractor/ts/H265Reader;->h:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    iget-object v6, v0, Landroidx/media3/extractor/ts/H265Reader;->i:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v6, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    iget-object v9, v0, Landroidx/media3/extractor/ts/H265Reader;->j:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v9, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    iget-boolean v10, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    if-eqz v10, :cond_6

    iget-boolean v10, v9, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c:Z

    if-eqz v10, :cond_6

    iget-object v10, v0, Landroidx/media3/extractor/ts/H265Reader;->c:Ljava/lang/String;

    iget v11, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    iget v12, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    add-int/2addr v12, v11

    iget v13, v9, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    add-int/2addr v12, v13

    new-array v12, v12, [B

    iget-object v13, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    invoke-static {v13, v7, v12, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v13, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    iget v14, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v11, v7, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v11, v9, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v4, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    iget v13, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    add-int/2addr v4, v13

    iget v9, v9, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v11, v7, v12, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v6, v6, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    const/4 v9, 0x3

    const/4 v11, 0x0

    invoke-static {v4, v9, v6, v11}, Landroidx/media3/container/NalUnitUtil;->i([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v4

    iget-object v6, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->b:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    if-eqz v6, :cond_4

    iget v13, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->a:I

    iget-boolean v14, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->b:Z

    iget v15, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->c:I

    iget v9, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->d:I

    iget-object v11, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->e:[I

    iget v6, v6, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->f:I

    move/from16 v18, v6

    move/from16 v16, v9

    move-object/from16 v17, v11

    invoke-static/range {v13 .. v18}, Landroidx/media3/common/util/CodecSpecificDataUtil;->a(IZII[II)Ljava/lang/String;

    move-result-object v11

    :cond_4
    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v10, v6, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v9, v0, Landroidx/media3/extractor/ts/H265Reader;->b:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const-string v9, "video/hevc"

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v11, v6, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->e:I

    iput v9, v6, Landroidx/media3/common/Format$Builder;->u:I

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->f:I

    iput v9, v6, Landroidx/media3/common/Format$Builder;->v:I

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->g:I

    iput v9, v6, Landroidx/media3/common/Format$Builder;->w:I

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->h:I

    iput v9, v6, Landroidx/media3/common/Format$Builder;->x:I

    new-instance v9, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v9}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iget v10, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->k:I

    iput v10, v9, Landroidx/media3/common/ColorInfo$Builder;->a:I

    iget v10, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->l:I

    iput v10, v9, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iget v10, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->m:I

    iput v10, v9, Landroidx/media3/common/ColorInfo$Builder;->c:I

    iget v10, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->c:I

    add-int/lit8 v10, v10, 0x8

    iput v10, v9, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iget v10, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->d:I

    add-int/lit8 v10, v10, 0x8

    iput v10, v9, Landroidx/media3/common/ColorInfo$Builder;->f:I

    invoke-virtual {v9}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v9

    iput-object v9, v6, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->i:F

    iput v9, v6, Landroidx/media3/common/Format$Builder;->A:F

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->j:I

    iput v9, v6, Landroidx/media3/common/Format$Builder;->p:I

    iget v4, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->a:I

    add-int/2addr v4, v8

    iput v4, v6, Landroidx/media3/common/Format$Builder;->E:I

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v6, v0, Landroidx/media3/extractor/ts/H265Reader;->d:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v6, v4}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    const/4 v6, -0x1

    iget v4, v4, Landroidx/media3/common/Format;->q:I

    if-eq v4, v6, :cond_5

    move v7, v8

    :cond_5
    invoke-static {v7}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v6, v5, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v6, v4}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    iput-boolean v8, v0, Landroidx/media3/extractor/ts/H265Reader;->f:Z

    :cond_6
    iget-object v4, v0, Landroidx/media3/extractor/ts/H265Reader;->k:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v4, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    move-result v6

    const/4 v7, 0x5

    iget-object v8, v0, Landroidx/media3/extractor/ts/H265Reader;->o:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v6, :cond_7

    iget-object v6, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v9, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v9, v6}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    move-result v6

    iget-object v4, v4, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    invoke-virtual {v8, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget-object v4, v5, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v4, v1, v2, v8}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_7
    iget-object v0, v0, Landroidx/media3/extractor/ts/H265Reader;->l:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, v3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->b(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    iget v4, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->e:I

    invoke-static {v4, v3}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    move-result v3

    iget-object v0, v0, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d:[B

    invoke-virtual {v8, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget-object v0, v5, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {v0, v1, v2, v8}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_8
    return-void
.end method

.method public final c()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->m:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->g:[Z

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->h:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->i:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->j:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->k:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->l:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->c()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v0, v0, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->e:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    if-eqz p0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->f:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->g:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->h:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->i:Z

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->j:Z

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 7

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->d:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    iget-object v1, v1, Landroidx/media3/extractor/ts/SeiReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    iget-wide v1, p0, Landroidx/media3/extractor/ts/H265Reader;->m:J

    const/4 v6, 0x0

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->b(JJII)V

    iget-wide v1, p0, Landroidx/media3/extractor/ts/H265Reader;->m:J

    const/16 v6, 0x30

    iget-wide v3, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/ts/H265Reader;->h(JJII)V

    :cond_0
    return-void
.end method

.method public final e(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->c:Ljava/lang/String;

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v0, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->d:Landroidx/media3/extractor/TrackOutput;

    new-instance v1, Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    invoke-direct {v1, v0}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/H265Reader;->e:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->a:Landroidx/media3/extractor/ts/SeiReader;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ts/SeiReader;->a(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    return-void
.end method

.method public final f(IJ)V
    .locals 0

    iput-wide p2, p0, Landroidx/media3/extractor/ts/H265Reader;->n:J

    return-void
.end method

.method public final g(II[B)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->e:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->f:Z

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->d:I

    sub-int/2addr v1, v2

    if-ge v1, p2, :cond_1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->g:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->f:Z

    goto :goto_1

    :cond_1
    sub-int v1, p2, p1

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->d:I

    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/media3/extractor/ts/H265Reader;->f:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->h:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->i:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->j:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->k:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->l:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->a(II[B)V

    return-void
.end method

.method public final h(JJII)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ts/H265Reader;->e:Landroidx/media3/extractor/ts/H265Reader$SampleReader;

    iget-boolean v1, p0, Landroidx/media3/extractor/ts/H265Reader;->f:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->g:Z

    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->h:Z

    iput-wide p3, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->e:J

    iput v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->d:I

    iput-wide p1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->b:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p6, p2, :cond_5

    const/16 p3, 0x28

    if-ne p6, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p3, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->i:Z

    if-eqz p3, :cond_2

    iget-boolean p3, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->j:Z

    if-nez p3, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v0, p5}, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->a(I)V

    :cond_1
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->i:Z

    :cond_2
    if-gt p2, p6, :cond_3

    const/16 p2, 0x23

    if-le p6, p2, :cond_4

    :cond_3
    const/16 p2, 0x27

    if-ne p6, p2, :cond_5

    :cond_4
    iget-boolean p2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->j:Z

    xor-int/2addr p2, p1

    iput-boolean p2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->h:Z

    iput-boolean p1, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->j:Z

    :cond_5
    :goto_0
    const/16 p2, 0x10

    if-lt p6, p2, :cond_6

    const/16 p2, 0x15

    if-gt p6, p2, :cond_6

    move p2, p1

    goto :goto_1

    :cond_6
    move p2, v2

    :goto_1
    iput-boolean p2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->c:Z

    if-nez p2, :cond_7

    const/16 p2, 0x9

    if-gt p6, p2, :cond_8

    :cond_7
    move v2, p1

    :cond_8
    iput-boolean v2, v0, Landroidx/media3/extractor/ts/H265Reader$SampleReader;->f:Z

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/H265Reader;->f:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->h:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->i:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->j:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    :cond_9
    iget-object p1, p0, Landroidx/media3/extractor/ts/H265Reader;->k:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p1, p6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    iget-object p0, p0, Landroidx/media3/extractor/ts/H265Reader;->l:Landroidx/media3/extractor/ts/NalUnitTargetBuffer;

    invoke-virtual {p0, p6}, Landroidx/media3/extractor/ts/NalUnitTargetBuffer;->d(I)V

    return-void
.end method
