.class public final Lcom/squareup/wire/ProtoAdapterKt$commonString$1;
.super Lcom/squareup/wire/ProtoAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "com/squareup/wire/ProtoAdapterKt$commonString$1",
        "Lcom/squareup/wire/ProtoAdapter;",
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
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lcom/squareup/wire/ProtoReader32;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/squareup/wire/ProtoReader;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lcom/squareup/wire/ProtoWriter;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/squareup/wire/ProtoWriter;->a:Lokio/BufferedSink;

    invoke-interface {p0, p2}, Lokio/BufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    return-void
.end method

.method public final e(Lcom/squareup/wire/ReverseProtoWriter;Ljava/lang/Object;)V
    .locals 9

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_0
    if-ltz p0, :cond_7

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    const/4 v4, -0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    iget-object v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    add-int/2addr p0, v4

    int-to-byte v2, v2

    aput-byte v2, v5, p0

    sub-int v2, v1, p0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v8, v1

    move v1, p0

    move p0, v8

    :goto_1
    if-le p0, v2, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v3, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v1, v1, -0x1

    int-to-byte v4, v4

    aput-byte v4, v5, v1

    goto :goto_1

    :cond_0
    iput v1, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    goto :goto_0

    :cond_1
    const/16 v5, 0x800

    if-ge v2, v5, :cond_2

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget-object p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    iget v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    and-int/lit8 v6, v2, 0x3f

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v5

    add-int/lit8 v4, v4, -0x2

    iput v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    shr-int/lit8 v2, v2, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    goto/16 :goto_4

    :cond_2
    const v5, 0xd800

    const/16 v6, 0x3f

    if-lt v2, v5, :cond_6

    const v5, 0xdfff

    if-le v2, v5, :cond_3

    goto :goto_3

    :cond_3
    if-ltz v1, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_4
    const v5, 0x7fffffff

    :goto_2
    const v7, 0xdbff

    if-gt v5, v7, :cond_5

    const v7, 0xdc00

    if-gt v7, v2, :cond_5

    const v7, 0xe000

    if-ge v2, v7, :cond_5

    add-int/lit8 p0, p0, -0x2

    and-int/lit16 v1, v5, 0x3ff

    shl-int/lit8 v1, v1, 0xa

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v1, v2

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget-object v2, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    iget v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    and-int/lit8 v7, v1, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v4, -0x2

    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v6

    or-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    add-int/lit8 v5, v4, -0x3

    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    shr-int/lit8 v7, v1, 0xc

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    add-int/lit8 v4, v4, -0x4

    iput v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    shr-int/lit8 v1, v1, 0x12

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, v2, v4

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget-object p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    iget v2, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    aput-byte v6, p0, v2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ReverseProtoWriter;->c(I)V

    iget-object p0, p1, Lcom/squareup/wire/ReverseProtoWriter;->d:[B

    iget v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    add-int/lit8 v5, v4, -0x1

    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    and-int/lit8 v7, v2, 0x3f

    or-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, p0, v5

    add-int/lit8 v5, v4, -0x2

    iput v5, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v5

    add-int/lit8 v4, v4, -0x3

    iput v4, p1, Lcom/squareup/wire/ReverseProtoWriter;->e:I

    shr-int/lit8 v2, v2, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    :goto_4
    move p0, v1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokio/Utf8;->a(Ljava/lang/String;)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
