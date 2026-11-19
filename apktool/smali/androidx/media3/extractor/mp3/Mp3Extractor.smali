.class public final Landroidx/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final w:Llc0;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public final d:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final e:Landroidx/media3/extractor/GaplessInfoHolder;

.field public final f:Landroidx/media3/extractor/Id3Peeker;

.field public final g:Landroidx/media3/extractor/DiscardingTrackOutput;

.field public h:Landroidx/media3/extractor/ExtractorOutput;

.field public i:Landroidx/media3/extractor/TrackOutput;

.field public j:Landroidx/media3/extractor/TrackOutput;

.field public k:I

.field public l:Landroidx/media3/common/Metadata;

.field public m:Landroidx/media3/common/Metadata;

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:I

.field public s:Landroidx/media3/extractor/mp3/Seeker;

.field public t:Z

.field public u:Z

.field public v:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Llc0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Llc0;-><init>(I)V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->w:Llc0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:I

    iput-wide p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->b:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {p1}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/MpegAudioUtil$Header;

    new-instance p1, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->e:Landroidx/media3/extractor/GaplessInfoHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    new-instance p1, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {p1}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->f:Landroidx/media3/extractor/Id3Peeker;

    new-instance p1, Landroidx/media3/extractor/DiscardingTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DiscardingTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->g:Landroidx/media3/extractor/DiscardingTrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:J

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:J

    iput-wide p3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->v:J

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    instance-of p2, p1, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/media3/extractor/mp3/IndexSeeker;

    iget-object p1, p1, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    iget-object p1, p1, Landroidx/media3/extractor/IndexSeekMap;->b:Landroidx/media3/common/util/LongArray;

    iget p2, p1, Landroidx/media3/common/util/LongArray;->a:I

    const/4 v0, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroidx/media3/common/util/LongArray;->c(I)J

    move-result-wide p1

    sub-long/2addr p3, p1

    const-wide/32 p1, 0x186a0

    cmp-long p1, p3, p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->u:Z

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->g:Landroidx/media3/extractor/DiscardingTrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    :cond_2
    :goto_1
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->j(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:I

    const/4 v6, 0x0

    iget-object v7, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/MpegAudioUtil$Header;

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v6}, Landroidx/media3/extractor/mp3/Mp3Extractor;->j(Landroidx/media3/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v5, -0x1

    const/4 v6, -0x1

    const-wide/32 v16, 0xf4240

    goto/16 :goto_2f

    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v8, 0x1

    if-nez v2, :cond_3a

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget v13, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    invoke-direct {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v13, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v14, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    invoke-interface {v1, v6, v14, v13}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    iget v13, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->a:I

    and-int/2addr v13, v8

    iget v14, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->e:I

    const/16 v15, 0x15

    const-wide/32 v16, 0xf4240

    const/16 v3, 0x24

    if-eqz v13, :cond_1

    if-eq v14, v8, :cond_3

    move v15, v3

    goto :goto_1

    :cond_1
    if-eq v14, v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v15, 0xd

    :cond_3
    :goto_1
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/lit8 v13, v15, 0x4

    const v14, 0x496e666f

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const v9, 0x56425249

    const v10, 0x58696e67

    if-lt v4, v13, :cond_4

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    if-eq v4, v10, :cond_6

    if-ne v4, v14, :cond_4

    goto :goto_2

    :cond_4
    iget v4, v2, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const/16 v13, 0x28

    if-lt v4, v13, :cond_5

    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    if-ne v3, v9, :cond_5

    move v4, v9

    goto :goto_2

    :cond_5
    move v4, v6

    :cond_6
    :goto_2
    iget-object v13, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->e:Landroidx/media3/extractor/GaplessInfoHolder;

    const/4 v15, 0x2

    const-wide/16 v20, -0x1

    if-eq v4, v14, :cond_8

    if-eq v4, v9, :cond_9

    if-eq v4, v10, :cond_8

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    move/from16 v36, v6

    const-wide/16 v24, 0x0

    :cond_7
    :goto_3
    const/16 v26, 0x0

    goto/16 :goto_13

    :cond_8
    move/from16 v36, v6

    const-wide/16 v24, 0x0

    goto/16 :goto_8

    :cond_9
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v9

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v22

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    iget v14, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    const-wide/16 v24, 0x0

    int-to-long v11, v14

    add-long v31, v22, v11

    int-to-long v11, v4

    add-long v11, v31, v11

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    if-gtz v4, :cond_a

    move/from16 v36, v6

    :goto_4
    const/16 v26, 0x0

    goto/16 :goto_7

    :cond_a
    iget v14, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    move/from16 v36, v6

    int-to-long v5, v4

    iget v4, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    int-to-long v3, v4

    mul-long/2addr v5, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v5, v3

    invoke-static {v14, v5, v6}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v29

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v3

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v4

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v5

    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget v6, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    move-wide/from16 v27, v9

    int-to-long v8, v6

    add-long v22, v22, v8

    new-array v6, v3, [J

    new-array v8, v3, [J

    move-wide/from16 v9, v22

    move/from16 v14, v36

    :goto_5
    if-ge v14, v3, :cond_f

    int-to-long v0, v14

    mul-long v0, v0, v29

    move-wide/from16 v33, v0

    int-to-long v0, v3

    div-long v0, v33, v0

    aput-wide v0, v6, v14

    aput-wide v9, v8, v14

    const/4 v0, 0x1

    if-eq v5, v0, :cond_e

    if-eq v5, v15, :cond_d

    const/4 v1, 0x3

    if-eq v5, v1, :cond_c

    const/4 v1, 0x4

    if-eq v5, v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v1

    goto :goto_6

    :cond_c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v1

    goto :goto_6

    :cond_d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    goto :goto_6

    :cond_e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    :goto_6
    int-to-long v0, v1

    move-wide/from16 v33, v0

    int-to-long v0, v4

    mul-long v0, v0, v33

    add-long/2addr v9, v0

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_5

    :cond_f
    cmp-long v0, v27, v20

    const-string v1, ", "

    if-eqz v0, :cond_10

    cmp-long v0, v27, v11

    if-eqz v0, :cond_10

    const-string v0, "VBRI data size mismatch: "

    move-wide/from16 v2, v27

    invoke-static {v2, v3, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_10
    cmp-long v0, v11, v9

    if-eqz v0, :cond_11

    const-string v0, "VBRI bytes and ToC mismatch (using max): "

    invoke-static {v11, v12, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nSeeking will be inaccurate."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :cond_11
    move-wide/from16 v33, v11

    new-instance v26, Landroidx/media3/extractor/mp3/VbriSeeker;

    iget v0, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->f:I

    move/from16 v35, v0

    move-object/from16 v27, v6

    move-object/from16 v28, v8

    invoke-direct/range {v26 .. v35}, Landroidx/media3/extractor/mp3/VbriSeeker;-><init>([J[JJJJI)V

    :goto_7
    iget v0, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    move-object/from16 v0, p0

    goto/16 :goto_13

    :goto_8
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_12

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v3

    goto :goto_9

    :cond_12
    const/4 v3, -0x1

    :goto_9
    and-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v5

    move-wide/from16 v41, v5

    goto :goto_a

    :cond_13
    move-wide/from16 v41, v20

    :goto_a
    and-int/lit8 v5, v0, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_15

    const/16 v5, 0x64

    new-array v6, v5, [J

    move/from16 v8, v36

    :goto_b
    if-ge v8, v5, :cond_14

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v9

    int-to-long v11, v9

    aput-wide v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_14
    move-object/from16 v43, v6

    goto :goto_c

    :cond_15
    const/16 v43, 0x0

    :goto_c
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_16

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_16
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    const/16 v5, 0x18

    if-lt v0, v5, :cond_18

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v5

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v6

    invoke-static {v5}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->a(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    move-result-object v5

    invoke-static {v6}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->a(I)Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    move-result-object v6

    const/4 v8, 0x0

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_17

    if-nez v5, :cond_17

    if-nez v6, :cond_17

    const/4 v8, 0x0

    goto :goto_d

    :cond_17
    new-instance v8, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    invoke-direct {v8, v0, v5, v6}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;-><init>(FLandroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;)V

    :goto_d
    invoke-virtual {v2, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->D()I

    move-result v0

    const v2, 0xfff000

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0xc

    and-int/lit16 v0, v0, 0xfff

    move/from16 v46, v0

    move/from16 v45, v2

    move-object/from16 v44, v8

    goto :goto_e

    :cond_18
    const/16 v44, 0x0

    const/16 v45, -0x1

    const/16 v46, -0x1

    :goto_e
    new-instance v37, Landroidx/media3/extractor/mp3/XingFrame;

    int-to-long v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/MpegAudioUtil$Header;

    move-wide/from16 v39, v2

    move-object/from16 v38, v5

    invoke-direct/range {v37 .. v46}, Landroidx/media3/extractor/mp3/XingFrame;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JLandroidx/media3/extractor/mp3/Mp3InfoReplayGain;II)V

    move-object/from16 v2, v37

    iget v3, v13, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_19

    iget v3, v13, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    if-eq v3, v5, :cond_19

    goto :goto_f

    :cond_19
    iget v3, v2, Landroidx/media3/extractor/mp3/XingFrame;->e:I

    if-eq v3, v5, :cond_1a

    iget v6, v2, Landroidx/media3/extractor/mp3/XingFrame;->f:I

    if-eq v6, v5, :cond_1a

    iput v3, v13, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    iput v6, v13, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    :cond_1a
    :goto_f
    iget-object v3, v2, Landroidx/media3/extractor/mp3/XingFrame;->d:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    if-eqz v3, :cond_1b

    new-instance v5, Landroidx/media3/common/Metadata;

    const/4 v14, 0x1

    new-array v6, v14, [Landroidx/media3/common/Metadata$Entry;

    aput-object v3, v6, v36

    invoke-direct {v5, v6}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_10

    :cond_1b
    const/4 v5, 0x0

    :goto_10
    iput-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:Landroidx/media3/common/Metadata;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v27

    iget v3, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iget-object v3, v2, Landroidx/media3/extractor/mp3/XingFrame;->a:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-wide v5, v2, Landroidx/media3/extractor/mp3/XingFrame;->c:J

    if-ne v4, v10, :cond_1e

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/XingFrame;->a()J

    move-result-wide v30

    cmp-long v4, v30, v18

    if-nez v4, :cond_1c

    goto/16 :goto_3

    :cond_1c
    cmp-long v4, v5, v20

    if-eqz v4, :cond_1d

    cmp-long v4, v8, v20

    if-eqz v4, :cond_1d

    add-long v10, v27, v5

    cmp-long v4, v10, v8

    if-eqz v4, :cond_1d

    sub-long v8, v8, v27

    const-string v4, "Data size mismatch between stream ("

    const-string v10, ") and Xing frame ("

    invoke-static {v8, v9, v4, v10}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "), using smaller value."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1d
    move-wide/from16 v33, v5

    new-instance v26, Landroidx/media3/extractor/mp3/XingSeeker;

    iget v4, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    iget v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->f:I

    iget-object v2, v2, Landroidx/media3/extractor/mp3/XingFrame;->g:[J

    move-object/from16 v35, v2

    move/from16 v32, v3

    move/from16 v29, v4

    invoke-direct/range {v26 .. v35}, Landroidx/media3/extractor/mp3/XingSeeker;-><init>(JIJIJ[J)V

    goto :goto_13

    :cond_1e
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v8

    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/XingFrame;->a()J

    move-result-wide v33

    cmp-long v4, v33, v18

    if-nez v4, :cond_1f

    goto/16 :goto_3

    :cond_1f
    cmp-long v4, v5, v20

    if-eqz v4, :cond_20

    add-long v8, v27, v5

    iget v4, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    int-to-long v10, v4

    sub-long/2addr v5, v10

    :goto_11
    move-wide/from16 v29, v5

    move-wide/from16 v38, v8

    goto :goto_12

    :cond_20
    cmp-long v4, v8, v20

    if-eqz v4, :cond_7

    sub-long v4, v8, v27

    iget v6, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    int-to-long v10, v6

    sub-long v5, v4, v10

    goto :goto_11

    :goto_12
    sget-object v35, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v31, 0x7a1200

    invoke-static/range {v29 .. v35}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    move-wide/from16 v8, v29

    move-object/from16 v6, v35

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v42

    iget-wide v4, v2, Landroidx/media3/extractor/mp3/XingFrame;->b:J

    invoke-static {v8, v9, v4, v5, v6}, Lcom/google/common/math/LongMath;->a(JJLjava/math/RoundingMode;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result v43

    new-instance v37, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget v2, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    int-to-long v2, v2

    add-long v40, v27, v2

    const/16 v44, 0x0

    invoke-direct/range {v37 .. v44}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    move-object/from16 v26, v37

    :goto_13
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:Landroidx/media3/common/Metadata;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    if-nez v2, :cond_21

    :goto_14
    const/4 v2, 0x0

    goto/16 :goto_1d

    :cond_21
    invoke-static {}, Lcom/google/common/base/Predicates;->a()Lcom/google/common/base/Predicate;

    move-result-object v5

    iget-object v6, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v8, v6

    move/from16 v9, v36

    :goto_15
    if-ge v9, v8, :cond_24

    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-virtual {v12, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/common/Metadata$Entry;

    invoke-interface {v5, v10}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    goto :goto_16

    :cond_22
    const/4 v10, 0x0

    :goto_16
    if-eqz v10, :cond_23

    goto :goto_17

    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_15

    :cond_24
    const/4 v10, 0x0

    :goto_17
    check-cast v10, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    if-nez v10, :cond_25

    goto :goto_14

    :cond_25
    iget-object v5, v10, Landroidx/media3/extractor/metadata/id3/MlltFrame;->e:[I

    iget-object v2, v2, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v6, v2

    move/from16 v8, v36

    :goto_18
    if-ge v8, v6, :cond_28

    aget-object v9, v2, v8

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_26

    invoke-virtual {v12, v9}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/common/Metadata$Entry;

    move-object v11, v9

    check-cast v11, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v11, v11, Landroidx/media3/extractor/metadata/id3/Id3Frame;->a:Ljava/lang/String;

    const-string v12, "TLEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    goto :goto_19

    :cond_26
    const/4 v9, 0x0

    :goto_19
    if-eqz v9, :cond_27

    goto :goto_1a

    :cond_27
    add-int/lit8 v8, v8, 0x1

    goto :goto_18

    :cond_28
    const/4 v9, 0x0

    :goto_1a
    check-cast v9, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-nez v9, :cond_29

    move-wide/from16 v8, v18

    move/from16 v6, v36

    goto :goto_1b

    :cond_29
    iget-object v2, v9, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->c:Lcom/google/common/collect/ImmutableList;

    move/from16 v6, v36

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->R(J)J

    move-result-wide v8

    :goto_1b
    array-length v2, v5

    add-int/lit8 v11, v2, 0x1

    new-array v12, v11, [J

    new-array v11, v11, [J

    aput-wide v3, v12, v6

    aput-wide v24, v11, v6

    move-wide/from16 v22, v24

    const/4 v6, 0x1

    :goto_1c
    if-gt v6, v2, :cond_2a

    iget v15, v10, Landroidx/media3/extractor/metadata/id3/MlltFrame;->c:I

    add-int/lit8 v27, v6, -0x1

    aget v28, v5, v27

    add-int v15, v15, v28

    int-to-long v14, v15

    add-long/2addr v3, v14

    iget v14, v10, Landroidx/media3/extractor/metadata/id3/MlltFrame;->d:I

    iget-object v15, v10, Landroidx/media3/extractor/metadata/id3/MlltFrame;->f:[I

    aget v15, v15, v27

    add-int/2addr v14, v15

    int-to-long v14, v14

    add-long v22, v22, v14

    aput-wide v3, v12, v6

    aput-wide v22, v11, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_2a
    new-instance v2, Landroidx/media3/extractor/mp3/MlltSeeker;

    invoke-direct {v2, v12, v11, v8, v9}, Landroidx/media3/extractor/mp3/MlltSeeker;-><init>([J[JJ)V

    :goto_1d
    iget-boolean v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->t:Z

    iget v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:I

    if-eqz v3, :cond_2b

    new-instance v2, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {v2}, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    goto/16 :goto_25

    :cond_2b
    if-eqz v2, :cond_2c

    move-object v3, v2

    goto :goto_1e

    :cond_2c
    if-eqz v26, :cond_2d

    move-object/from16 v3, v26

    goto :goto_1e

    :cond_2d
    const/4 v3, 0x0

    :goto_1e
    if-nez v3, :cond_2f

    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_2e
    const/4 v2, 0x0

    :goto_1f
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3Extractor;->g(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v3

    :cond_2f
    and-int/lit8 v2, v4, 0x4

    if-eqz v2, :cond_30

    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result v2

    if-nez v2, :cond_30

    new-instance v29, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v30

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v32

    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->d()J

    move-result-wide v34

    invoke-direct/range {v29 .. v35}, Landroidx/media3/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    move-object/from16 v3, v29

    :cond_30
    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result v2

    if-nez v2, :cond_34

    instance-of v2, v3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-nez v2, :cond_34

    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_34

    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v5

    cmp-long v2, v5, v18

    if-eqz v2, :cond_34

    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->d()J

    move-result-wide v5

    cmp-long v2, v5, v20

    if-nez v2, :cond_31

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    cmp-long v2, v5, v20

    if-eqz v2, :cond_34

    :cond_31
    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->a()J

    move-result-wide v5

    cmp-long v2, v5, v20

    if-eqz v2, :cond_32

    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->a()J

    move-result-wide v5

    move-wide/from16 v40, v5

    goto :goto_20

    :cond_32
    move-wide/from16 v40, v24

    :goto_20
    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->d()J

    move-result-wide v5

    cmp-long v2, v5, v20

    if-eqz v2, :cond_33

    invoke-interface {v3}, Landroidx/media3/extractor/mp3/Seeker;->d()J

    move-result-wide v5

    :goto_21
    move-wide/from16 v38, v5

    goto :goto_22

    :cond_33
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v5

    goto :goto_21

    :goto_22
    sub-long v29, v38, v40

    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v33

    sget-object v35, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const-wide/32 v31, 0x7a1200

    invoke-static/range {v29 .. v35}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v42

    new-instance v37, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    const/16 v43, -0x1

    const/16 v44, 0x0

    invoke-direct/range {v37 .. v44}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZ)V

    move-object/from16 v2, v37

    goto :goto_24

    :cond_34
    invoke-interface {v3}, Landroidx/media3/extractor/SeekMap;->e()Z

    move-result v2

    if-nez v2, :cond_36

    instance-of v2, v3, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-nez v2, :cond_36

    and-int/lit8 v2, v4, 0x1

    if-eqz v2, :cond_36

    and-int/lit8 v2, v4, 0x2

    if-eqz v2, :cond_35

    const/4 v2, 0x1

    goto :goto_23

    :cond_35
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/mp3/Mp3Extractor;->g(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    move-result-object v2

    goto :goto_24

    :cond_36
    move-object v2, v3

    :goto_24
    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v2}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v5

    invoke-interface {v3, v5, v6}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    :goto_25
    iput-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:Landroidx/media3/common/Metadata;

    if-eqz v2, :cond_37

    and-int/lit8 v3, v4, 0x8

    if-nez v3, :cond_37

    iget-object v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:Landroidx/media3/common/Metadata;

    if-eqz v3, :cond_38

    invoke-virtual {v2, v3}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v2

    goto :goto_26

    :cond_37
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->m:Landroidx/media3/common/Metadata;

    :cond_38
    :goto_26
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v4, "audio/mpeg"

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    iget-object v4, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->b:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    const/16 v4, 0x1000

    iput v4, v3, Landroidx/media3/common/Format$Builder;->o:I

    iget v4, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->e:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->F:I

    iget v4, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->G:I

    iget v4, v13, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->I:I

    iget v4, v13, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    iput v4, v3, Landroidx/media3/common/Format$Builder;->J:I

    iput-object v2, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->g()I

    move-result v2

    const v4, -0x7fffffff

    if-eq v2, v4, :cond_39

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->g()I

    move-result v2

    iput v2, v3, Landroidx/media3/common/Format$Builder;->h:I

    :cond_39
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-interface {v2, v4}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:J

    goto :goto_27

    :cond_3a
    const-wide/32 v16, 0xf4240

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v24, 0x0

    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-wide v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->p:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3b

    sub-long/2addr v4, v2

    long-to-int v2, v4

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_3b
    :goto_27
    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    if-nez v2, :cond_44

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->i(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_3c

    goto/16 :goto_2e

    :cond_3c
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:I

    int-to-long v3, v3

    const v5, -0x1f400

    and-int/2addr v5, v2

    int-to-long v5, v5

    const-wide/32 v8, -0x1f400

    and-long/2addr v3, v8

    cmp-long v3, v5, v3

    if-nez v3, :cond_3d

    invoke-static {v2}, Landroidx/media3/extractor/MpegAudioUtil;->a(I)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_3e

    :cond_3d
    const/4 v6, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2b

    :cond_3e
    invoke-virtual {v7, v2}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    cmp-long v2, v2, v18

    if-nez v2, :cond_3f

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Landroidx/media3/extractor/mp3/Seeker;->f(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->b:J

    cmp-long v4, v2, v18

    if-eqz v4, :cond_3f

    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    move-wide/from16 v5, v24

    invoke-interface {v4, v5, v6}, Landroidx/media3/extractor/mp3/Seeker;->f(J)J

    move-result-wide v4

    iget-wide v8, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v8

    iput-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    :cond_3f
    iget v2, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    iput v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget v4, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:J

    iget-object v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v5, v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v5, :cond_44

    check-cast v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    iget-object v4, v4, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    iget-wide v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    iget v8, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    int-to-long v8, v8

    add-long/2addr v5, v8

    iget-wide v8, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    mul-long v5, v5, v16

    iget v10, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    int-to-long v10, v10

    div-long/2addr v5, v10

    add-long/2addr v5, v8

    iget-object v8, v4, Landroidx/media3/extractor/IndexSeekMap;->b:Landroidx/media3/common/util/LongArray;

    iget v9, v8, Landroidx/media3/common/util/LongArray;->a:I

    const-wide/32 v10, 0x186a0

    if-nez v9, :cond_40

    goto :goto_28

    :cond_40
    const/4 v14, 0x1

    sub-int/2addr v9, v14

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/LongArray;->c(I)J

    move-result-wide v8

    sub-long v8, v5, v8

    cmp-long v8, v8, v10

    if-gez v8, :cond_41

    goto :goto_29

    :cond_41
    :goto_28
    invoke-virtual {v4, v5, v6, v2, v3}, Landroidx/media3/extractor/IndexSeekMap;->i(JJ)V

    :goto_29
    iget-boolean v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->u:Z

    if-eqz v2, :cond_44

    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->v:J

    iget-object v4, v4, Landroidx/media3/extractor/IndexSeekMap;->b:Landroidx/media3/common/util/LongArray;

    iget v5, v4, Landroidx/media3/common/util/LongArray;->a:I

    if-nez v5, :cond_43

    :cond_42
    const/4 v6, 0x0

    goto :goto_2a

    :cond_43
    const/4 v14, 0x1

    sub-int/2addr v5, v14

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/LongArray;->c(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-gez v2, :cond_42

    const/4 v6, 0x0

    iput-boolean v6, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->u:Z

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:Landroidx/media3/extractor/TrackOutput;

    iput-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    :cond_44
    :goto_2a
    const/4 v14, 0x1

    goto :goto_2d

    :goto_2b
    invoke-interface {v1, v14}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput v6, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:I

    :goto_2c
    const/4 v5, -0x1

    const/4 v6, 0x0

    goto :goto_2f

    :goto_2d
    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    iget v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    invoke-interface {v2, v1, v3, v14}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_45

    :goto_2e
    const/4 v5, -0x1

    const/4 v6, -0x1

    goto :goto_2f

    :cond_45
    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    if-lez v2, :cond_46

    goto :goto_2c

    :cond_46
    iget-object v8, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->j:Landroidx/media3/extractor/TrackOutput;

    iget-wide v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    iget-wide v3, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    mul-long v1, v1, v16

    iget v5, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    int-to-long v5, v5

    div-long/2addr v1, v5

    add-long v9, v1, v3

    iget v12, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v8 .. v14}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    iget v3, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    const/4 v6, 0x0

    iput v6, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->r:I

    const/4 v5, -0x1

    :goto_2f
    if-ne v6, v5, :cond_47

    iget-object v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v2, v1, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v2, :cond_47

    iget-wide v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->o:J

    iget-wide v4, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->n:J

    mul-long v2, v2, v16

    iget v7, v7, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    int-to-long v7, v7

    div-long/2addr v2, v7

    add-long/2addr v2, v4

    invoke-interface {v1}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_47

    iget-object v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    move-object v4, v1

    check-cast v4, Landroidx/media3/extractor/mp3/IndexSeeker;

    iget-object v4, v4, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    iput-wide v2, v4, Landroidx/media3/extractor/IndexSeekMap;->c:J

    iget-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iget-object v1, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:Landroidx/media3/extractor/TrackOutput;

    iget-object v0, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    :cond_47
    return v6
.end method

.method public final g(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
    .locals 9

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    new-instance v2, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/MpegAudioUtil$Header;

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V

    return-object v2
.end method

.method public final h()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    instance-of v1, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/media3/extractor/ConstantBitrateSeekMap;

    invoke-virtual {v0}, Landroidx/media3/extractor/ConstantBitrateSeekMap;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v2}, Landroidx/media3/extractor/mp3/Seeker;->d()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    check-cast v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->q:J

    new-instance v1, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    iget-wide v4, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->i:J

    iget v6, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->j:I

    iget v7, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->k:I

    iget-boolean v8, v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->l:Z

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZ)V

    iput-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->h:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->i:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->h()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    :cond_0
    return-void
.end method

.method public final i(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->s:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    iget-object p0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v1, v0, v2, p0}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    :goto_0
    return v1
.end method

.method public final j(Landroidx/media3/extractor/ExtractorInput;Z)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/high16 v3, 0x20000

    const/4 v4, 0x0

    if-nez v2, :cond_3

    iget v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->a:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/media3/extractor/mp3/Mp3Extractor;->w:Llc0;

    :goto_0
    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->f:Landroidx/media3/extractor/Id3Peeker;

    invoke-virtual {v5, v1, v2, v3}, Landroidx/media3/extractor/Id3Peeker;->a(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;I)Landroidx/media3/common/Metadata;

    move-result-object v2

    iput-object v2, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->l:Landroidx/media3/common/Metadata;

    if-eqz v2, :cond_1

    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->e:Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-virtual {v5, v2}, Landroidx/media3/extractor/GaplessInfoHolder;->b(Landroidx/media3/common/Metadata;)V

    :cond_1
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v5

    long-to-int v2, v5

    if-nez p2, :cond_2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_2
    move v5, v4

    :goto_1
    move v6, v5

    move v7, v6

    goto :goto_2

    :cond_3
    move v2, v4

    move v5, v2

    goto :goto_1

    :goto_2
    invoke-virtual/range {p0 .. p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->i(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    if-lez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->h()V

    invoke-static {}, Lmd;->e()V

    return v4

    :cond_5
    iget-object v8, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    if-eqz v5, :cond_6

    int-to-long v10, v5

    const v12, -0x1f400

    and-int/2addr v12, v8

    int-to-long v12, v12

    const-wide/32 v14, -0x1f400

    and-long/2addr v10, v14

    cmp-long v10, v12, v10

    if-nez v10, :cond_7

    :cond_6
    invoke-static {v8}, Landroidx/media3/extractor/MpegAudioUtil;->a(I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_b

    :cond_7
    add-int/lit8 v5, v7, 0x1

    if-ne v7, v3, :cond_9

    if-eqz p2, :cond_8

    return v4

    :cond_8
    invoke-virtual {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->h()V

    invoke-static {}, Lmd;->e()V

    return v4

    :cond_9
    if-eqz p2, :cond_a

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    add-int v6, v2, v5

    invoke-interface {v1, v6}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    goto :goto_3

    :cond_a
    invoke-interface {v1, v9}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :goto_3
    move v6, v4

    move v7, v5

    move v5, v6

    goto :goto_2

    :cond_b
    add-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_c

    iget-object v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->d:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-virtual {v5, v8}, Landroidx/media3/extractor/MpegAudioUtil$Header;->a(I)Z

    move v5, v8

    goto :goto_6

    :cond_c
    const/4 v8, 0x4

    if-ne v6, v8, :cond_e

    :goto_4
    if-eqz p2, :cond_d

    add-int/2addr v2, v7

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    goto :goto_5

    :cond_d
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    :goto_5
    iput v5, v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->k:I

    return v9

    :cond_e
    :goto_6
    add-int/lit8 v10, v10, -0x4

    invoke-interface {v1, v10}, Landroidx/media3/extractor/ExtractorInput;->k(I)V

    goto :goto_2
.end method

.method public final release()V
    .locals 0

    return-void
.end method
