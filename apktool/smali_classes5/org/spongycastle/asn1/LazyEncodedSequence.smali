.class Lorg/spongycastle/asn1/LazyEncodedSequence;
.super Lorg/spongycastle/asn1/ASN1Sequence;
.source "SourceFile"


# instance fields
.field public c:[B


# virtual methods
.method public final l(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-eqz v0, :cond_0

    const/16 p0, 0x30

    invoke-virtual {p1, p0, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->d(I[B)V

    return-void

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->q()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/spongycastle/asn1/ASN1Primitive;->l(Lorg/spongycastle/asn1/ASN1OutputStream;)V

    return-void
.end method

.method public final m()I
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    array-length p0, p0

    add-int/2addr v0, p0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->q()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1Primitive;->m()I

    move-result p0

    return p0
.end method

.method public final p()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->v()V

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->p()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->v()V

    :cond_0
    invoke-super {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->q()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized s(I)Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->v()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->s(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized size()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/LazyEncodedSequence;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized t()Ljava/util/Enumeration;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/ASN1Sequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/spongycastle/asn1/LazyConstructionEnumeration;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final v()V
    .locals 3

    new-instance v0, Lorg/spongycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/asn1/ASN1Sequence;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/LazyConstructionEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/LazyEncodedSequence;->c:[B

    return-void
.end method
