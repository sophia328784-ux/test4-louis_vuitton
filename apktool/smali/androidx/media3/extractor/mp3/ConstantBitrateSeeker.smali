.class final Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;
.super Landroidx/media3/extractor/ConstantBitrateSeekMap;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field public final i:J

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:J


# direct methods
.method public constructor <init>(JJIIZ)V
    .locals 9

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 22
    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZ)V

    return-void
.end method

.method public constructor <init>(JJIIZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroidx/media3/extractor/ConstantBitrateSeekMap;-><init>(JJIIZZ)V

    iput-wide p3, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->i:J

    iput p5, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->j:I

    iput p6, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->k:I

    iput-boolean p7, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->l:Z

    const-wide/16 p3, -0x1

    cmp-long p5, p1, p3

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p3

    :goto_0
    iput-wide p1, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->m:J

    return-void
.end method

.method public constructor <init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V
    .locals 9

    .line 23
    iget v5, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->f:I

    iget v6, p5, Landroidx/media3/extractor/MpegAudioUtil$Header;->c:I

    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    invoke-direct/range {v0 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJIIZZ)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->i:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->m:J

    return-wide v0
.end method

.method public final f(J)J
    .locals 4

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->b:J

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0x7a1200

    mul-long/2addr p1, v0

    iget p0, p0, Landroidx/media3/extractor/ConstantBitrateSeekMap;->e:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;->j:I

    return p0
.end method
