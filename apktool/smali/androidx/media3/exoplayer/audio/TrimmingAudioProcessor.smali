.class public final Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "SourceFile"


# instance fields
.field public i:I

.field public j:I

.field public k:Z

.field public l:I

.field public m:[B

.field public n:I

.field public o:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 1

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    invoke-static {v0}, Landroidx/media3/common/util/Util;->K(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->k:Z

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->i:I

    if-nez v0, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->j:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->k:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->k:Z

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->j:I

    iget-object v2, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->d:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->i:I

    mul-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->l:I

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    return-void
.end method

.method public final c()V
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->k:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    if-lez v0, :cond_0

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    iget-object v3, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->d:I

    div-int/2addr v0, v3

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    return-void
.end method

.method public final e()Z
    .locals 1

    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .locals 4

    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    iget v2, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iput v3, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    :cond_0
    invoke-super {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->f()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 8

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->l:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    iget-object v6, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v6, v6, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->d:I

    div-int v6, v3, v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->o:J

    iget v4, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->l:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->l:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->l:I

    if-lez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sub-int/2addr v2, v3

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    add-int/2addr v0, v2

    iget-object v3, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    array-length v3, v3

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/BaseAudioProcessor;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v4

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    invoke-virtual {v3, v6, v5, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v4

    invoke-static {v0, v5, v2}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sub-int/2addr v2, v0

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    sub-int/2addr v0, v4

    iput v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    invoke-static {v1, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->m:[B

    iget v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget p1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->n:I

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final k(J)J
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->j:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/TrimmingAudioProcessor;->i:I

    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->b:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    invoke-static {p0, v0, v1}, Landroidx/media3/common/util/Util;->X(IJ)J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method
