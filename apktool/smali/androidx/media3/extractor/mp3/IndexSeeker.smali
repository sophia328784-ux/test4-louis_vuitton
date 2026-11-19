.class final Landroidx/media3/extractor/mp3/IndexSeeker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/mp3/Seeker;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:Landroidx/media3/extractor/IndexSeekMap;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 12

    move-wide v0, p3

    move-wide/from16 v2, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/media3/extractor/IndexSeekMap;

    const/4 v7, 0x1

    new-array v8, v7, [J

    const/4 v9, 0x0

    aput-wide v0, v8, v9

    new-array v7, v7, [J

    const-wide/16 v10, 0x0

    aput-wide v10, v7, v9

    invoke-direct {v6, v8, v7, p1, p2}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    iput-object v6, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->a:J

    iput-wide v2, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->b:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, p1, v6

    const v7, -0x7fffffff

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    sget-object v6, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-lez v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v7, v0

    :cond_0
    iput v7, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->c:I

    return-void

    :cond_1
    iput v7, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->c:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->a:J

    return-wide v0
.end method

.method public final c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/IndexSeekMap;->c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p0

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->b:J

    return-wide v0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    invoke-virtual {p0}, Landroidx/media3/extractor/IndexSeekMap;->e()Z

    move-result p0

    return p0
.end method

.method public final f(J)J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    iget-object v0, p0, Landroidx/media3/extractor/IndexSeekMap;->b:Landroidx/media3/common/util/LongArray;

    iget v1, v0, Landroidx/media3/common/util/LongArray;->a:I

    if-nez v1, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/IndexSeekMap;->a:Landroidx/media3/common/util/LongArray;

    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/Util;->c(Landroidx/media3/common/util/LongArray;J)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/util/LongArray;->c(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->c:I

    return p0
.end method

.method public final h()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/mp3/IndexSeeker;->d:Landroidx/media3/extractor/IndexSeekMap;

    iget-wide v0, p0, Landroidx/media3/extractor/IndexSeekMap;->c:J

    return-wide v0
.end method
