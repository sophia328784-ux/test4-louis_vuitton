.class final Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OggSeekMap"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/extractor/ogg/DefaultOggSeeker;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->a:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    return-void
.end method


# virtual methods
.method public final c(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 12

    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->a:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->d:Landroidx/media3/extractor/ogg/StreamReader;

    iget v0, v0, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->b:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v4, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->c:J

    sub-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-wide v6, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->f:J

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    sub-long v6, v0, v2

    iget-wide v8, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->b:J

    const-wide/16 v0, 0x1

    sub-long v10, v4, v0

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->k(JJJ)J

    move-result-wide v0

    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public final e()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h()J
    .locals 5

    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->a:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->d:Landroidx/media3/extractor/ogg/StreamReader;

    iget-wide v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->f:J

    const-wide/32 v3, 0xf4240

    mul-long/2addr v1, v3

    iget p0, v0, Landroidx/media3/extractor/ogg/StreamReader;->i:I

    int-to-long v3, p0

    div-long/2addr v1, v3

    return-wide v1
.end method
