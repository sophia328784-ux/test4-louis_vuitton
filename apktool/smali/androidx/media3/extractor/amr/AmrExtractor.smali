.class public final Landroidx/media3/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/amr/AmrExtractor$Flags;
    }
.end annotation


# static fields
.field public static final s:[I

.field public static final t:[I

.field public static final u:[B

.field public static final v:[B


# instance fields
.field public final a:[B

.field public final b:I

.field public final c:Landroidx/media3/extractor/DiscardingTrackOutput;

.field public d:Z

.field public e:J

.field public f:I

.field public g:I

.field public h:J

.field public i:I

.field public j:I

.field public k:J

.field public l:Landroidx/media3/extractor/ExtractorOutput;

.field public m:Landroidx/media3/extractor/TrackOutput;

.field public n:Landroidx/media3/extractor/TrackOutput;

.field public o:Landroidx/media3/extractor/SeekMap;

.field public p:Z

.field public q:J

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->s:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->t:[I

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "#!AMR\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->u:[B

    const-string v1, "#!AMR-WB\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->v:[B

    return-void

    nop

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->b:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->a:[B

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->i:I

    new-instance p1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->c:Landroidx/media3/extractor/DiscardingTrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->n:Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->e:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I

    iput v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->g:I

    iput-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->q:J

    iget-object p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    instance-of p4, p3, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz p4, :cond_2

    check-cast p3, Landroidx/media3/extractor/IndexSeekMap;

    iget-object p4, p3, Landroidx/media3/extractor/IndexSeekMap;->b:Landroidx/media3/common/util/LongArray;

    iget v0, p4, Landroidx/media3/common/util/LongArray;->a:I

    if-nez v0, :cond_0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    iget-object p3, p3, Landroidx/media3/extractor/IndexSeekMap;->a:Landroidx/media3/common/util/LongArray;

    invoke-static {p3, p1, p2}, Landroidx/media3/common/util/Util;->c(Landroidx/media3/common/util/LongArray;J)I

    move-result p1

    invoke-virtual {p4, p1}, Landroidx/media3/common/util/LongArray;->c(I)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->k:J

    iget-wide p3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->q:J

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/16 p3, 0x4e20

    cmp-long p1, p1, p3

    if-gez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->p:Z

    iget-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->c:Landroidx/media3/extractor/DiscardingTrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->n:Landroidx/media3/extractor/TrackOutput;

    return-void

    :cond_2
    cmp-long p4, p1, v0

    if-eqz p4, :cond_3

    instance-of p4, p3, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    if-eqz p4, :cond_3

    check-cast p3, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v2, p3, Landroidx/media3/extractor/ConstantBitrateSeekMap;->b:J

    iget p3, p3, Landroidx/media3/extractor/ConstantBitrateSeekMap;->e:I

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->k:J

    return-void

    :cond_3
    iput-wide v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->k:J

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/amr/AmrExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->m:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->n:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/amr/AmrExtractor;->h(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->m:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/amr/AmrExtractor;->h(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Could not find AMR header."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-boolean v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->r:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    iput-boolean v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->r:Z

    iget-boolean v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->d:Z

    const-string v5, "audio/amr-wb"

    if-eqz v1, :cond_2

    move-object v6, v5

    goto :goto_1

    :cond_2
    const-string v6, "audio/amr"

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "audio/3gpp"

    :goto_2
    if-eqz v1, :cond_4

    const/16 v7, 0x3e80

    goto :goto_3

    :cond_4
    const/16 v7, 0x1f40

    :goto_3
    if-eqz v1, :cond_5

    sget-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->t:[I

    const/16 v8, 0x8

    aget v1, v1, v8

    goto :goto_4

    :cond_5
    sget-object v1, Landroidx/media3/extractor/amr/AmrExtractor;->s:[I

    const/4 v8, 0x7

    aget v1, v1, v8

    :goto_4
    iget-object v8, v0, Landroidx/media3/extractor/amr/AmrExtractor;->m:Landroidx/media3/extractor/TrackOutput;

    new-instance v9, Landroidx/media3/common/Format$Builder;

    invoke-direct {v9}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {v6}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v1, v9, Landroidx/media3/common/Format$Builder;->o:I

    iput v2, v9, Landroidx/media3/common/Format$Builder;->F:I

    iput v7, v9, Landroidx/media3/common/Format$Builder;->G:I

    invoke-static {v9, v8}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    :cond_6
    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->g:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x4e20

    const/4 v8, -0x1

    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/amr/AmrExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v1

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->g:I

    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->i:I

    if-ne v1, v8, :cond_7

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v9

    iput-wide v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->h:J

    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->i:I

    :cond_7
    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->i:I

    iget v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I

    if-ne v1, v9, :cond_8

    iget v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->j:I

    :cond_8
    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    instance-of v9, v1, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v9, :cond_b

    check-cast v1, Landroidx/media3/extractor/IndexSeekMap;

    iget-wide v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->k:J

    iget-wide v11, v0, Landroidx/media3/extractor/amr/AmrExtractor;->e:J

    add-long/2addr v9, v11

    add-long/2addr v9, v6

    invoke-interface/range {p1 .. p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iget v13, v0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I

    int-to-long v13, v13

    add-long/2addr v11, v13

    iget-object v13, v1, Landroidx/media3/extractor/IndexSeekMap;->b:Landroidx/media3/common/util/LongArray;

    iget v14, v13, Landroidx/media3/common/util/LongArray;->a:I

    if-nez v14, :cond_9

    goto :goto_5

    :cond_9
    sub-int/2addr v14, v2

    invoke-virtual {v13, v14}, Landroidx/media3/common/util/LongArray;->c(I)J

    move-result-wide v13

    sub-long v13, v9, v13

    const-wide/32 v15, 0x186a0

    cmp-long v13, v13, v15

    if-gez v13, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    invoke-virtual {v1, v9, v10, v11, v12}, Landroidx/media3/extractor/IndexSeekMap;->i(JJ)V

    :goto_6
    iget-boolean v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->p:Z

    if-eqz v1, :cond_b

    iget-wide v11, v0, Landroidx/media3/extractor/amr/AmrExtractor;->q:J

    sub-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v1, v9, v6

    if-gez v1, :cond_b

    iput-boolean v5, v0, Landroidx/media3/extractor/amr/AmrExtractor;->p:Z

    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->m:Landroidx/media3/extractor/TrackOutput;

    iput-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->n:Landroidx/media3/extractor/TrackOutput;

    goto :goto_8

    :catch_0
    move-object/from16 v10, p1

    :goto_7
    move v1, v8

    goto :goto_a

    :cond_b
    :goto_8
    iget-object v1, v0, Landroidx/media3/extractor/amr/AmrExtractor;->n:Landroidx/media3/extractor/TrackOutput;

    iget v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->g:I

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v9, v2}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    if-ne v1, v8, :cond_c

    goto :goto_7

    :cond_c
    iget v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->g:I

    sub-int/2addr v9, v1

    iput v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->g:I

    if-lez v9, :cond_d

    :goto_9
    move v1, v5

    goto :goto_a

    :cond_d
    iget-object v11, v0, Landroidx/media3/extractor/amr/AmrExtractor;->n:Landroidx/media3/extractor/TrackOutput;

    iget-wide v12, v0, Landroidx/media3/extractor/amr/AmrExtractor;->k:J

    iget-wide v14, v0, Landroidx/media3/extractor/amr/AmrExtractor;->e:J

    add-long/2addr v12, v14

    iget v15, v0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v11, v0, Landroidx/media3/extractor/amr/AmrExtractor;->e:J

    add-long/2addr v11, v6

    iput-wide v11, v0, Landroidx/media3/extractor/amr/AmrExtractor;->e:J

    goto :goto_9

    :goto_a
    invoke-interface {v10}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v10

    iget-object v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    if-eqz v9, :cond_e

    goto :goto_e

    :cond_e
    iget v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->b:I

    and-int/lit8 v12, v9, 0x4

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v12, :cond_f

    new-instance v6, Landroidx/media3/extractor/IndexSeekMap;

    iget-wide v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->h:J

    new-array v7, v2, [J

    aput-wide v9, v7, v5

    new-array v2, v2, [J

    aput-wide v3, v2, v5

    invoke-direct {v6, v7, v2, v13, v14}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    iput-object v6, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    goto :goto_d

    :cond_f
    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_13

    iget v15, v0, Landroidx/media3/extractor/amr/AmrExtractor;->i:I

    if-eq v15, v8, :cond_10

    iget v3, v0, Landroidx/media3/extractor/amr/AmrExtractor;->f:I

    if-eq v15, v3, :cond_10

    goto :goto_c

    :cond_10
    iget v3, v0, Landroidx/media3/extractor/amr/AmrExtractor;->j:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_11

    if-ne v1, v8, :cond_14

    :cond_11
    and-int/lit8 v3, v9, 0x2

    if-eqz v3, :cond_12

    move/from16 v16, v2

    goto :goto_b

    :cond_12
    move/from16 v16, v5

    :goto_b
    int-to-long v2, v15

    const-wide/32 v4, 0x7a1200

    mul-long/2addr v2, v4

    div-long/2addr v2, v6

    long-to-int v14, v2

    new-instance v9, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    iget-wide v12, v0, Landroidx/media3/extractor/amr/AmrExtractor;->h:J

    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    iput-object v9, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    iget-object v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->m:Landroidx/media3/extractor/TrackOutput;

    iget-wide v3, v9, Landroidx/media3/extractor/ConstantBitrateSeekMap;->f:J

    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    goto :goto_d

    :cond_13
    :goto_c
    new-instance v2, Landroidx/media3/extractor/SeekMap$Unseekable;

    invoke-direct {v2, v13, v14}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    :cond_14
    :goto_d
    iget-object v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    if-eqz v2, :cond_15

    iget-object v3, v0, Landroidx/media3/extractor/amr/AmrExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    :cond_15
    :goto_e
    if-ne v1, v8, :cond_16

    iget-object v2, v0, Landroidx/media3/extractor/amr/AmrExtractor;->o:Landroidx/media3/extractor/SeekMap;

    instance-of v3, v2, Landroidx/media3/extractor/IndexSeekMap;

    if-eqz v3, :cond_16

    iget-wide v3, v0, Landroidx/media3/extractor/amr/AmrExtractor;->k:J

    iget-wide v5, v0, Landroidx/media3/extractor/amr/AmrExtractor;->e:J

    add-long/2addr v3, v5

    move-object v5, v2

    check-cast v5, Landroidx/media3/extractor/IndexSeekMap;

    iput-wide v3, v5, Landroidx/media3/extractor/IndexSeekMap;->c:J

    iget-object v5, v0, Landroidx/media3/extractor/amr/AmrExtractor;->l:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v5, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iget-object v0, v0, Landroidx/media3/extractor/amr/AmrExtractor;->m:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v3, v4}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    :cond_16
    return v1
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;)I
    .locals 3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->a:[B

    invoke-interface {p1, v1, v0, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    aget-byte p1, v2, v1

    and-int/lit16 v0, p1, 0x83

    const/4 v1, 0x0

    if-gtz v0, :cond_5

    shr-int/lit8 p1, p1, 0x3

    const/16 v0, 0xf

    and-int/2addr p1, v0

    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    iget-boolean v0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->d:Z

    if-eqz v0, :cond_0

    const/16 v2, 0xa

    if-lt p1, v2, :cond_1

    const/16 v2, 0xd

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    const/16 v2, 0xc

    if-lt p1, v2, :cond_1

    const/16 v2, 0xe

    if-le p1, v2, :cond_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    sget-object p0, Landroidx/media3/extractor/amr/AmrExtractor;->t:[I

    aget p0, p0, p1

    return p0

    :cond_2
    sget-object p0, Landroidx/media3/extractor/amr/AmrExtractor;->s:[I

    aget p0, p0, p1

    return p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Illegal AMR "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/media3/extractor/amr/AmrExtractor;->d:Z

    if-eqz p0, :cond_4

    const-string p0, "WB"

    goto :goto_1

    :cond_4
    const-string p0, "NB"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " frame type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid padding bits for frame header "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final h(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->u:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Landroidx/media3/extractor/amr/AmrExtractor;->d:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v2

    :cond_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    sget-object v0, Landroidx/media3/extractor/amr/AmrExtractor;->v:[B

    array-length v1, v0

    new-array v1, v1, [B

    array-length v4, v0

    invoke-interface {p1, v3, v4, v1}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Landroidx/media3/extractor/amr/AmrExtractor;->d:Z

    array-length p0, v0

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    return v2

    :cond_1
    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method
