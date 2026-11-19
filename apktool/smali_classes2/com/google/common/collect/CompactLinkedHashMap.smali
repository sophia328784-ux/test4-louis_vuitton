.class final Lcom/google/common/collect/CompactLinkedHashMap;
.super Lcom/google/common/collect/CompactHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/CompactHashMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public transient l:[J

.field public transient m:I

.field public transient n:I


# virtual methods
.method public final A(II)V
    .locals 7

    const-wide v0, 0xffffffffL

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iput p2, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object v3

    aget-wide v3, v3, p1

    const-wide v5, -0x100000000L

    and-long/2addr v3, v5

    add-int/lit8 v5, p2, 0x1

    int-to-long v5, v5

    and-long/2addr v5, v0

    or-long/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object v5

    aput-wide v3, v5, p1

    :goto_0
    if-ne p2, v2, :cond_1

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object v2

    aget-wide v2, v2, p2

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    or-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object p0

    aput-wide v0, p0, p2

    return-void
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final c(II)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result p0

    if-lt p1, p0, :cond_0

    return p2

    :cond_0
    return p1
.end method

.method public final clear()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    iput v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:I

    iget-object v0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:[J

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    :cond_1
    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->clear()V

    return-void
.end method

.method public final d()I
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->d()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:[J

    return v0
.end method

.method public final e()Ljava/util/Map;
    .locals 2

    invoke-super {p0}, Lcom/google/common/collect/CompactHashMap;->e()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:[J

    return-object v0
.end method

.method public final g(I)Ljava/util/LinkedHashMap;
    .locals 2

    new-instance p0, Ljava/util/LinkedHashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-object p0
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    return p0
.end method

.method public final j(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object p0

    aget-wide p0, p0, p1

    long-to-int p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final o(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->o(I)V

    const/4 p1, -0x2

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->m:I

    iput p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:I

    return-void
.end method

.method public final p(Ljava/lang/Object;IILjava/lang/Object;I)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/google/common/collect/CompactHashMap;->p(Ljava/lang/Object;IILjava/lang/Object;I)V

    iget p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->n:I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->A(II)V

    const/4 p1, -0x2

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->A(II)V

    return-void
.end method

.method public final q(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/CompactHashMap;->q(II)V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object p2

    aget-wide v1, p2, p1

    const/16 p2, 0x20

    ushr-long/2addr v1, p2

    long-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->j(I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/collect/CompactLinkedHashMap;->A(II)V

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object v1

    aget-wide v1, v1, v0

    ushr-long/2addr v1, p2

    long-to-int p2, v1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/google/common/collect/CompactLinkedHashMap;->A(II)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactLinkedHashMap;->j(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/CompactLinkedHashMap;->A(II)V

    :cond_0
    const-wide/16 p1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object p0

    aput-wide p1, p0, v0

    return-void
.end method

.method public final x(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/common/collect/CompactHashMap;->x(I)V

    invoke-virtual {p0}, Lcom/google/common/collect/CompactLinkedHashMap;->z()[J

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:[J

    return-void
.end method

.method public final z()[J
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/CompactLinkedHashMap;->l:[J

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, [J

    return-object p0
.end method
