.class public Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioTrackBufferSizeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/DefaultAudioTrackBufferSizeProvider$Builder;
    }
.end annotation


# virtual methods
.method public final a(IIIIIID)I
    .locals 6

    const/4 p0, 0x1

    const-wide/32 v0, 0xf4240

    if-eqz p3, :cond_7

    const/4 p5, 0x0

    const v2, -0x7fffffff

    if-eq p3, p0, :cond_5

    const/4 v3, 0x2

    if-ne p3, v3, :cond_4

    const/4 p3, 0x5

    const/16 v3, 0x8

    if-ne p2, p3, :cond_0

    const p3, 0x7a120

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_1

    const p3, 0xf4240

    goto :goto_0

    :cond_1
    const p3, 0x3d090

    :goto_0
    const/4 v4, -0x1

    if-eq p6, v4, :cond_2

    sget-object p2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p6, v3}, Lcom/google/common/math/IntMath;->a(II)I

    move-result p2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    move-result p2

    if-eq p2, v2, :cond_3

    move p5, p0

    :cond_3
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->q(Z)V

    :goto_1
    int-to-long p5, p3

    int-to-long p2, p2

    mul-long/2addr p5, p2

    div-long/2addr p5, v0

    invoke-static {p5, p6}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return p0

    :cond_5
    invoke-static {p2}, Landroidx/media3/extractor/ExtractorUtil;->b(I)I

    move-result p2

    if-eq p2, v2, :cond_6

    move p5, p0

    :cond_6
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->q(Z)V

    const-wide/32 p5, 0x2faf080

    int-to-long p2, p2

    mul-long/2addr p5, p2

    div-long/2addr p5, v0

    invoke-static {p5, p6}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result p2

    goto :goto_2

    :cond_7
    mul-int/lit8 p2, p1, 0x4

    int-to-long p5, p5

    const-wide/32 v2, 0x3d090

    mul-long/2addr v2, p5

    int-to-long v4, p4

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result p3

    const-wide/32 v2, 0xb71b0

    mul-long/2addr v2, p5

    mul-long/2addr v2, v4

    div-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->b(J)I

    move-result p5

    invoke-static {p2, p3, p5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result p2

    :goto_2
    int-to-double p2, p2

    mul-double/2addr p2, p7

    double-to-int p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p1, p4

    sub-int/2addr p1, p0

    div-int/2addr p1, p4

    mul-int/2addr p1, p4

    return p1
.end method
