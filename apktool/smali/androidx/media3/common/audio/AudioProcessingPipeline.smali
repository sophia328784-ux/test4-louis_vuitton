.class public final Landroidx/media3/common/audio/AudioProcessingPipeline;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/collect/ImmutableList;

.field public final b:Ljava/util/ArrayList;

.field public c:[Ljava/nio/ByteBuffer;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->e:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-boolean p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->b:Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    iget-wide v3, v0, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;->a:J

    move v0, v2

    :goto_0
    iget-object v5, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/audio/AudioProcessor;

    new-instance v6, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;

    invoke-direct {v6, v3, v4}, Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;-><init>(J)V

    invoke-interface {v5, v6}, Landroidx/media3/common/audio/AudioProcessor;->h(Landroidx/media3/common/audio/AudioProcessor$StreamMetadata;)V

    invoke-interface {v5}, Landroidx/media3/common/audio/AudioProcessor;->isActive()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v5, v3, v4}, Landroidx/media3/common/audio/AudioProcessor;->k(J)J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-ltz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    :goto_3
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result v0

    if-gt v2, v0, :cond_3

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v3}, Landroidx/media3/common/audio/AudioProcessor;->f()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final c()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessor;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final e(Ljava/nio/ByteBuffer;)V
    .locals 9

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result v4

    if-gt v3, v4, :cond_7

    iget-object v4, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v4, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v5}, Landroidx/media3/common/audio/AudioProcessor;->e()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->b()I

    move-result v5

    if-ge v3, v5, :cond_6

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v4}, Landroidx/media3/common/audio/AudioProcessor;->i()V

    goto :goto_5

    :cond_1
    if-lez v3, :cond_2

    iget-object v4, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    aget-object v4, v4, v6

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p1

    goto :goto_2

    :cond_3
    sget-object v4, Landroidx/media3/common/audio/AudioProcessor;->a:Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    int-to-long v6, v6

    invoke-interface {v5, v4}, Landroidx/media3/common/audio/AudioProcessor;->g(Ljava/nio/ByteBuffer;)V

    iget-object v8, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    invoke-interface {v5}, Landroidx/media3/common/audio/AudioProcessor;->f()Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v8, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-gtz v4, :cond_5

    iget-object v4, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->c:[Ljava/nio/ByteBuffer;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move v4, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v4, v0

    :goto_4
    or-int/2addr v2, v4

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v1, v2

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/media3/common/audio/AudioProcessingPipeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object p1, p1, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    return p0
.end method
