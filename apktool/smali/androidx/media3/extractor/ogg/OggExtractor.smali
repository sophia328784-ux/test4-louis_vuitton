.class public Landroidx/media3/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# instance fields
.field public a:Landroidx/media3/extractor/ExtractorOutput;

.field public b:Landroidx/media3/extractor/ogg/StreamReader;

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    if-eqz p0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ogg/StreamReader;->a:Landroidx/media3/extractor/ogg/OggPacket;

    iget-object v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->a:Landroidx/media3/extractor/ogg/OggPageHeader;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->a:I

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->b:J

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->c:I

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->d:I

    iput v2, v1, Landroidx/media3/extractor/ogg/OggPageHeader;->e:I

    iget-object v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    const/4 v1, -0x1

    iput v1, v0, Landroidx/media3/extractor/ogg/OggPacket;->c:I

    iput-boolean v2, v0, Landroidx/media3/extractor/ogg/OggPacket;->e:Z

    cmp-long p1, p1, v3

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->l:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    return-void

    :cond_0
    iget p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    int-to-long p1, p1

    mul-long/2addr p1, p3

    const-wide/32 p3, 0xf4240

    div-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->e:J

    iget-object p3, p0, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    sget-object p4, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {p3, p1, p2}, Landroidx/media3/extractor/ogg/OggSeeker;->c(J)V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    :cond_1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/ogg/OggExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/ogg/OggExtractor;->g(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    goto :goto_0

    :cond_0
    const-string v0, "Failed to determine bitstream type"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    iget-boolean v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->c:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    iget-object v5, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v5}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iget-object v5, v0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    iget-object v6, v0, Landroidx/media3/extractor/ogg/OggExtractor;->a:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v6, v5, Landroidx/media3/extractor/ogg/StreamReader;->c:Landroidx/media3/extractor/ExtractorOutput;

    iput-object v2, v5, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v5, v4}, Landroidx/media3/extractor/ogg/StreamReader;->d(Z)V

    iput-boolean v4, v0, Landroidx/media3/extractor/ogg/OggExtractor;->c:Z

    :cond_2
    iget-object v8, v0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    iget-object v0, v8, Landroidx/media3/extractor/ogg/StreamReader;->a:Landroidx/media3/extractor/ogg/OggPacket;

    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v2, :cond_c

    if-eq v2, v4, :cond_b

    if-eq v2, v10, :cond_4

    if-ne v2, v9, :cond_3

    return v7

    :cond_3
    invoke-static {}, Lr81;->b()V

    return v3

    :cond_4
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ogg/OggSeeker;->a(Landroidx/media3/extractor/ExtractorInput;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-ltz v2, :cond_5

    move-object/from16 v2, p2

    iput-wide v10, v2, Landroidx/media3/extractor/PositionHolder;->a:J

    return v4

    :cond_5
    cmp-long v2, v10, v5

    if-gez v2, :cond_6

    const-wide/16 v14, 0x2

    add-long/2addr v10, v14

    neg-long v10, v10

    invoke-virtual {v8, v10, v11}, Landroidx/media3/extractor/ogg/StreamReader;->a(J)V

    :cond_6
    iget-boolean v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->l:Z

    if-nez v2, :cond_7

    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    invoke-interface {v2}, Landroidx/media3/extractor/ogg/OggSeeker;->b()Landroidx/media3/extractor/SeekMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->c:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v10, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iget-object v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v14

    invoke-interface {v10, v14, v15}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    iput-boolean v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->l:Z

    :cond_7
    iget-wide v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->k:J

    cmp-long v2, v10, v12

    if-gtz v2, :cond_9

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ogg/OggPacket;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    iput v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    return v7

    :cond_9
    :goto_1
    iput-wide v12, v8, Landroidx/media3/extractor/ogg/StreamReader;->k:J

    iget-object v0, v0, Landroidx/media3/extractor/ogg/OggPacket;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v0}, Landroidx/media3/extractor/ogg/StreamReader;->b(Landroidx/media3/common/util/ParsableByteArray;)J

    move-result-wide v1

    cmp-long v4, v1, v12

    if-ltz v4, :cond_a

    iget-wide v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    add-long v11, v9, v1

    iget-wide v13, v8, Landroidx/media3/extractor/ogg/StreamReader;->e:J

    cmp-long v4, v11, v13

    if-ltz v4, :cond_a

    const-wide/32 v11, 0xf4240

    mul-long/2addr v9, v11

    iget v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    int-to-long v11, v4

    div-long v14, v9, v11

    iget-object v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    iget v7, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-interface {v4, v7, v0}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v13, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    iget v0, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v16, 0x1

    move/from16 v17, v0

    invoke-interface/range {v13 .. v19}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-wide v5, v8, Landroidx/media3/extractor/ogg/StreamReader;->e:J

    :cond_a
    iget-wide v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    add-long/2addr v4, v1

    iput-wide v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->g:J

    return v3

    :cond_b
    iget-wide v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    long-to-int v0, v4

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v10, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    return v3

    :cond_c
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/ogg/OggPacket;->b(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    iget-object v11, v0, Landroidx/media3/extractor/ogg/OggPacket;->b:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v2, :cond_d

    iput v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    return v7

    :cond_d
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    iget-wide v14, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    sub-long/2addr v12, v14

    iput-wide v12, v8, Landroidx/media3/extractor/ogg/StreamReader;->k:J

    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->j:Landroidx/media3/extractor/ogg/StreamReader$SetupData;

    invoke-virtual {v8, v11, v14, v15, v2}, Landroidx/media3/extractor/ogg/StreamReader;->c(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v11

    iput-wide v11, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    goto :goto_2

    :cond_e
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->j:Landroidx/media3/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->a:Landroidx/media3/common/Format;

    iget v7, v2, Landroidx/media3/common/Format;->H:I

    iput v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    iget-boolean v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->m:Z

    if-nez v7, :cond_f

    iget-object v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->b:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v7, v2}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    iput-boolean v4, v8, Landroidx/media3/extractor/ogg/StreamReader;->m:Z

    :cond_f
    iget-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->j:Landroidx/media3/extractor/ogg/StreamReader$SetupData;

    iget-object v2, v2, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->b:Landroidx/media3/extractor/ogg/FlacReader$FlacOggSeeker;

    if-eqz v2, :cond_10

    iput-object v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    :goto_3
    move v2, v10

    move-object v0, v11

    goto :goto_5

    :cond_10
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    cmp-long v2, v12, v5

    if-nez v2, :cond_11

    new-instance v0, Landroidx/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    goto :goto_3

    :cond_11
    iget-object v0, v0, Landroidx/media3/extractor/ogg/OggPacket;->a:Landroidx/media3/extractor/ogg/OggPageHeader;

    iget v2, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->a:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_12

    move/from16 v17, v4

    goto :goto_4

    :cond_12
    move/from16 v17, v3

    :goto_4
    new-instance v7, Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    move v2, v10

    iget-wide v9, v8, Landroidx/media3/extractor/ogg/StreamReader;->f:J

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v4

    iget v1, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->d:I

    iget v6, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->e:I

    add-int/2addr v1, v6

    int-to-long v13, v1

    iget-wide v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->b:J

    move-wide v15, v0

    move-object v0, v11

    move-wide v11, v4

    invoke-direct/range {v7 .. v17}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;-><init>(Landroidx/media3/extractor/ogg/StreamReader;JJJJZ)V

    iput-object v7, v8, Landroidx/media3/extractor/ogg/StreamReader;->d:Landroidx/media3/extractor/ogg/OggSeeker;

    :goto_5
    iput v2, v8, Landroidx/media3/extractor/ogg/StreamReader;->h:I

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v2, v1

    const v4, 0xfe01

    if-ne v2, v4, :cond_13

    return v3

    :cond_13
    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    return v3
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->a(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->e:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v4, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {p1, v3, v0, v4}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Landroidx/media3/extractor/ogg/FlacReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    return v1

    :cond_1
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :try_start_0
    invoke-static {v1, v2, v1}, Landroidx/media3/extractor/VorbisUtil;->c(ILandroidx/media3/common/util/ParsableByteArray;Z)Z

    move-result p1
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v3

    :goto_0
    if-eqz p1, :cond_2

    new-instance p1, Landroidx/media3/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    sget-object p1, Landroidx/media3/extractor/ogg/OpusReader;->o:[B

    invoke-static {v2, p1}, Landroidx/media3/extractor/ogg/OpusReader;->e(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroidx/media3/extractor/ogg/OpusReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->b:Landroidx/media3/extractor/ogg/StreamReader;

    :goto_1
    return v1

    :cond_3
    :goto_2
    return v3
.end method

.method public final release()V
    .locals 0

    return-void
.end method
