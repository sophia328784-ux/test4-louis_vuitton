.class public abstract Lokio/internal/-RealBufferedSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "okio"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lokio/RealBufferedSource;Lokio/ByteString;IJ)J
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->e()I

    move-result v1

    int-to-long v2, v1

    move/from16 v10, p2

    int-to-long v6, v10

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lokio/-SegmentedByteString;->b(JJJ)V

    move-wide v1, v6

    iget-boolean v3, v0, Lokio/RealBufferedSource;->d:Z

    iget-object v11, v0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    if-nez v3, :cond_7

    move-wide v6, v4

    :goto_0
    iget-object v4, v0, Lokio/RealBufferedSource;->c:Lokio/Buffer;

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-static/range {v4 .. v10}, Lokio/internal/-Buffer;->a(Lokio/Buffer;Lokio/ByteString;JJI)J

    move-result-wide v3

    const-wide/16 v8, -0x1

    cmp-long v5, v3, v8

    if-eqz v5, :cond_0

    return-wide v3

    :cond_0
    iget-wide v3, v11, Lokio/Buffer;->c:J

    sub-long v12, v3, v1

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v5, v12, p3

    if-ltz v5, :cond_2

    :cond_1
    move-wide/from16 v16, v8

    goto :goto_3

    :cond_2
    cmp-long v5, v3, p3

    if-gez v5, :cond_3

    move-object/from16 v5, p1

    move-wide/from16 v16, v8

    goto :goto_2

    :cond_3
    sub-long v3, v3, p3

    add-long/2addr v3, v14

    invoke-static {v14, v15, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    iget-wide v4, v11, Lokio/Buffer;->c:J

    sub-long/2addr v4, v6

    add-long/2addr v4, v14

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    if-gt v3, v4, :cond_1

    :goto_1
    iget-wide v14, v11, Lokio/Buffer;->c:J

    move-wide/from16 v16, v8

    int-to-long v8, v4

    sub-long/2addr v14, v8

    move-object/from16 v5, p1

    invoke-virtual {v11, v4, v5, v14, v15}, Lokio/Buffer;->B(ILokio/ByteString;J)Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_2
    iget-object v3, v0, Lokio/RealBufferedSource;->b:Lokio/Source;

    const-wide/16 v8, 0x2000

    invoke-interface {v3, v11, v8, v9}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v3

    cmp-long v3, v3, v16

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    move/from16 v10, p2

    goto :goto_0

    :cond_5
    if-eq v4, v3, :cond_6

    add-int/lit8 v4, v4, -0x1

    move-wide/from16 v8, v16

    goto :goto_1

    :cond_6
    :goto_3
    return-wide v16

    :cond_7
    const-string v0, "closed"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-wide v4
.end method
