.class public final Lcom/squareup/wire/ByteArrayProtoReader32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/wire/ProtoReader32;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/squareup/wire/ByteArrayProtoReader32;",
        "Lcom/squareup/wire/ProtoReader32;",
        "",
        "source",
        "",
        "pos",
        "limit",
        "<init>",
        "([BII)V",
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


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/squareup/wire/FieldEncoding;

.field public final i:Ljava/util/ArrayList;

.field public j:Lcom/squareup/wire/ProtoReader32AsProtoReader;


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    iput p2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iput p3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>([BIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 28
    array-length p3, p1

    .line 29
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/wire/ByteArrayProtoReader32;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 12

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED64 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int/lit8 v2, v0, 0x8

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v2, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget-object v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    aget-byte v5, v4, v0

    int-to-long v5, v5

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    add-int/lit8 v9, v0, 0x2

    iput v9, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v3, v4, v3

    int-to-long v10, v3

    and-long/2addr v10, v7

    const/16 v3, 0x8

    shl-long/2addr v10, v3

    or-long/2addr v5, v10

    add-int/lit8 v3, v0, 0x3

    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v9, v4, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v11, 0x10

    shl-long/2addr v9, v11

    or-long/2addr v5, v9

    add-int/lit8 v9, v0, 0x4

    iput v9, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v3, v4, v3

    int-to-long v10, v3

    and-long/2addr v10, v7

    const/16 v3, 0x18

    shl-long/2addr v10, v3

    or-long/2addr v5, v10

    add-int/lit8 v3, v0, 0x5

    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v9, v4, v9

    int-to-long v9, v9

    and-long/2addr v9, v7

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    or-long/2addr v5, v9

    add-int/lit8 v9, v0, 0x6

    iput v9, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v3, v4, v3

    int-to-long v10, v3

    and-long/2addr v10, v7

    const/16 v3, 0x28

    shl-long/2addr v10, v3

    or-long/2addr v5, v10

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v3, v4, v9

    int-to-long v9, v3

    and-long/2addr v9, v7

    const/16 v3, 0x30

    shl-long/2addr v9, v3

    or-long/2addr v5, v9

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v0, v4, v0

    int-to-long v2, v0

    and-long/2addr v2, v7

    const/16 v0, 0x38

    shl-long/2addr v2, v0

    or-long/2addr v2, v5

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->n(I)V

    return-wide v2

    :cond_2
    invoke-static {}, Lmd;->e()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b()Lokio/ByteString;
    .locals 11

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->o()I

    move-result v0

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int v2, v1, v0

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v2, v3, :cond_0

    sget-object v3, Lokio/ByteString;->e:Lokio/ByteString$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v4, v3

    int-to-long v5, v4

    int-to-long v7, v1

    int-to-long v9, v0

    invoke-static/range {v5 .. v10}, Lokio/-SegmentedByteString;->b(JJJ)V

    new-instance v0, Lokio/ByteString;

    invoke-static {v3, v1, v2}, Lkotlin/collections/ArraysKt;->o([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/ByteString;-><init>([B)V

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    return-object v0

    :cond_0
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final c()I
    .locals 7

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected FIXED32 or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int/lit8 v2, v0, 0x4

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v2, v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget-object v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    aget-byte v5, v4, v0

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x2

    iput v6, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v5

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v5, v4, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v3, v5

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->n(I)V

    return v0

    :cond_2
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->o()I

    move-result v0

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v3}, Lkotlin/text/StringsKt;->m(II[BI)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    return-object v1

    :cond_0
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->c()I

    return-void

    :cond_0
    const-string p0, "Unexpected call to skip()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->o()I

    move-result v0

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v1, v0, :cond_2

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    return-void

    :cond_2
    invoke-static {}, Lmd;->e()V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->a()J

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->m()J

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/squareup/wire/FieldEncoding;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/squareup/wire/ProtoAdapter;->b(Lcom/squareup/wire/ProtoReader32;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->k(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V

    return-void
.end method

.method public final g()Lcom/squareup/wire/FieldEncoding;
    .locals 0

    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    return-object p0
.end method

.method public final h()I
    .locals 3

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    const/4 v1, 0x6

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return v0

    :cond_1
    const-string p0, "Wire recursion limit exceeded"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    const-string p0, "Unexpected call to beginMessage()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final i()Lcom/squareup/wire/ProtoReader32AsProtoReader;
    .locals 1

    iget-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->j:Lcom/squareup/wire/ProtoReader32AsProtoReader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/wire/ProtoReader32AsProtoReader;

    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoReader32AsProtoReader;-><init>(Lcom/squareup/wire/ProtoReader32;)V

    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->j:Lcom/squareup/wire/ProtoReader32AsProtoReader;

    return-object v0
.end method

.method public final j()I
    .locals 3

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/squareup/wire/ByteArrayProtoReader32;->n(I)V

    return v0
.end method

.method public final k(ILcom/squareup/wire/FieldEncoding;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    add-int/lit8 v1, v1, -0x1

    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/BufferedSink;

    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    invoke-virtual {p2}, Lcom/squareup/wire/FieldEncoding;->b()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1, p3}, Lcom/squareup/wire/ProtoAdapter;->f(Lcom/squareup/wire/ProtoWriter;ILjava/lang/Object;)V

    return-void
.end method

.method public final l(I)Lokio/ByteString;
    .locals 4

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    if-ltz v0, :cond_3

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    if-ne v3, v1, :cond_3

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-eq v1, v3, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    const-string v0, " but was "

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    const-string v1, "Expected to end at "

    invoke-static {v0, p1, p0, v1}, Lmd;->i(Ljava/lang/Object;IILjava/lang/String;)V

    return-object v2

    :cond_1
    :goto_0
    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/Buffer;

    iget-wide v0, p0, Lokio/Buffer;->c:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lokio/ByteString;->f:Lokio/ByteString;

    return-object p0

    :cond_3
    const-string p0, "No corresponding call to beginMessage()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_4
    const-string p0, "Unexpected call to endMessage()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method

.method public final m()J
    .locals 9

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/16 v1, 0x2e

    const-string v2, ". Last read tag: "

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected VARINT or LENGTH_DELIMITED but was "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Reader position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v3, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move v5, v0

    :goto_1
    const/16 v6, 0x40

    if-ge v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v7, v7

    shl-long/2addr v7, v5

    or-long/2addr v3, v7

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/squareup/wire/ByteArrayProtoReader32;->n(I)V

    return-wide v3

    :cond_2
    add-int/lit8 v5, v5, 0x7

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "WireInput encountered a malformed varint. Reader position: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v3, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(I)V
    .locals 2

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x6

    if-ne v0, p1, :cond_0

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return-void

    :cond_0
    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt p1, v0, :cond_2

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return-void

    :cond_1
    const/4 p1, 0x7

    iput p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return-void

    :cond_2
    iget p1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    const-string v0, " but was "

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    const-string v1, "Expected to end at "

    invoke-static {v0, p1, p0, v1}, Lmd;->i(Ljava/lang/Object;IILjava/lang/String;)V

    return-void
.end method

.method public final nextTag()I
    .locals 7

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    return p0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :goto_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    const/4 v3, -0x1

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()I

    move-result v0

    const/16 v1, 0x2e

    const-string v4, ". Last read tag: "

    if-eqz v0, :cond_a

    ushr-int/lit8 v5, v0, 0x3

    iput v5, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    const/4 v6, 0x1

    if-eq v0, v6, :cond_8

    const-string v6, ". Reader position: "

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED32:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return v5

    :cond_1
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Unexpected field encoding: "

    invoke-static {v0, v3, v6}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected end group. Reader position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v2, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0, v5}, Lcom/squareup/wire/ByteArrayProtoReader32;->r(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()I

    move-result v0

    if-ltz v0, :cond_7

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v2, v1, :cond_5

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    return p0

    :cond_5
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-static {}, Lr81;->b()V

    const/4 p0, 0x0

    return p0

    :cond_7
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Negative length: "

    invoke-static {v0, v3, v6}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->FIXED64:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    iput v6, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return v5

    :cond_9
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->VARINT:Lcom/squareup/wire/FieldEncoding;

    iput-object v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->h:Lcom/squareup/wire/FieldEncoding;

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    return v5

    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected tag 0. Reader position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v2, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    return v3

    :cond_c
    const-string p0, "Unexpected call to nextTag()"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final o()I
    .locals 3

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->g:I

    return v0

    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected LENGTH_DELIMITED but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Reader position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()I
    .locals 3

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v1

    if-ltz v1, :cond_1

    shl-int/lit8 p0, v1, 0x7

    :goto_0
    or-int/2addr p0, v0

    return p0

    :cond_1
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 p0, v1, 0xe

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 p0, v1, 0x15

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_6

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->q()B

    move-result v2

    if-ltz v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed VARINT. Reader position: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Last read tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    const/16 v2, 0x2e

    invoke-static {v1, p0, v2}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    return v0
.end method

.method public final q()B
    .locals 2

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget-object p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->a:[B

    aget-byte p0, p0, v0

    return p0

    :cond_0
    invoke-static {}, Lmd;->e()V

    const/4 p0, 0x0

    return p0
.end method

.method public final r(I)V
    .locals 7

    :goto_0
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()I

    move-result v0

    const/16 v1, 0x2e

    const-string v2, ". Last read tag: "

    if-eqz v0, :cond_a

    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const/4 v5, 0x2

    const-string v6, ". Reader position: "

    if-eq v0, v5, :cond_5

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    iput v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->c()I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v4, "Unexpected field encoding: "

    invoke-static {v0, v4, v6}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    if-ne v3, p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected end group. Reader position: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/squareup/wire/ByteArrayProtoReader32;->r(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Wire recursion limit exceeded"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->d:I

    throw p1

    :cond_5
    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->p()I

    move-result v0

    if-ltz v0, :cond_7

    iget v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->c:I

    if-gt v1, v0, :cond_6

    iput v1, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lmd;->e()V

    return-void

    :cond_7
    new-instance p1, Ljava/net/ProtocolException;

    const-string v4, "Negative length: "

    invoke-static {v0, v4, v6}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iput v4, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->a()J

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->e:I

    invoke-virtual {p0}, Lcom/squareup/wire/ByteArrayProtoReader32;->m()J

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected tag 0. Reader position: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/squareup/wire/ByteArrayProtoReader32;->f:I

    invoke-static {v0, p0, v1}, Ltr;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    invoke-static {}, Lmd;->e()V

    return-void
.end method
