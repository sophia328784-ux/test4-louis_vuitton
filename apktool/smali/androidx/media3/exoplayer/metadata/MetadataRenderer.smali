.class public final Landroidx/media3/exoplayer/metadata/MetadataRenderer;
.super Landroidx/media3/exoplayer/BaseRenderer;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:Z

.field public B:J

.field public C:Landroidx/media3/common/Metadata;

.field public D:J

.field public final t:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

.field public final u:Landroidx/media3/exoplayer/metadata/MetadataOutput;

.field public final v:Landroid/os/Handler;

.field public final w:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

.field public final x:Z

.field public y:Landroidx/media3/extractor/metadata/MetadataDecoder;

.field public z:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;)V
    .locals 1

    .line 45
    sget-object v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->a:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;-><init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/metadata/MetadataOutput;Landroid/os/Looper;Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/BaseRenderer;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->u:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->v:Landroid/os/Handler;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->t:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->x:Z

    new-instance p1, Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->w:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:J

    return-void
.end method


# virtual methods
.method public final K()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    iput-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->y:Landroidx/media3/extractor/metadata/MetadataDecoder;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:J

    return-void
.end method

.method public final M(ZZJ)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->z:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->A:Z

    return-void
.end method

.method public final R([Landroidx/media3/common/Format;JJLandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 2

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->t:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {p2, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->y:Landroidx/media3/extractor/metadata/MetadataDecoder;

    iget-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    if-eqz p1, :cond_1

    iget-wide p2, p1, Landroidx/media3/common/Metadata;->b:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:J

    add-long/2addr v0, p2

    sub-long/2addr v0, p4

    cmp-long p2, p2, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/media3/common/Metadata;

    iget-object p1, p1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    invoke-direct {p2, v0, v1, p1}, Landroidx/media3/common/Metadata;-><init>(J[Landroidx/media3/common/Metadata$Entry;)V

    move-object p1, p2

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    :cond_1
    iput-wide p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:J

    return-void
.end method

.method public final U(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    invoke-interface {v2}, Landroidx/media3/common/Metadata$Entry;->a()Landroidx/media3/common/Format;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->t:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->b(Landroidx/media3/common/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;

    move-result-object v2

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroidx/media3/common/Metadata$Entry;->c()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->w:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    array-length v4, v1

    invoke-virtual {v3, v4}, Landroidx/media3/decoder/DecoderInputBuffer;->i(I)V

    iget-object v4, v3, Landroidx/media3/decoder/DecoderInputBuffer;->e:Ljava/nio/ByteBuffer;

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Landroidx/media3/decoder/DecoderInputBuffer;->j()V

    invoke-virtual {v2, v3}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->U(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final V(J)J
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v5, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-wide v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->D:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final b(Landroidx/media3/common/Format;)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->t:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->b(Landroidx/media3/common/Format;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget p0, p1, Landroidx/media3/common/Format;->P:I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    invoke-static {p0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0

    :cond_1
    invoke-static {v0, v0, v0, v0}, Landroidx/media3/exoplayer/RendererCapabilities;->o(IIII)I

    move-result p0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->A:Z

    return p0
.end method

.method public final g(JJ)V
    .locals 5

    const/4 p3, 0x1

    move p4, p3

    :cond_0
    :goto_0
    if-eqz p4, :cond_7

    iget-boolean p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->z:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    if-nez p4, :cond_3

    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->w:Landroidx/media3/extractor/metadata/MetadataInputBuffer;

    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->g()V

    iget-object v1, p0, Landroidx/media3/exoplayer/BaseRenderer;->d:Landroidx/media3/exoplayer/FormatHolder;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/FormatHolder;->a()V

    invoke-virtual {p0, v1, p4, v0}, Landroidx/media3/exoplayer/BaseRenderer;->T(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;I)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroidx/media3/decoder/Buffer;->f(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->z:Z

    goto :goto_1

    :cond_1
    iget-wide v1, p4, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    iget-wide v3, p0, Landroidx/media3/exoplayer/BaseRenderer;->m:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_3

    iget-wide v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->B:J

    iput-wide v1, p4, Landroidx/media3/extractor/metadata/MetadataInputBuffer;->k:J

    invoke-virtual {p4}, Landroidx/media3/decoder/DecoderInputBuffer;->j()V

    iget-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->y:Landroidx/media3/extractor/metadata/MetadataDecoder;

    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-interface {v1, p4}, Landroidx/media3/extractor/metadata/MetadataDecoder;->a(Landroidx/media3/extractor/metadata/MetadataInputBuffer;)Landroidx/media3/common/Metadata;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroidx/media3/common/Metadata;->a:[Landroidx/media3/common/Metadata$Entry;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->U(Landroidx/media3/common/Metadata;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroidx/media3/common/Metadata;

    iget-wide v3, p4, Landroidx/media3/decoder/DecoderInputBuffer;->g:J

    invoke-virtual {p0, v3, v4}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->V(J)J

    move-result-wide v3

    invoke-direct {v1, v3, v4, v2}, Landroidx/media3/common/Metadata;-><init>(JLjava/util/List;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    goto :goto_1

    :cond_2
    const/4 p4, -0x5

    if-ne v2, p4, :cond_3

    iget-object p4, v1, Landroidx/media3/exoplayer/FormatHolder;->b:Landroidx/media3/common/Format;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p4, Landroidx/media3/common/Format;->t:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->B:J

    :cond_3
    :goto_1
    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    if-eqz p4, :cond_6

    iget-boolean v1, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->x:Z

    if-nez v1, :cond_4

    iget-wide v1, p4, Landroidx/media3/common/Metadata;->b:J

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->V(J)J

    move-result-wide v3

    cmp-long p4, v1, v3

    if-gtz p4, :cond_6

    :cond_4
    iget-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->v:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p3, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->u:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    invoke-interface {v0, p4}, Landroidx/media3/exoplayer/metadata/MetadataOutput;->C(Landroidx/media3/common/Metadata;)V

    :goto_2
    const/4 p4, 0x0

    iput-object p4, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    move p4, p3

    goto :goto_3

    :cond_6
    move p4, v0

    :goto_3
    iget-boolean v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->C:Landroidx/media3/common/Metadata;

    if-nez v0, :cond_0

    iput-boolean p3, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->A:Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "MetadataRenderer"

    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/common/Metadata;

    iget-object p0, p0, Landroidx/media3/exoplayer/metadata/MetadataRenderer;->u:Landroidx/media3/exoplayer/metadata/MetadataOutput;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/metadata/MetadataOutput;->C(Landroidx/media3/common/Metadata;)V

    return v1

    :cond_0
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return p0
.end method

.method public final isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
