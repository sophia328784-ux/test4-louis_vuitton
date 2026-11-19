.class final Landroidx/media3/extractor/mp3/XingFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field public final b:J

.field public final c:J

.field public final d:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

.field public final e:I

.field public final f:I

.field public final g:[J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;JJ[JLandroidx/media3/extractor/mp3/Mp3InfoReplayGain;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0, p1}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>(Landroidx/media3/extractor/MpegAudioUtil$Header;)V

    iput-object v0, p0, Landroidx/media3/extractor/mp3/XingFrame;->a:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iput-wide p2, p0, Landroidx/media3/extractor/mp3/XingFrame;->b:J

    iput-wide p4, p0, Landroidx/media3/extractor/mp3/XingFrame;->c:J

    iput-object p6, p0, Landroidx/media3/extractor/mp3/XingFrame;->g:[J

    iput-object p7, p0, Landroidx/media3/extractor/mp3/XingFrame;->d:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    iput p8, p0, Landroidx/media3/extractor/mp3/XingFrame;->e:I

    iput p9, p0, Landroidx/media3/extractor/mp3/XingFrame;->f:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Landroidx/media3/extractor/mp3/XingFrame;->b:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/mp3/XingFrame;->a:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->g:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    iget p0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->d:I

    invoke-static {p0, v2, v3}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method
