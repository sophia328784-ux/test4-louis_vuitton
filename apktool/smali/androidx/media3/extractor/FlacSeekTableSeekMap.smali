.class public final Landroidx/media3/extractor/FlacSeekTableSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# instance fields
.field public final a:Landroidx/media3/extractor/FlacStreamMetadata;

.field public final b:J


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    iput-wide p2, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->b:J

    return-void
.end method


# virtual methods
.method public final c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 13

    iget-object v0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Landroidx/media3/extractor/FlacStreamMetadata;->k:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iget-object v2, v1, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->a:[J

    iget-object v1, v1, Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;->b:[J

    iget v3, v0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v3, v3

    mul-long/2addr v3, p1

    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    iget-wide v3, v0, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    const-wide/16 v9, 0x1

    sub-long v11, v3, v9

    const-wide/16 v9, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-static {v2, v3, v4, v7}, Landroidx/media3/common/util/Util;->f([JJZ)I

    move-result v3

    const-wide/16 v7, 0x0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move-wide v9, v7

    goto :goto_0

    :cond_0
    aget-wide v9, v2, v3

    :goto_0
    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    aget-wide v7, v1, v3

    :goto_1
    mul-long/2addr v9, v5

    iget v4, v0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v11, v4

    div-long/2addr v9, v11

    iget-wide v11, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->b:J

    add-long/2addr v7, v11

    new-instance p0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {p0, v9, v10, v7, v8}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    iget-wide v7, p0, Landroidx/media3/extractor/SeekPoint;->a:J

    cmp-long p1, v7, p1

    if-eqz p1, :cond_3

    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    if-ne v3, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-wide p1, v2, v3

    aget-wide v1, v1, v3

    mul-long/2addr p1, v5

    iget v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    int-to-long v3, v0

    div-long/2addr p1, v3

    add-long/2addr v11, v1

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v0, p1, p2, v11, v12}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, p0, v0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p1

    :cond_3
    :goto_2
    new-instance p1, Landroidx/media3/extractor/SeekMap$SeekPoints;

    invoke-direct {p1, p0}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p1
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/FlacSeekTableSeekMap;->a:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {p0}, Landroidx/media3/extractor/FlacStreamMetadata;->b()J

    move-result-wide v0

    return-wide v0
.end method
