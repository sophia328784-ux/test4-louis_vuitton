.class public abstract Landroidx/media3/extractor/FlacFrameReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;
    }
.end annotation


# direct methods
.method public static a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->I()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    int-to-long v3, p0

    mul-long/2addr v1, v3

    :goto_0
    iget-wide p0, p1, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    const-wide/16 v3, 0x0

    cmp-long p2, p0, v3

    if-eqz p2, :cond_1

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    return v0

    :cond_1
    iput-wide v1, p3, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    const/16 v6, 0x10

    ushr-long v6, v4, v6

    move/from16 v8, p2

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_0

    const/16 p2, 0x0

    goto/16 :goto_9

    :cond_0
    const-wide/16 v10, 0x1

    and-long/2addr v6, v10

    cmp-long v6, v6, v10

    const/4 v7, 0x1

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    const/16 v8, 0xc

    shr-long v12, v4, v8

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    long-to-int v12, v12

    const/16 v13, 0x8

    shr-long v16, v4, v13

    move-wide/from16 v18, v10

    const/16 p2, 0x0

    and-long v9, v16, v14

    long-to-int v9, v9

    const/4 v10, 0x4

    shr-long v10, v4, v10

    and-long/2addr v10, v14

    long-to-int v10, v10

    shr-long v13, v4, v7

    const-wide/16 v15, 0x7

    and-long/2addr v13, v15

    long-to-int v11, v13

    and-long v4, v4, v18

    cmp-long v4, v4, v18

    if-nez v4, :cond_2

    move v4, v7

    goto :goto_1

    :cond_2
    move/from16 v4, p2

    :goto_1
    const/4 v5, 0x2

    const/4 v13, 0x7

    if-gt v10, v13, :cond_3

    iget v14, v1, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    sub-int/2addr v14, v7

    if-ne v10, v14, :cond_12

    goto :goto_2

    :cond_3
    const/16 v14, 0xa

    if-gt v10, v14, :cond_12

    iget v10, v1, Landroidx/media3/extractor/FlacStreamMetadata;->g:I

    if-ne v10, v5, :cond_12

    :goto_2
    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    iget v10, v1, Landroidx/media3/extractor/FlacStreamMetadata;->i:I

    if-ne v11, v10, :cond_12

    :goto_3
    if-nez v4, :cond_12

    invoke-static {v0, v1, v6, v2}, Landroidx/media3/extractor/FlacFrameReader;->a(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ZLandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-wide v10, v2, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->a:J

    invoke-static {v12, v0}, Landroidx/media3/extractor/FlacFrameReader;->c(ILandroidx/media3/common/util/ParsableByteArray;)I

    move-result v2

    iget-wide v14, v1, Landroidx/media3/extractor/FlacStreamMetadata;->j:J

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_6

    move-wide/from16 v16, v14

    int-to-long v13, v2

    add-long/2addr v10, v13

    cmp-long v6, v10, v16

    if-ltz v6, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v6, p2

    goto :goto_5

    :cond_6
    :goto_4
    move v6, v7

    :goto_5
    const/4 v10, -0x1

    if-eq v2, v10, :cond_12

    if-nez v6, :cond_7

    iget v6, v1, Landroidx/media3/extractor/FlacStreamMetadata;->a:I

    if-lt v2, v6, :cond_12

    :cond_7
    iget v6, v1, Landroidx/media3/extractor/FlacStreamMetadata;->b:I

    if-gt v2, v6, :cond_12

    iget v2, v1, Landroidx/media3/extractor/FlacStreamMetadata;->e:I

    if-nez v9, :cond_8

    goto :goto_6

    :cond_8
    const/16 v6, 0xb

    if-gt v9, v6, :cond_9

    iget v1, v1, Landroidx/media3/extractor/FlacStreamMetadata;->f:I

    if-ne v9, v1, :cond_12

    goto :goto_6

    :cond_9
    if-ne v9, v8, :cond_a

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    if-ne v1, v2, :cond_12

    goto :goto_6

    :cond_a
    const/16 v1, 0xe

    if-gt v9, v1, :cond_12

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v6

    if-ne v9, v1, :cond_b

    mul-int/lit8 v6, v6, 0xa

    :cond_b
    if-ne v6, v2, :cond_12

    :goto_6
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    iget v2, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    iget-object v6, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    sub-int/2addr v2, v7

    move/from16 v8, p2

    :goto_7
    if-ge v3, v2, :cond_c

    sget-object v9, Landroidx/media3/common/util/Util;->l:[I

    aget-byte v10, v6, v3

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v8, v10

    aget v8, v9, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    sget-object v2, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    if-ne v1, v8, :cond_12

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    and-int/lit8 v0, v0, 0x7e

    shr-int/2addr v0, v7

    if-lt v0, v5, :cond_f

    const/4 v4, 0x7

    if-le v0, v4, :cond_10

    :cond_f
    const/16 v1, 0xd

    if-lt v0, v1, :cond_11

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_11

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring frame where first subframe has a reserved type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    return p2

    :cond_11
    :goto_8
    return v7

    :cond_12
    :goto_9
    return p2
.end method

.method public static c(ILandroidx/media3/common/util/ParsableByteArray;)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    add-int/lit8 p0, p0, -0x8

    const/16 p1, 0x100

    shl-int p0, p1, p0

    return p0

    :pswitch_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_3
    add-int/lit8 p0, p0, -0x2

    const/16 p1, 0x240

    shl-int p0, p1, p0

    return p0

    :pswitch_4
    const/16 p0, 0xc0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
