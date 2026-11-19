.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lokio/GzipSource;",
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
.field public b:B

.field public final c:Lokio/RealBufferedSource;

.field public final d:Ljava/util/zip/Inflater;

.field public final e:Lokio/InflaterSource;

.field public final f:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokio/GzipSource;->c:Lokio/RealBufferedSource;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lokio/GzipSource;->d:Ljava/util/zip/Inflater;

    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/GzipSource;->e:Lokio/InflaterSource;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lokio/GzipSource;->f:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static c(IILjava/lang/String;)V
    .locals 2

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, ": actual 0x"

    invoke-static {p2, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p1}, Lokio/-SegmentedByteString;->f(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-static {v1, p1}, Lkotlin/text/StringsKt;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " != expected 0x"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lokio/-SegmentedByteString;->f(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lkotlin/text/StringsKt;->B(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lokio/GzipSource;->e:Lokio/InflaterSource;

    invoke-virtual {p0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public final d(Lokio/Buffer;JJ)V
    .locals 4

    iget-object p1, p1, Lokio/Buffer;->b:Lokio/Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget v0, p1, Lokio/Segment;->c:I

    iget v1, p1, Lokio/Segment;->b:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lokio/Segment;->f:Lokio/Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lokio/Segment;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lokio/Segment;->c:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lokio/GzipSource;->f:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lokio/Segment;->a:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lokio/Segment;->f:Lokio/Segment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-ltz v1, :cond_12

    if-nez v1, :cond_0

    return-wide v9

    :cond_0
    iget-byte v1, v0, Lokio/GzipSource;->b:B

    iget-object v11, v0, Lokio/GzipSource;->f:Ljava/util/zip/CRC32;

    const/4 v12, 0x1

    iget-object v13, v0, Lokio/GzipSource;->c:Lokio/RealBufferedSource;

    const-wide/16 v19, -0x1

    if-nez v1, :cond_d

    const-wide/16 v1, 0xa

    invoke-virtual {v13, v1, v2}, Lokio/RealBufferedSource;->D0(J)V

    iget-object v14, v13, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    const-wide/16 v1, 0x3

    invoke-virtual {v14, v1, v2}, Lokio/Buffer;->w(J)B

    move-result v21

    shr-int/lit8 v1, v21, 0x1

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_1

    move/from16 v22, v12

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move/from16 v22, v1

    :goto_0
    if-eqz v22, :cond_2

    iget-object v1, v13, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->d(Lokio/Buffer;JJ)V

    :cond_2
    invoke-virtual {v13}, Lokio/RealBufferedSource;->readShort()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v2, v0, v1}, Lokio/GzipSource;->c(IILjava/lang/String;)V

    const-wide/16 v0, 0x8

    invoke-virtual {v13, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    shr-int/lit8 v0, v21, 0x2

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_5

    const-wide/16 v0, 0x2

    invoke-virtual {v13, v0, v1}, Lokio/RealBufferedSource;->D0(J)V

    if-eqz v22, :cond_3

    iget-object v1, v13, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->d(Lokio/Buffer;JJ)V

    :cond_3
    invoke-virtual {v14}, Lokio/Buffer;->F()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v4, v0

    invoke-virtual {v13, v4, v5}, Lokio/RealBufferedSource;->D0(J)V

    if-eqz v22, :cond_4

    iget-object v1, v13, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->d(Lokio/Buffer;JJ)V

    :cond_4
    invoke-virtual {v13, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    :cond_5
    shr-int/lit8 v0, v21, 0x3

    and-int/2addr v0, v12

    const-wide/16 v23, 0x1

    if-ne v0, v12, :cond_8

    const-wide/16 v15, 0x0

    const-wide v17, 0x7fffffffffffffffL

    const/4 v14, 0x0

    invoke-virtual/range {v13 .. v18}, Lokio/RealBufferedSource;->c(BJJ)J

    move-result-wide v14

    cmp-long v0, v14, v19

    if-eqz v0, :cond_7

    if-eqz v22, :cond_6

    iget-object v1, v13, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    const-wide/16 v2, 0x0

    add-long v4, v14, v23

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->d(Lokio/Buffer;JJ)V

    :cond_6
    add-long v14, v14, v23

    invoke-virtual {v13, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lmd;->e()V

    return-wide v9

    :cond_8
    :goto_1
    shr-int/lit8 v0, v21, 0x4

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_b

    const-wide/16 v15, 0x0

    const-wide v17, 0x7fffffffffffffffL

    const/4 v14, 0x0

    invoke-virtual/range {v13 .. v18}, Lokio/RealBufferedSource;->c(BJJ)J

    move-result-wide v14

    cmp-long v0, v14, v19

    if-eqz v0, :cond_a

    if-eqz v22, :cond_9

    iget-object v1, v13, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    const-wide/16 v2, 0x0

    add-long v4, v14, v23

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->d(Lokio/Buffer;JJ)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    :goto_2
    add-long v14, v14, v23

    invoke-virtual {v13, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lmd;->e()V

    return-wide v9

    :cond_b
    move-object/from16 v0, p0

    :goto_3
    if-eqz v22, :cond_c

    invoke-virtual {v13}, Lokio/RealBufferedSource;->j()S

    move-result v1

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    const-string v3, "FHCRC"

    invoke-static {v1, v2, v3}, Lokio/GzipSource;->c(IILjava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->reset()V

    :cond_c
    iput-byte v12, v0, Lokio/GzipSource;->b:B

    :cond_d
    iget-byte v1, v0, Lokio/GzipSource;->b:B

    const/4 v14, 0x2

    if-ne v1, v12, :cond_f

    iget-wide v2, v6, Lokio/Buffer;->c:J

    iget-object v1, v0, Lokio/GzipSource;->e:Lokio/InflaterSource;

    invoke-virtual {v1, v6, v7, v8}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v4

    cmp-long v1, v4, v19

    if-eqz v1, :cond_e

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->d(Lokio/Buffer;JJ)V

    return-wide v4

    :cond_e
    iput-byte v14, v0, Lokio/GzipSource;->b:B

    :cond_f
    iget-byte v1, v0, Lokio/GzipSource;->b:B

    if-ne v1, v14, :cond_11

    invoke-virtual {v13}, Lokio/RealBufferedSource;->w1()I

    move-result v1

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "CRC"

    invoke-static {v1, v2, v3}, Lokio/GzipSource;->c(IILjava/lang/String;)V

    invoke-virtual {v13}, Lokio/RealBufferedSource;->w1()I

    move-result v1

    iget-object v2, v0, Lokio/GzipSource;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "ISIZE"

    invoke-static {v1, v2, v3}, Lokio/GzipSource;->c(IILjava/lang/String;)V

    const/4 v1, 0x3

    iput-byte v1, v0, Lokio/GzipSource;->b:B

    invoke-virtual {v13}, Lokio/RealBufferedSource;->Z0()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_4

    :cond_10
    const-string v0, "gzip finished without exhausting source"

    invoke-static {v0}, Laz;->o(Ljava/lang/String;)V

    return-wide v9

    :cond_11
    :goto_4
    return-wide v19

    :cond_12
    const-string v0, "byteCount < 0: "

    invoke-static {v7, v8, v0}, Ld21;->g(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb21;->n(Ljava/lang/Object;)V

    return-wide v9
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/GzipSource;->c:Lokio/RealBufferedSource;

    iget-object p0, p0, Lokio/RealBufferedSource;->b:Lokio/Source;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
