.class public final Lokhttp3/internal/http2/Hpack$Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack$Reader;",
        "",
        "Lokio/Source;",
        "source",
        "",
        "headerTableSizeSetting",
        "maxDynamicTableByteCount",
        "<init>",
        "(Lokio/Source;II)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final c:Ljava/util/ArrayList;

.field public d:J

.field public final e:Lokio/RealBufferedSource;

.field public f:[Lokhttp3/internal/http2/Header;

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lokio/Source;I)V
    .locals 6

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokio/Source;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lokio/Source;II)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->a:I

    iput p3, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Ljava/util/ArrayList;

    new-instance p2, Lokio/RealBufferedSource;

    invoke-direct {p2, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object p2, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:Lokio/RealBufferedSource;

    const/16 p1, 0x8

    new-array p1, p1, [Lokhttp3/internal/http2/Header;

    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    const/4 p1, 0x7

    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lokio/Source;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    move p3, p2

    .line 35
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Hpack$Reader;-><init>(Lokio/Source;II)V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http2/Header;)V
    .locals 4

    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->e()I

    move-result v0

    iget-object p1, p1, Lokhttp3/internal/http2/Header;->b:Lokio/ByteString;

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result p1

    add-int/2addr p1, v0

    iget-wide v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:J

    const-wide/32 p0, 0x40000

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "header byte count limit of 262144 exceeded"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)I
    .locals 4

    const/4 v0, 0x0

    if-lez p1, :cond_1

    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    if-lt v1, v2, :cond_0

    if-lez p1, :cond_0

    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lokhttp3/internal/http2/Header;->c:I

    sub-int/2addr p1, v2

    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    sub-int/2addr v3, v2

    iput v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    iget v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    :cond_1
    return v0
.end method

.method public final c(I)Lokio/ByteString;
    .locals 2

    if-ltz p1, :cond_0

    sget-object v0, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    aget-object p0, v0, p1

    iget-object p0, p0, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    return-object p0

    :cond_0
    sget-object v0, Lokhttp3/internal/http2/Hpack;->a:[Lokhttp3/internal/http2/Header;

    array-length v0, v0

    sub-int v0, p1, v0

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    if-ltz v1, :cond_1

    iget-object p0, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length v0, p0

    if-ge v1, v0, :cond_1

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokhttp3/internal/http2/Header;->a:Lokio/ByteString;

    return-object p0

    :cond_1
    const-string p0, "Header index too large "

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1, p0}, Lmt;->e(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Lokhttp3/internal/http2/Header;)V
    .locals 6

    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Hpack$Reader;->a(Lokhttp3/internal/http2/Header;)V

    iget v0, p1, Lokhttp3/internal/http2/Header;->c:I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->b:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    return-void

    :cond_0
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lokhttp3/internal/http2/Hpack$Reader;->b(I)I

    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length v4, v3

    if-le v1, v4, :cond_1

    array-length v1, v3

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    array-length v4, v3

    array-length v5, v3

    invoke-static {v3, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->g:I

    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Reader;->f:[Lokhttp3/internal/http2/Header;

    aput-object p1, v2, v1

    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->h:I

    iget p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    add-int/2addr p1, v0

    iput p1, p0, Lokhttp3/internal/http2/Hpack$Reader;->i:I

    return-void
.end method

.method public final e()Lokio/ByteString;
    .locals 11

    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:Lokio/RealBufferedSource;

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readByte()B

    move-result v1

    sget-object v2, Lokhttp3/internal/_UtilCommonKt;->a:[B

    and-int/lit16 v2, v1, 0xff

    const/16 v3, 0x80

    and-int/2addr v1, v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const/16 v3, 0x7f

    invoke-virtual {p0, v2, v3}, Lokhttp3/internal/http2/Hpack$Reader;->f(II)I

    move-result v2

    int-to-long v2, v2

    iget-wide v5, p0, Lokhttp3/internal/http2/Hpack$Reader;->d:J

    add-long/2addr v5, v2

    const-wide/32 v7, 0x40000

    cmp-long p0, v5, v7

    if-gtz p0, :cond_7

    if-eqz v1, :cond_6

    new-instance p0, Lokio/Buffer;

    invoke-direct {p0}, Lokio/Buffer;-><init>()V

    sget-object v1, Lokhttp3/internal/http2/Huffman;->a:[I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lokhttp3/internal/http2/Huffman;->c:Lokhttp3/internal/http2/Huffman$Node;

    const-wide/16 v5, 0x0

    move-object v8, v1

    move-wide v6, v5

    move v5, v4

    :goto_1
    cmp-long v9, v6, v2

    if-gez v9, :cond_3

    invoke-virtual {v0}, Lokio/RealBufferedSource;->readByte()B

    move-result v9

    sget-object v10, Lokhttp3/internal/_UtilCommonKt;->a:[B

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v9

    add-int/lit8 v5, v5, 0x8

    :goto_2
    const/16 v9, 0x8

    if-lt v5, v9, :cond_2

    add-int/lit8 v9, v5, -0x8

    ushr-int v9, v4, v9

    and-int/lit16 v9, v9, 0xff

    iget-object v8, v8, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v8, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    if-nez v9, :cond_1

    iget v9, v8, Lokhttp3/internal/http2/Huffman$Node;->b:I

    invoke-virtual {p0, v9}, Lokio/Buffer;->m0(I)V

    iget v8, v8, Lokhttp3/internal/http2/Huffman$Node;->c:I

    sub-int/2addr v5, v8

    move-object v8, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x8

    goto :goto_2

    :cond_2
    const-wide/16 v9, 0x1

    add-long/2addr v6, v9

    goto :goto_1

    :cond_3
    :goto_3
    if-lez v5, :cond_5

    rsub-int/lit8 v0, v5, 0x8

    shl-int v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, v8, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lokhttp3/internal/http2/Huffman$Node;->a:[Lokhttp3/internal/http2/Huffman$Node;

    iget v3, v0, Lokhttp3/internal/http2/Huffman$Node;->c:I

    if-nez v2, :cond_5

    if-le v3, v5, :cond_4

    goto :goto_4

    :cond_4
    iget v0, v0, Lokhttp3/internal/http2/Huffman$Node;->b:I

    invoke-virtual {p0, v0}, Lokio/Buffer;->m0(I)V

    sub-int/2addr v5, v3

    move-object v8, v1

    goto :goto_3

    :cond_5
    :goto_4
    iget-wide v0, p0, Lokio/Buffer;->c:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v0, v2, v3}, Lokio/RealBufferedSource;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, "header byte count limit of 262144 exceeded"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final f(II)I
    .locals 9

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    return p1

    :cond_0
    int-to-long p1, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x5

    const-string v4, "HPACK integer overflow"

    if-eq v1, v3, :cond_3

    iget-object v3, p0, Lokhttp3/internal/http2/Hpack$Reader;->e:Lokio/RealBufferedSource;

    invoke-virtual {v3}, Lokio/RealBufferedSource;->readByte()B

    move-result v3

    sget-object v5, Lokhttp3/internal/_UtilCommonKt;->a:[B

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v5, v3, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v2

    const-wide/32 v7, 0x7fffffff

    sub-long/2addr v7, p1

    cmp-long v7, v5, v7

    if-gtz v7, :cond_2

    add-long/2addr p1, v5

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    long-to-int p0, p1

    return p0

    :cond_2
    invoke-static {v4}, Laz;->o(Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-static {v4}, Laz;->o(Ljava/lang/String;)V

    return v0
.end method
