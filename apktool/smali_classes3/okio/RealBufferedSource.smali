.class public final Lokio/RealBufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/BufferedSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lokio/RealBufferedSource;",
        "Lokio/BufferedSource;",
        "Lokio/Source;",
        "source",
        "<init>",
        "(Lokio/Source;)V",
        "okio"
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
.field public final b:Lokio/Source;

.field public final c:Lokio/Buffer;

.field public d:Z


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    return-void
.end method


# virtual methods
.method public final A0()J
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->A0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final D0(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->request(J)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lmd;->e()V

    return-void
.end method

.method public final K0(J)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final L()Lokio/Buffer;
    .locals 0

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    return-object p0
.end method

.method public final N0(J)Lokio/ByteString;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final N1(Lokio/BufferedSink;)J
    .locals 10

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :cond_0
    :goto_0
    iget-object v4, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v5, 0x2000

    iget-object v7, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-interface {v4, v7, v5, v6}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    invoke-virtual {v7}, Lokio/Buffer;->k()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    add-long/2addr v2, v4

    invoke-interface {p1, v7, v4, v5}, Lokio/Sink;->D(Lokio/Buffer;J)V

    goto :goto_0

    :cond_1
    iget-wide v4, v7, Lokio/Buffer;->c:J

    cmp-long p0, v4, v0

    if-lez p0, :cond_2

    add-long/2addr v2, v4

    invoke-interface {p1, v7, v4, v5}, Lokio/Sink;->D(Lokio/Buffer;J)V

    :cond_2
    return-wide v2
.end method

.method public final Q()Lokio/Buffer;
    .locals 0

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    return-object p0
.end method

.method public final S1()J
    .locals 6

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lokio/RealBufferedSource;->request(J)Z

    move-result v2

    iget-object v3, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    if-eqz v2, :cond_5

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->w(J)B

    move-result v2

    const/16 v4, 0x30

    if-lt v2, v4, :cond_0

    const/16 v4, 0x39

    if-le v2, v4, :cond_2

    :cond_0
    const/16 v4, 0x61

    if-lt v2, v4, :cond_1

    const/16 v4, 0x66

    if-le v2, v4, :cond_2

    :cond_1
    const/16 v4, 0x41

    if-lt v2, v4, :cond_3

    const/16 v4, 0x46

    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lokio/Buffer;->S1()J

    move-result-wide v0

    return-wide v0
.end method

.method public final T(Lokio/ByteString;)J
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1}, Lokio/ByteString;->e()I

    move-result v2

    invoke-static {p0, p1, v2, v0, v1}, Lokio/internal/-RealBufferedSource;->a(Lokio/RealBufferedSource;Lokio/ByteString;IJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final U1()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lokio/RealBufferedSource$inputStream$1;

    invoke-direct {v0, p0}, Lokio/RealBufferedSource$inputStream$1;-><init>(Lokio/RealBufferedSource;)V

    return-object v0
.end method

.method public final V(Lokio/Buffer;J)V
    .locals 1

    iget-object v0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lokio/RealBufferedSource;->D0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->V(Lokio/Buffer;J)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p1, v0}, Lokio/Buffer;->u0(Lokio/Source;)J

    throw p0
.end method

.method public final V0()[B
    .locals 2

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0, v0}, Lokio/Buffer;->u0(Lokio/Source;)J

    iget-wide v0, p0, Lokio/Buffer;->c:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->E(J)[B

    move-result-object p0

    return-object p0
.end method

.method public final V1(Lokio/Options;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-static {v1, p1, v0}, Lokio/internal/-Buffer;->d(Lokio/Buffer;Lokio/Options;Z)I

    move-result v0

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_2

    iget-object p0, p1, Lokio/Options;->c:[Lokio/ByteString;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lokio/ByteString;->e()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v1, p0, p1}, Lokio/Buffer;->skip(J)V

    return v0

    :cond_1
    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v4, 0x2000

    invoke-interface {v0, v1, v4, v5}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :cond_2
    return v3

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final W(Lokio/ByteString;)J
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {v0, v1, v2, p1}, Lokio/Buffer;->z(JLokio/ByteString;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    return-wide v3

    :cond_0
    iget-wide v3, v0, Lokio/Buffer;->c:J

    iget-object v7, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v8, 0x2000

    invoke-interface {v7, v0, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-nez v0, :cond_1

    return-wide v5

    :cond_1
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-wide v1
.end method

.method public final Z(J)Ljava/lang/String;
    .locals 18

    move-wide/from16 v6, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-ltz v0, :cond_3

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v0, v6, v8

    const-wide/16 v10, 0x1

    if-nez v0, :cond_0

    move-wide v4, v8

    goto :goto_0

    :cond_0
    add-long v0, v6, v10

    move-wide v4, v0

    :goto_0
    const/16 v1, 0xa

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/RealBufferedSource;->c(BJJ)J

    move-result-wide v1

    const-wide/16 v12, -0x1

    cmp-long v3, v1, v12

    iget-object v12, v0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    if-eqz v3, :cond_1

    invoke-static {v12, v1, v2}, Lokio/internal/-Buffer;->c(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    cmp-long v1, v4, v8

    if-gez v1, :cond_2

    invoke-virtual {v0, v4, v5}, Lokio/RealBufferedSource;->request(J)Z

    move-result v1

    if-eqz v1, :cond_2

    sub-long v1, v4, v10

    invoke-virtual {v12, v1, v2}, Lokio/Buffer;->w(J)B

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    add-long v1, v4, v10

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->request(J)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v12, v4, v5}, Lokio/Buffer;->w(J)B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    invoke-static {v12, v4, v5}, Lokio/internal/-Buffer;->c(Lokio/Buffer;J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v13, Lokio/Buffer;

    invoke-direct {v13}, Lokio/Buffer;-><init>()V

    iget-wide v0, v12, Lokio/Buffer;->c:J

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    const-wide/16 v14, 0x0

    invoke-virtual/range {v12 .. v17}, Lokio/Buffer;->u(Lokio/Buffer;JJ)V

    new-instance v0, Ljava/io/EOFException;

    iget-wide v1, v12, Lokio/Buffer;->c:J

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iget-wide v3, v13, Lokio/Buffer;->c:J

    invoke-virtual {v13, v3, v4}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->f()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\\n not found: limit="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " content="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2026

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "limit < 0: "

    invoke-static {v6, v7, v0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final Z0()Z
    .locals 6

    iget-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->Z0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v2, 0x2000

    invoke-interface {p0, v0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v1
.end method

.method public final c(BJJ)J
    .locals 10

    iget-boolean p2, p0, Lokio/RealBufferedSource;->d:Z

    const-wide/16 v0, 0x0

    if-nez p2, :cond_4

    cmp-long p2, v0, p4

    if-gtz p2, :cond_3

    move-wide v4, v0

    :goto_0
    cmp-long p2, v4, p4

    const-wide/16 v0, -0x1

    if-gez p2, :cond_2

    iget-object v2, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    move v3, p1

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lokio/Buffer;->y(BJJ)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    return-wide p1

    :cond_0
    iget-object p1, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    iget-wide p2, p1, Lokio/Buffer;->c:J

    cmp-long p4, p2, v6

    if-gez p4, :cond_2

    iget-object p4, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v8, 0x2000

    invoke-interface {p4, p1, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p4

    cmp-long p1, p4, v0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move p1, v3

    move-wide p4, v6

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    move-wide v6, p4

    const-string p0, "fromIndex=0 toIndex="

    invoke-static {v6, v7, p0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-wide v0

    :cond_4
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-wide v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->h()V

    :cond_0
    return-void
.end method

.method public final h()J
    .locals 22

    move-object/from16 v0, p0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lokio/RealBufferedSource;->D0(J)V

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    add-long v7, v5, v1

    invoke-virtual {v0, v7, v8}, Lokio/RealBufferedSource;->request(J)Z

    move-result v9

    const/16 v10, 0x2d

    const/16 v11, 0x39

    const/16 v12, 0x30

    iget-object v13, v0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    if-eqz v9, :cond_4

    invoke-virtual {v13, v5, v6}, Lokio/Buffer;->w(J)B

    move-result v9

    if-lt v9, v12, :cond_0

    if-le v9, v11, :cond_1

    :cond_0
    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    move-wide v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a digit or \'-\' but was 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-wide v5, v13, Lokio/Buffer;->c:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    const-wide/16 v5, -0x7

    move-wide v14, v3

    move-wide v7, v5

    move v5, v0

    move v6, v5

    :goto_3
    iget-object v9, v13, Lokio/Buffer;->b:Lokio/Segment;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v16, v1

    iget-object v1, v9, Lokio/Segment;->a:[B

    iget v2, v9, Lokio/Segment;->b:I

    move-wide/from16 v18, v3

    iget v3, v9, Lokio/Segment;->c:I

    :goto_4
    if-ge v2, v3, :cond_a

    aget-byte v4, v1, v2

    if-lt v4, v12, :cond_8

    if-gt v4, v11, :cond_8

    rsub-int/lit8 v11, v4, 0x30

    const-wide v20, -0xcccccccccccccccL

    cmp-long v20, v14, v20

    if-ltz v20, :cond_6

    move-object/from16 v21, v13

    if-nez v20, :cond_5

    int-to-long v12, v11

    cmp-long v12, v12, v7

    if-gez v12, :cond_5

    goto :goto_5

    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v14, v12

    int-to-long v11, v11

    add-long/2addr v14, v11

    goto :goto_6

    :cond_6
    :goto_5
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v14, v15}, Lokio/Buffer;->n0(J)V

    invoke-virtual {v0, v4}, Lokio/Buffer;->m0(I)V

    if-nez v5, :cond_7

    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    :cond_7
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Lokio/Buffer;->H()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Number too large: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    move-object/from16 v21, v13

    if-ne v4, v10, :cond_9

    if-nez v0, :cond_9

    sub-long v7, v7, v16

    const/4 v5, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v13, v21

    const/16 v11, 0x39

    const/16 v12, 0x30

    goto :goto_4

    :cond_9
    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v21, v13

    :goto_7
    if-ne v2, v3, :cond_b

    invoke-virtual {v9}, Lokio/Segment;->a()Lokio/Segment;

    move-result-object v1

    move-object/from16 v3, v21

    iput-object v1, v3, Lokio/Buffer;->b:Lokio/Segment;

    invoke-static {v9}, Lokio/SegmentPool;->a(Lokio/Segment;)V

    goto :goto_8

    :cond_b
    move-object/from16 v3, v21

    iput v2, v9, Lokio/Segment;->b:I

    :goto_8
    if-nez v6, :cond_d

    iget-object v1, v3, Lokio/Buffer;->b:Lokio/Segment;

    if-nez v1, :cond_c

    goto :goto_9

    :cond_c
    move-object v13, v3

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    const/16 v11, 0x39

    const/16 v12, 0x30

    goto/16 :goto_3

    :cond_d
    :goto_9
    iget-wide v1, v3, Lokio/Buffer;->c:J

    int-to-long v6, v0

    sub-long/2addr v1, v6

    iput-wide v1, v3, Lokio/Buffer;->c:J

    if-eqz v5, :cond_e

    const/4 v4, 0x2

    goto :goto_a

    :cond_e
    const/4 v4, 0x1

    :goto_a
    if-ge v0, v4, :cond_11

    cmp-long v0, v1, v18

    if-eqz v0, :cond_10

    if-eqz v5, :cond_f

    const-string v0, "Expected a digit"

    goto :goto_b

    :cond_f
    const-string v0, "Expected a digit or \'-\'"

    :goto_b
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, " but was 0x"

    invoke-static {v0, v2}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v4, v18

    invoke-virtual {v3, v4, v5}, Lokio/Buffer;->w(J)B

    move-result v2

    invoke-static {v2}, Lokio/-SegmentedByteString;->e(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    move-wide/from16 v4, v18

    invoke-static {}, Lmd;->e()V

    :goto_c
    move-wide v3, v4

    goto :goto_d

    :cond_11
    if-eqz v5, :cond_12

    move-wide v3, v14

    goto :goto_d

    :cond_12
    neg-long v3, v14

    goto :goto_d

    :cond_13
    move-wide v4, v3

    invoke-static {}, Lmd;->e()V

    goto :goto_c

    :goto_d
    return-wide v3
.end method

.method public final i1(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0, v0}, Lokio/Buffer;->u0(Lokio/Source;)J

    invoke-virtual {p0, p1}, Lokio/Buffer;->i1(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lokio/RealBufferedSource;->d:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final j()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->F()S

    move-result p0

    return p0
.end method

.method public final n1()Lokio/ByteString;
    .locals 2

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0, v0}, Lokio/Buffer;->u0(Lokio/Source;)J

    iget-wide v0, p0, Lokio/Buffer;->c:J

    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->N0(J)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final peek()Lokio/RealBufferedSource;
    .locals 1

    new-instance v0, Lokio/PeekSource;

    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    new-instance p0, Lokio/RealBufferedSource;

    invoke-direct {p0, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    return-object p0
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    iget-object v0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    iget-wide v1, v0, Lokio/Buffer;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 67
    iget-object p0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 68
    :cond_0
    invoke-virtual {v0, p1}, Lokio/Buffer;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-boolean v3, p0, Lokio/RealBufferedSource;->d:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    iget-wide v4, v3, Lokio/Buffer;->c:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v0, 0x2000

    invoke-interface {p0, v3, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    return-wide v4

    :cond_1
    iget-wide v0, v3, Lokio/Buffer;->c:J

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-virtual {v3, p1, p2, p3}, Lokio/Buffer;->read(Lokio/Buffer;J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-wide v0

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return-wide v0
.end method

.method public final readByte()B
    .locals 2

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    return p0
.end method

.method public final readFully([B)V
    .locals 6

    iget-object v0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    array-length v1, p1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lokio/RealBufferedSource;->D0(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, p1}, Lokio/Buffer;->readFully([B)V

    return-void

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    :goto_0
    iget-wide v2, v0, Lokio/Buffer;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    long-to-int v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lokio/Buffer;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, La61;->h()V

    return-void

    :cond_1
    throw p0
.end method

.method public final readInt()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    move-result p0

    return p0
.end method

.method public final readLong()J
    .locals 2

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readShort()S
    .locals 2

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    move-result p0

    return p0
.end method

.method public final request(J)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    iget-wide v2, v0, Lokio/Buffer;->c:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_1

    iget-object v2, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v2, v0, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v1

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p1, p2, p0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb21;->n(Ljava/lang/Object;)V

    return v1
.end method

.method public final s0(JLokio/ByteString;)Z
    .locals 3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result p1

    iget-boolean p2, p0, Lokio/RealBufferedSource;->d:Z

    const/4 v0, 0x0

    if-nez p2, :cond_4

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Lokio/ByteString;->e()I

    move-result p2

    if-le p1, p2, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x1

    invoke-static {p0, p3, p1, v1, v2}, Lokio/internal/-RealBufferedSource;->a(Lokio/RealBufferedSource;Lokio/ByteString;IJ)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-eqz p0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return v0
.end method

.method public final skip(J)V
    .locals 5

    iget-boolean v0, p0, Lokio/RealBufferedSource;->d:Z

    if-nez v0, :cond_3

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v2, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    iget-wide v3, v2, Lokio/Buffer;->c:J

    cmp-long v0, v3, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v3, 0x2000

    invoke-interface {v0, v2, v3, v4}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lmd;->e()V

    return-void

    :cond_1
    :goto_1
    iget-wide v0, v2, Lokio/Buffer;->c:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lokio/Buffer;->skip(J)V

    sub-long/2addr p1, v0

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w1()I
    .locals 2

    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    iget-object p0, p0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    invoke-virtual {p0}, Lokio/Buffer;->w1()I

    move-result p0

    return p0
.end method

.method public final x0()Ljava/lang/String;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lokio/RealBufferedSource;->Z(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
