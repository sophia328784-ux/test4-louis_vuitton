.class public final Landroidx/media3/common/audio/SonicAudioProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field public b:I

.field public c:F

.field public d:F

.field public e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field public i:Z

.field public j:Landroidx/media3/common/audio/Sonic;

.field public k:Ljava/nio/ByteBuffer;

.field public l:Ljava/nio/ByteBuffer;

.field public m:J

.field public n:J

.field public o:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->b:I

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 11

    iget-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->m:J

    iget-object v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/media3/common/audio/Sonic;->j:I

    iget v4, v2, Landroidx/media3/common/audio/Sonic;->b:I

    mul-int/2addr v3, v4

    iget-object v2, v2, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->q()I

    move-result v2

    mul-int/2addr v3, v2

    int-to-long v2, v3

    sub-long v6, v0, v2

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget-wide v8, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    if-ne v0, v1, :cond_0

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v4, p1

    invoke-static/range {v4 .. v10}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    move-wide v4, p1

    int-to-long p0, v0

    mul-long v2, v6, p0

    int-to-long p0, v1

    mul-long/2addr v8, p0

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, v4

    move-wide v4, v8

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    move-wide v4, p1

    iget p0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    float-to-double p0, p0

    long-to-double v0, v4

    mul-double/2addr p0, v0

    double-to-long p0, p0

    return-wide p0
.end method

.method public final e()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->k:I

    if-ltz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v2, p0, Landroidx/media3/common/audio/Sonic;->k:I

    iget v3, p0, Landroidx/media3/common/audio/Sonic;->b:I

    mul-int/2addr v2, v3

    iget-object p0, p0, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {p0}, Landroidx/media3/common/audio/Sonic$SonicImpl;->q()I

    move-result p0

    mul-int/2addr v2, p0

    if-nez v2, :cond_2

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->b:I

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->k:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->k:I

    mul-int/2addr v3, v2

    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->q()I

    move-result v6

    mul-int/2addr v3, v6

    if-lez v3, :cond_3

    iget-object v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v6

    if-ge v6, v3, :cond_1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_1
    iget-object v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    iget v7, v0, Landroidx/media3/common/audio/Sonic;->k:I

    if-ltz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-static {v5}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->q()I

    move-result v7

    mul-int/2addr v7, v2

    div-int/2addr v5, v7

    iget v7, v0, Landroidx/media3/common/audio/Sonic;->k:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v1, v5, v6}, Landroidx/media3/common/audio/Sonic$SonicImpl;->b(ILjava/nio/ByteBuffer;)V

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->k:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/common/audio/Sonic;->k:I

    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->n()Ljava/lang/Object;

    move-result-object v6

    mul-int/2addr v5, v2

    invoke-interface {v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->n()Ljava/lang/Object;

    move-result-object v1

    iget v0, v0, Landroidx/media3/common/audio/Sonic;->k:I

    mul-int/2addr v0, v2

    invoke-static {v6, v5, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    int-to-long v2, v3

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-wide v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->m:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->m:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->b:I

    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->q()I

    move-result v3

    mul-int/2addr v1, v3

    div-int v1, p0, v1

    invoke-interface {v2, v1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->i(I)V

    invoke-interface {v2, p0, p1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->a(ILjava/nio/ByteBuffer;)V

    iget p0, v0, Landroidx/media3/common/audio/Sonic;->j:I

    add-int/2addr p0, v1

    iput p0, v0, Landroidx/media3/common/audio/Sonic;->j:I

    invoke-virtual {v0}, Landroidx/media3/common/audio/Sonic;->b()V

    return-void
.end method

.method public final h(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V
    .locals 10

    invoke-virtual {p0}, Landroidx/media3/common/audio/SonicAudioProcessor;->isActive()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-boolean v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    if-eqz v2, :cond_1

    new-instance v3, Landroidx/media3/common/audio/Sonic;

    iget v4, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget v5, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    iget v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    iget v7, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    iget v8, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    move v9, p1

    goto :goto_0

    :cond_0
    move v9, v0

    :goto_0
    invoke-direct/range {v3 .. v9}, Landroidx/media3/common/audio/Sonic;-><init>(IIFFIZ)V

    iput-object v3, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    if-eqz p1, :cond_2

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->j:I

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->k:I

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->l:I

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->m:I

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->n:I

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->o:I

    iput v0, p1, Landroidx/media3/common/audio/Sonic;->p:I

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Landroidx/media3/common/audio/Sonic;->q:D

    iget-object p1, p1, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {p1}, Landroidx/media3/common/audio/Sonic$SonicImpl;->flush()V

    :cond_2
    :goto_1
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->m:J

    iput-wide v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->o:Z

    return-void
.end method

.method public final i()V
    .locals 11

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    if-eqz v0, :cond_1

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->j:I

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->c:F

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->d:F

    div-float/2addr v2, v3

    float-to-double v4, v2

    iget v2, v0, Landroidx/media3/common/audio/Sonic;->e:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    iget v6, v0, Landroidx/media3/common/audio/Sonic;->o:I

    sub-int v7, v1, v6

    iget v8, v0, Landroidx/media3/common/audio/Sonic;->k:I

    int-to-double v9, v7

    div-double/2addr v9, v4

    int-to-double v4, v6

    add-double/2addr v9, v4

    iget-wide v4, v0, Landroidx/media3/common/audio/Sonic;->q:D

    add-double/2addr v9, v4

    iget v4, v0, Landroidx/media3/common/audio/Sonic;->l:I

    int-to-double v4, v4

    add-double/2addr v9, v4

    div-double/2addr v9, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v2

    double-to-int v2, v9

    add-int/2addr v8, v2

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroidx/media3/common/audio/Sonic;->q:D

    iget-object v2, v0, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    iget v3, v0, Landroidx/media3/common/audio/Sonic;->h:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v3, v1

    invoke-interface {v2, v4}, Landroidx/media3/common/audio/Sonic$SonicImpl;->i(I)V

    iget v4, v0, Landroidx/media3/common/audio/Sonic;->b:I

    mul-int/2addr v1, v4

    invoke-interface {v2, v1, v3}, Landroidx/media3/common/audio/Sonic$SonicImpl;->c(II)V

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->j:I

    add-int/2addr v3, v1

    iput v3, v0, Landroidx/media3/common/audio/Sonic;->j:I

    invoke-virtual {v0}, Landroidx/media3/common/audio/Sonic;->b()V

    iget v1, v0, Landroidx/media3/common/audio/Sonic;->k:I

    const/4 v2, 0x0

    if-le v1, v8, :cond_0

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroidx/media3/common/audio/Sonic;->k:I

    :cond_0
    iput v2, v0, Landroidx/media3/common/audio/Sonic;->j:I

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->o:I

    iput v2, v0, Landroidx/media3/common/audio/Sonic;->l:I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->o:Z

    return-void
.end method

.method public final isActive()Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget-object p0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 3

    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0

    :cond_1
    :goto_0
    iget v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    :cond_2
    iput-object p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    new-instance v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->b:I

    invoke-direct {v2, v1, p1, v0}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    iput-object v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    return-object v2
.end method

.method public final k(J)J
    .locals 11

    iget-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->m:J

    iget-object v2, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Landroidx/media3/common/audio/Sonic;->j:I

    iget v4, v2, Landroidx/media3/common/audio/Sonic;->b:I

    mul-int/2addr v3, v4

    iget-object v2, v2, Landroidx/media3/common/audio/Sonic;->i:Landroidx/media3/common/audio/Sonic$SonicImpl;

    invoke-interface {v2}, Landroidx/media3/common/audio/Sonic$SonicImpl;->q()I

    move-result v2

    mul-int/2addr v3, v2

    int-to-long v2, v3

    sub-long v8, v0, v2

    iget-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->a:I

    iget-wide v6, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    if-ne v0, v1, :cond_0

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v4, p1

    invoke-static/range {v4 .. v10}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    move-wide v4, p1

    int-to-long p0, v1

    mul-long v2, v6, p0

    int-to-long p0, v0

    mul-long/2addr v8, p0

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v0, v4

    move-wide v4, v8

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    move-wide v4, p1

    long-to-double p1, v4

    iget p0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    float-to-double v0, p0

    div-double/2addr p1, v0

    double-to-long p0, p1

    return-wide p0
.end method

.method public final reset()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->c:F

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->d:F

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->f:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->g:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->h:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->k:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->l:Ljava/nio/ByteBuffer;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->i:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->j:Landroidx/media3/common/audio/Sonic;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->m:J

    iput-wide v1, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->n:J

    iput-boolean v0, p0, Landroidx/media3/common/audio/SonicAudioProcessor;->o:Z

    return-void
.end method
