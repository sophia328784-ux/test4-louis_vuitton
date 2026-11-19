.class public final Lcom/squareup/wire/ProtoAdapterKt$commonInstant$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/time/Instant;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "com/squareup/wire/ProtoAdapterKt$commonInstant$1",
        "Lcom/squareup/wire/ProtoAdapter;",
        "Ljava/time/Instant;",
        "Lcom/squareup/wire/Instant;",
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
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->h()I

    move-result p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->nextTag()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-interface {p1, v3}, Lcom/squareup/wire/ProtoReader32;->f(I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->j()I

    move-result v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->m()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0}, Lcom/squareup/wire/ProtoReader32;->l(I)Lokio/ByteString;

    int-to-long p0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->g()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {p1, v4}, Lcom/squareup/wire/ProtoReader;->m(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->n()I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->o()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/squareup/wire/ProtoReader;->e(J)Lokio/ByteString;

    int-to-long p0, p0

    invoke-static {v2, v3, p0, p1}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Ljava/time/Instant;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/time/Instant;->getNano()I

    move-result p0

    const-wide v2, -0xe7791f700L

    cmp-long p2, v2, v0

    if-gtz p2, :cond_3

    const-wide v2, 0x3afff44180L

    cmp-long p2, v0, v2

    if-gez p2, :cond_3

    if-ltz p0, :cond_2

    const p2, 0x3b9aca00

    if-ge p0, p2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    invoke-virtual {v1, p1, p2, v0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_0
    if-eqz p0, :cond_1

    const/4 p2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v0, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "Timestamp nanos ("

    const-string p2, ") must be in range [0, 999999999]"

    invoke-static {p0, p1, p2}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p0, "Timestamp seconds ("

    const-string p1, ") must be in range [-62135596800, 253402300799]"

    invoke-static {v0, v1, p0, p1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Ljava/time/Instant;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/time/Instant;->getNano()I

    move-result p0

    const-wide v2, -0xe7791f700L

    cmp-long p2, v2, v0

    if-gtz p2, :cond_3

    const-wide v2, 0x3afff44180L

    cmp-long p2, v0, v2

    if-gez p2, :cond_3

    if-ltz p0, :cond_2

    const p2, 0x3b9aca00

    if-ge p0, p2, :cond_2

    if-eqz p0, :cond_0

    const/4 p2, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v2, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v2, p1, p2, p0}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    invoke-virtual {v0, p1, p0, p2}, Lcom/squareup/wire/ProtoAdapter;->g(Lcom/squareup/wire/ReverseProtoWriter;ILjava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "Timestamp nanos ("

    const-string p2, ") must be in range [0, 999999999]"

    invoke-static {p0, p1, p2}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void

    :cond_3
    const-string p0, "Timestamp seconds ("

    const-string p1, ") must be in range [-62135596800, 253402300799]"

    invoke-static {v0, v1, p0, p1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Ljava/time/Instant;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result p0

    const-wide v2, -0xe7791f700L

    cmp-long p1, v2, v0

    const/4 v2, 0x0

    if-gtz p1, :cond_3

    const-wide v3, 0x3afff44180L

    cmp-long p1, v0, v3

    if-gez p1, :cond_3

    if-ltz p0, :cond_2

    const p1, 0x3b9aca00

    if-ge p0, p1, :cond_2

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/squareup/wire/ProtoAdapter;->k:Lcom/squareup/wire/ProtoAdapterKt$commonInt64$1;

    invoke-virtual {v1, p1, v0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result v2

    :cond_0
    if-eqz p0, :cond_1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->h:Lcom/squareup/wire/ProtoAdapterKt$commonInt32$1;

    invoke-virtual {v0, p1, p0}, Lcom/squareup/wire/ProtoAdapter;->i(ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    :cond_1
    return v2

    :cond_2
    const-string p1, "Timestamp nanos ("

    const-string v0, ") must be in range [0, 999999999]"

    invoke-static {p0, p1, v0}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return v2

    :cond_3
    const-string p0, "Timestamp seconds ("

    const-string p1, ") must be in range [-62135596800, 253402300799]"

    invoke-static {v0, v1, p0, p1}, Lo60;->i(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return v2
.end method
