.class final Lcom/perfectcorp/thirdparty/com/google/gson/stream/b;
.super Lcom/perfectcorp/thirdparty/com/google/gson/internal/r;


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)V
    .locals 1

    instance-of p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->j0()I

    move-result p0

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const/16 p0, 0x9

    iput p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_2
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    const/16 p0, 0x8

    iput p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    const/16 p0, 0xa

    iput p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->i:I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected a name but was "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->n0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method
