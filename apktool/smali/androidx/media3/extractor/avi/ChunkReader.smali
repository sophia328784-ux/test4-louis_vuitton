.class final Landroidx/media3/extractor/avi/ChunkReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

.field public final b:Landroidx/media3/extractor/TrackOutput;

.field public final c:I

.field public final d:I

.field public final e:J

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:J

.field public m:[J

.field public n:[I


# direct methods
.method public constructor <init>(ILandroidx/media3/extractor/avi/AviStreamHeaderChunk;Landroidx/media3/extractor/TrackOutput;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/extractor/avi/ChunkReader;->a:Landroidx/media3/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {p2}, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->a()I

    move-result v0

    iget v1, p2, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    if-ne v0, v2, :cond_2

    const/high16 v3, 0x63640000

    goto :goto_1

    :cond_2
    const/high16 v3, 0x62770000

    :goto_1
    div-int/lit8 v4, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    shl-int/lit8 p1, p1, 0x8

    add-int/lit8 v4, v4, 0x30

    or-int/2addr p1, v4

    or-int/2addr v3, p1

    iput v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->c:I

    int-to-long v4, v1

    iget v3, p2, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->b:I

    int-to-long v6, v3

    const-wide/32 v8, 0xf4240

    mul-long/2addr v6, v8

    iget p2, p2, Landroidx/media3/extractor/avi/AviStreamHeaderChunk;->c:I

    int-to-long v8, p2

    sget-object p2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v4 .. v10}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->e:J

    iput-object p3, p0, Landroidx/media3/extractor/avi/ChunkReader;->b:Landroidx/media3/extractor/TrackOutput;

    if-ne v0, v2, :cond_3

    const/high16 p2, 0x62640000

    or-int/2addr p1, p2

    goto :goto_2

    :cond_3
    const/4 p1, -0x1

    :goto_2
    iput p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->d:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->l:J

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    iput v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->f:I

    return-void
.end method


# virtual methods
.method public final a(I)Landroidx/media3/extractor/SeekPoint;
    .locals 7

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    aget v1, v1, p1

    int-to-long v1, v1

    iget v3, p0, Landroidx/media3/extractor/avi/ChunkReader;->f:I

    int-to-long v3, v3

    iget-wide v5, p0, Landroidx/media3/extractor/avi/ChunkReader;->e:J

    div-long/2addr v5, v3

    mul-long/2addr v5, v1

    iget-object p0, p0, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    aget-wide p0, p0, p1

    invoke-direct {v0, v5, v6, p0, p1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    return-object v0
.end method

.method public final b(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->k:I

    if-nez v0, :cond_0

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance p2, Landroidx/media3/extractor/SeekPoint;

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->l:J

    invoke-direct {p2, v0, v1, v2, v3}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p1, p2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p1

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->f:I

    int-to-long v0, v0

    iget-wide v2, p0, Landroidx/media3/extractor/avi/ChunkReader;->e:J

    div-long/2addr v2, v0

    div-long/2addr p1, v2

    long-to-int p1, p1

    iget-object p2, p0, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, v0}, Landroidx/media3/common/util/Util;->e([IIZZ)I

    move-result p2

    iget-object v1, p0, Landroidx/media3/extractor/avi/ChunkReader;->n:[I

    aget v1, v1, p2

    if-ne v1, p1, :cond_1

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-virtual {p0, p2}, Landroidx/media3/extractor/avi/ChunkReader;->a(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/avi/ChunkReader;->a(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object p1

    add-int/2addr p2, v0

    iget-object v0, p0, Landroidx/media3/extractor/avi/ChunkReader;->m:[J

    array-length v0, v0

    if-ge p2, v0, :cond_2

    new-instance v0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-virtual {p0, p2}, Landroidx/media3/extractor/avi/ChunkReader;->a(I)Landroidx/media3/extractor/SeekPoint;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object v0

    :cond_2
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method
