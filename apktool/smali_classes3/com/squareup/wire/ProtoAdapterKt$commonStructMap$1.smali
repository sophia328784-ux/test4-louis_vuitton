.class public final Lcom/squareup/wire/ProtoAdapterKt$commonStructMap$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "com/squareup/wire/ProtoAdapterKt$commonStructMap$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "",
        "",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->h()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->nextTag()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->e()V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->h()I

    move-result v1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_1
    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->nextTag()I

    move-result v6

    if-eq v6, v2, :cond_4

    if-eq v6, v3, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    invoke-interface {p1, v6}, Lcom/squareup/wire/ProtoReader32;->f(I)V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    invoke-virtual {v5, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-interface {p1, v1}, Lcom/squareup/wire/ProtoReader32;->l(I)Lokio/ByteString;

    if-eqz v4, :cond_0

    invoke-interface {p0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {p1, v0}, Lcom/squareup/wire/ProtoReader32;->l(I)Lokio/ByteString;

    return-object p0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->p()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v7, v2

    :goto_1
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v8

    if-eq v8, v3, :cond_4

    if-eq v8, v4, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    invoke-virtual {p1, v8}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    invoke-virtual {v7, p1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5, v6}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    if-eqz v2, :cond_0

    invoke-interface {p0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    return-object p0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 8

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v3

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->i(ILjava/lang/Object;)I

    move-result v6

    add-int/2addr v6, v3

    sget-object v3, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x8

    invoke-virtual {v3}, Lcom/squareup/wire/FieldEncoding;->a()I

    move-result v3

    or-int/2addr v3, v7

    invoke-virtual {p1, v3}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    invoke-virtual {p1, v6}, Lcom/squareup/wire/ProtoWriter;->b(I)V

    invoke-virtual {v1, p1, v2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {v4, p1, v5, p2}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 6

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    const/4 p2, 0x0

    new-array v0, p2, [Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->O([Ljava/lang/Object;)V

    array-length v0, p0

    :goto_0
    if-ge p2, v0, :cond_1

    aget-object v1, p0, p2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    move-result v3

    sget-object v4, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5, v1}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v4, v2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/squareup/wire/ReverseProtoWriter;->b()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1}, Lcom/squareup/wire/FieldEncoding;->a()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/squareup/wire/ReverseProtoWriter;->g(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Ljava/util/Map;

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->p:Lcom/squareup/wire/ProtoAdapterKt$commonString$1;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v1

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->t:Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/squareup/wire/ProtoAdapterKt$commonStructValue$1;->i(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    sget-object v1, Lcom/squareup/wire/ProtoWriter;->b:Lcom/squareup/wire/ProtoWriter$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x8

    invoke-virtual {v1}, Lcom/squareup/wire/FieldEncoding;->a()I

    move-result v1

    or-int/2addr v1, v2

    invoke-static {v1}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    move-result v1

    invoke-static {v0}, Lcom/squareup/wire/ProtoWriter$Companion;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/2addr p0, v2

    goto :goto_0

    :cond_1
    return p0
.end method
