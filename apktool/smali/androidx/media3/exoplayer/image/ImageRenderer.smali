.class public Landroidx/media3/exoplayer/image/ImageRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;,
        Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;
    }
.end annotation


# instance fields
.field public A:J

.field public B:I

.field public C:I

.field public D:Landroidx/media3/common/Format;

.field public E:Landroidx/media3/exoplayer/image/ImageDecoder;

.field public F:Landroidx/media3/decoder/DecoderInputBuffer;

.field public G:Landroidx/media3/exoplayer/image/ImageOutput;

.field public H:Landroidx/media3/exoplayer/image/ImageMetadataListener;

.field public I:Landroid/graphics/Bitmap;

.field public J:Z

.field public K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

.field public M:I

.field public N:Z

.field public final t:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

.field public final u:Landroidx/media3/decoder/DecoderInputBuffer;

.field public final v:Ljava/util/ArrayDeque;

.field public w:Z

.field public x:Z

.field public y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

.field public z:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/image/ImageDecoder$Factory;Landroidx/media3/exoplayer/image/ImageOutput;)V
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->t:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    if-nez p2, :cond_0

    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    :cond_0
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Landroidx/media3/exoplayer/image/ImageOutput;

    new-instance p1, Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->u:Landroidx/media3/decoder/DecoderInputBuffer;

    sget-object p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->c:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->v:Ljava/util/ArrayDeque;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->A:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->z:J

    iput p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    return-void
.end method


# virtual methods
.method public final K()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    sget-object v0, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->c:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->v:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->X()V

    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Landroidx/media3/exoplayer/image/ImageOutput;

    invoke-interface {p0}, Landroidx/media3/exoplayer/image/ImageOutput;->a()V

    return-void
.end method

.method public final L(ZZ)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    return-void
.end method

.method public final M(ZZJ)V
    .locals 0

    const/4 p1, 0x1

    iget p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->x:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->w:Z

    const/4 p2, 0x0

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-boolean p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/media3/decoder/Decoder;->flush()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->v:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public final N()V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->X()V

    return-void
.end method

.method public final O()V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->X()V

    const/4 v0, 0x1

    iget v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    return-void
.end method

.method public final R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide p1, p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->b:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->v:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->A:J

    cmp-long p6, p2, v0

    if-eqz p6, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->z:J

    cmp-long p6, v2, v0

    if-eqz p6, :cond_0

    cmp-long p2, v2, p2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->A:J

    invoke-direct {p2, v0, v1, p4, p5}, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :goto_0
    new-instance p1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    invoke-direct {p1, v0, v1, p4, p5}, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;-><init>(JJ)V

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    return-void
.end method

.method public final U(J)Z
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-nez v2, :cond_0

    goto/16 :goto_6

    :cond_0
    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    const/4 v3, 0x2

    if-nez v2, :cond_1

    iget v2, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    if-eq v2, v3, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->v:Ljava/util/ArrayDeque;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    invoke-interface {v0}, Landroidx/media3/exoplayer/image/ImageDecoder;->a()Landroidx/media3/exoplayer/image/ImageOutputBuffer;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->X()V

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->W()V

    return v1

    :cond_3
    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->h()V

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_13

    iput-boolean v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->x:Z

    return v1

    :cond_4
    iget-object v6, v0, Landroidx/media3/exoplayer/image/ImageOutputBuffer;->e:Landroid/graphics/Bitmap;

    const-string v7, "Non-EOS buffer came back from the decoder without bitmap."

    invoke-static {v6, v7}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Landroidx/media3/exoplayer/image/ImageOutputBuffer;->e:Landroid/graphics/Bitmap;

    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderOutputBuffer;->h()V

    :cond_5
    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    iget v6, v0, Landroidx/media3/common/Format;->N:I

    iget v0, v0, Landroidx/media3/common/Format;->O:I

    if-ne v6, v5, :cond_6

    if-eq v0, v5, :cond_7

    :cond_6
    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    if-eq v0, v7, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v1

    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-object v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->c:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->a:I

    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v9, Landroidx/media3/common/Format;->N:I

    div-int/2addr v8, v9

    iget-object v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v10, Landroidx/media3/common/Format;->O:I

    div-int/2addr v9, v10

    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    iget v10, v10, Landroidx/media3/common/Format;->N:I

    rem-int v11, v7, v10

    mul-int/2addr v11, v8

    div-int/2addr v7, v10

    mul-int/2addr v7, v9

    iget-object v10, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    invoke-static {v10, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_1

    :cond_9
    iget-object v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    iput-object v7, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->c:Landroid/graphics/Bitmap;

    :goto_2
    iget-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-object v6, v6, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget-wide v7, v7, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    sub-long p1, v7, p1

    iget v9, p0, Landroidx/media3/exoplayer/BaseRenderer;->i:I

    if-ne v9, v3, :cond_a

    move v3, v5

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    iget v9, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    if-eqz v9, :cond_d

    if-eq v9, v5, :cond_c

    if-ne v9, v4, :cond_b

    move v3, v1

    goto :goto_4

    :cond_b
    invoke-static {}, Lr81;->b()V

    return v1

    :cond_c
    move v3, v5

    :cond_d
    :goto_4
    if-nez v3, :cond_e

    const-wide/16 v9, 0x7530

    cmp-long p1, p1, v9

    if-gez p1, :cond_13

    :cond_e
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageMetadataListener;

    if-eqz p1, :cond_f

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v9, p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->b:J

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Landroidx/media3/exoplayer/image/ImageMetadataListener;->a()V

    :cond_f
    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Landroidx/media3/exoplayer/image/ImageOutput;

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v9, p2, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->b:J

    sub-long/2addr v7, v9

    invoke-interface {p1, v7, v8, v6}, Landroidx/media3/exoplayer/image/ImageOutput;->onImageAvailable(JLandroid/graphics/Bitmap;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide p1, p1, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->z:J

    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iget-wide v6, v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;->a:J

    cmp-long v1, p1, v6

    if-ltz v1, :cond_10

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    iput-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->y:Landroidx/media3/exoplayer/image/ImageRenderer$OutputStreamInfo;

    goto :goto_5

    :cond_10
    iput v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    const/4 p1, 0x0

    if-eqz v0, :cond_11

    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p2, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->a:I

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, v0, Landroidx/media3/common/Format;->O:I

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Landroidx/media3/common/Format;->N:I

    mul-int/2addr v0, v1

    sub-int/2addr v0, v5

    if-ne p2, v0, :cond_12

    :cond_11
    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->I:Landroid/graphics/Bitmap;

    :cond_12
    iget-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object p1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    return v5

    :cond_13
    :goto_6
    return v1
.end method

.method public final V(J)Z
    .locals 14

    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/BaseRenderer;->d:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    if-eqz v2, :cond_15

    iget v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_15

    iget-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->w:Z

    if-eqz v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v3, :cond_2

    invoke-interface {v2}, Landroidx/media3/decoder/Decoder;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/decoder/DecoderInputBuffer;

    iput-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v2, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    iput v7, v0, Landroidx/media3/decoder/Buffer;->b:I

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-interface {v0, v2}, Landroidx/media3/exoplayer/image/ImageDecoder;->f(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    iput v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    return v1

    :cond_3
    invoke-virtual {p0, v0, v3, v1}, Landroidx/media3/exoplayer/BaseRenderer;->T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v3, -0x5

    const/4 v4, 0x1

    if-eq v2, v3, :cond_14

    const/4 v0, -0x4

    if-eq v2, v0, :cond_5

    const/4 p0, -0x3

    if-ne v2, p0, :cond_4

    goto/16 :goto_9

    :cond_4
    invoke-static {}, Lr81;->b()V

    return v1

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->j()V

    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    iget-object v0, v0, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v4

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    if-eqz v0, :cond_9

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    iput-object v3, v2, Landroidx/media3/decoder/DecoderInputBuffer;->c:Landroidx/media3/common/Format;

    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/image/ImageDecoder;->f(Landroidx/media3/decoder/DecoderInputBuffer;)V

    iput v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:I

    :cond_9
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v7}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v3

    if-eqz v3, :cond_a

    iput-boolean v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    goto/16 :goto_7

    :cond_a
    new-instance v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:I

    iget-wide v8, v2, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-direct {v3, v5, v8, v9}, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;-><init>(IJ)V

    iput-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iget v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:I

    add-int/2addr v2, v4

    iput v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->M:I

    iget-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    if-nez v2, :cond_11

    iget-wide v8, v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    const-wide/16 v10, 0x7530

    sub-long v12, v8, v10

    cmp-long v2, v12, p1

    if-gtz v2, :cond_b

    add-long/2addr v10, v8

    cmp-long v2, p1, v10

    if-gtz v2, :cond_b

    move v2, v4

    goto :goto_1

    :cond_b
    move v2, v1

    :goto_1
    iget-object v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    if-eqz v5, :cond_c

    iget-wide v10, v5, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->b:J

    cmp-long v5, v10, p1

    if-gtz v5, :cond_c

    cmp-long v5, p1, v8

    if-gez v5, :cond_c

    move v5, v4

    goto :goto_2

    :cond_c
    move v5, v1

    :goto_2
    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v8, Landroidx/media3/common/Format;->N:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e

    iget-object v8, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    iget v10, v8, Landroidx/media3/common/Format;->O:I

    if-eq v10, v9, :cond_e

    iget v8, v8, Landroidx/media3/common/Format;->N:I

    mul-int/2addr v10, v8

    sub-int/2addr v10, v4

    iget v3, v3, Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;->a:I

    if-ne v3, v10, :cond_d

    goto :goto_3

    :cond_d
    move v3, v1

    goto :goto_4

    :cond_e
    :goto_3
    move v3, v4

    :goto_4
    if-nez v2, :cond_10

    if-nez v5, :cond_10

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    move v3, v1

    goto :goto_6

    :cond_10
    :goto_5
    move v3, v4

    :goto_6
    iput-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    if-eqz v5, :cond_11

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->K:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->L:Landroidx/media3/exoplayer/image/ImageRenderer$TileInfo;

    :goto_7
    iget-object v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v7}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v2

    if-eqz v2, :cond_12

    iput-boolean v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->w:Z

    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    return v1

    :cond_12
    iget-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->A:J

    iget-object v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v3, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->A:J

    if-eqz v0, :cond_13

    iput-object v6, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    goto :goto_8

    :cond_13
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    :goto_8
    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    xor-int/2addr p0, v4

    return p0

    :cond_14
    iget-object v0, v0, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    iput-boolean v4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Z

    iput v5, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    return v4

    :cond_15
    :goto_9
    return v1
.end method

.method public final W()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->t:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->b(Landroidx/media3/common/Format;)I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    invoke-static {v2, v3, v3, v3}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result v2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/image/ImageDecoderException;

    const-string v1, "Provided decoder factory can\'t create decoder for format."

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/image/ImageDecoderException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    const/16 v2, 0xfa5

    invoke-virtual {p0, v0, v1, v3, v2}, Landroidx/media3/exoplayer/BaseRenderer;->J(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroidx/media3/decoder/Decoder;->release()V

    :cond_3
    invoke-interface {v1}, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->a()Landroidx/media3/exoplayer/image/BitmapFactoryImageDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    iput-boolean v3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Z

    return-void
.end method

.method public final X()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->F:Landroidx/media3/decoder/DecoderInputBuffer;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->B:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->A:J

    iget-object v1, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroidx/media3/decoder/Decoder;->release()V

    iput-object v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->t:Landroidx/media3/exoplayer/image/ImageDecoder$Factory;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/image/ImageDecoder$Factory;->b(Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->x:Z

    return p0
.end method

.method public final g(JJ)V
    .locals 3

    iget-boolean p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->x:Z

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    if-nez p3, :cond_3

    iget-object p3, p0, Landroidx/media3/exoplayer/BaseRenderer;->d:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {p3}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    iget-object p4, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->u:Landroidx/media3/decoder/DecoderInputBuffer;

    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    const/4 v0, 0x2

    invoke-virtual {p0, p3, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v0

    const/4 v1, -0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object p3, p3, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->D:Landroidx/media3/common/Format;

    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->N:Z

    goto :goto_1

    :cond_1
    const/4 p1, -0x4

    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    invoke-virtual {p4, p1}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->q(Z)V

    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->w:Z

    iput-boolean v2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->x:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object p3, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->E:Landroidx/media3/exoplayer/image/ImageDecoder;

    if-nez p3, :cond_4

    invoke-virtual {p0}, Landroidx/media3/exoplayer/image/ImageRenderer;->W()V

    :cond_4
    :try_start_0
    const-string p3, "drainAndFeedDecoder"

    invoke-static {p3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->U(J)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/image/ImageRenderer;->V(J)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_0
    .catch Landroidx/media3/exoplayer/image/ImageDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 p2, 0xfa3

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p3, p2}, Landroidx/media3/exoplayer/BaseRenderer;->J(Ljava/lang/Exception;Landroidx/media3/common/Format;ZI)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ImageRenderer"

    return-object p0
.end method

.method public final isReady()Z
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->C:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->J:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final q(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0xf

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    check-cast p2, Landroidx/media3/exoplayer/image/ImageMetadataListener;

    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->H:Landroidx/media3/exoplayer/image/ImageMetadataListener;

    return-void

    :cond_1
    instance-of p1, p2, Landroidx/media3/exoplayer/image/ImageOutput;

    if-eqz p1, :cond_2

    check-cast p2, Landroidx/media3/exoplayer/image/ImageOutput;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    sget-object p2, Landroidx/media3/exoplayer/image/ImageOutput;->a:Landroidx/media3/exoplayer/image/ImageOutput;

    :cond_3
    iput-object p2, p0, Landroidx/media3/exoplayer/image/ImageRenderer;->G:Landroidx/media3/exoplayer/image/ImageOutput;

    return-void
.end method
