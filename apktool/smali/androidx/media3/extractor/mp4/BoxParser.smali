.class public abstract Landroidx/media3/extractor/mp4/BoxParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/BoxParser$TkhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$MdhdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StsdData;,
        Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;,
        Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;,
        Landroidx/media3/extractor/mp4/BoxParser$EsdsData;,
        Landroidx/media3/extractor/mp4/BoxParser$VexuData;,
        Landroidx/media3/extractor/mp4/BoxParser$EyesData;,
        Landroidx/media3/extractor/mp4/BoxParser$StriData;,
        Landroidx/media3/extractor/mp4/BoxParser$BtrtData;
    }
.end annotation


# static fields
.field public static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v1, "OpusHead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    return-void
.end method

.method public static a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 3

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    return-void
.end method

.method public static b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;
    .locals 10

    add-int/lit8 p0, p0, 0xc

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_2
    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->f(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v3

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {p1}, Landroidx/media3/extractor/mp4/BoxParser;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p0

    move-wide v4, v3

    new-array v3, p0, [B

    const/4 v6, 0x0

    invoke-virtual {p1, v6, p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    move-wide p0, v0

    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    const-wide/16 v8, -0x1

    if-lez v0, :cond_4

    goto :goto_0

    :cond_4
    move-wide v4, v8

    :goto_0
    cmp-long v0, p0, v6

    if-lez v0, :cond_5

    move-wide v6, p0

    goto :goto_1

    :cond_5
    move-wide v6, v8

    :goto_1
    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1

    :cond_6
    :goto_2
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;-><init>(Ljava/lang/String;[BJJ)V

    return-object v1
.end method

.method public static c(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static d(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static e(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;
    .locals 14

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    if-eqz p0, :cond_8

    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, v1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x8

    if-ge v5, v1, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    sub-int/2addr v7, v6

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7, v6}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v5

    if-le v5, v6, :cond_6

    iget v5, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_4

    if-ge v8, v1, :cond_4

    aget-object v8, v3, v8

    add-int v9, v5, v7

    :goto_2
    iget v10, p0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v10, v9, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v11

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v12

    const v13, 0x64617461

    if-ne v12, v13, :cond_2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    add-int/lit8 v11, v11, -0x10

    new-array v12, v11, [B

    invoke-virtual {p0, v4, v11, v12}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    :try_start_0
    new-instance v11, Landroidx/media3/container/MdtaMetadataEntry;

    invoke-direct {v11, v8, v12, v10, v9}, Landroidx/media3/container/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-string v9, "Failed to parse metadata entry with key: "

    invoke-static {v9, v8}, Lcj;->y(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    add-int/2addr v10, v11

    invoke-virtual {p0, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_2

    :cond_3
    :goto_3
    move-object v11, v2

    :goto_4
    if-eqz v11, :cond_5

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    const-string v9, "Skipped metadata with unknown key index: "

    invoke-static {v8, v9}, La;->u(ILjava/lang/String;)V

    :cond_5
    :goto_5
    add-int/2addr v5, v7

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    new-instance v2, Landroidx/media3/common/Metadata;

    invoke-direct {v2, v0}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :cond_8
    :goto_6
    return-object v2
.end method

.method public static f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    invoke-static {v0}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v9

    new-instance v4, Landroidx/media3/container/Mp4TimestampData;

    invoke-direct/range {v4 .. v10}, Landroidx/media3/container/Mp4TimestampData;-><init>(JJJ)V

    return-object v4
.end method

.method public static g(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_10

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v2, :cond_0

    move v7, v6

    goto :goto_1

    :cond_0
    move v7, v5

    :goto_1
    const-string v8, "childAtomSize must be positive"

    invoke-static {v8, v7}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_f

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v12, v5

    move v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    sub-int v13, v7, v1

    const/4 v14, 0x4

    if-ge v13, v2, :cond_4

    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v13

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v15

    const/16 v16, 0x0

    const v3, 0x66726d61

    if-ne v15, v3, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v15, v3, :cond_2

    invoke-virtual {v0, v14}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v14, v3}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v15, v3, :cond_3

    move v9, v7

    move v12, v13

    :cond_3
    :goto_3
    add-int/2addr v7, v13

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v3, v16

    goto/16 :goto_b

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    move v3, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_5
    const-string v7, "frma atom is mandatory"

    invoke-static {v7, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    if-eq v9, v8, :cond_8

    move v3, v6

    goto :goto_6

    :cond_8
    move v3, v5

    :goto_6
    const-string v7, "schi atom is mandatory"

    invoke-static {v7, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v12, :cond_d

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    const v13, 0x74656e63

    if-ne v8, v13, :cond_c

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v3

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    if-nez v3, :cond_9

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move v14, v5

    move v15, v14

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v14

    and-int/lit8 v3, v3, 0xf

    move v15, v3

    move v14, v7

    :goto_8
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v3

    if-ne v3, v6, :cond_a

    move-object v3, v10

    move v10, v6

    goto :goto_9

    :cond_a
    move-object v3, v10

    move v10, v5

    :goto_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v5, v7, v13}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v5, v7, v8}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    move-object/from16 v16, v8

    :cond_b
    new-instance v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object v8, v3

    invoke-direct/range {v9 .. v16}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v9

    goto :goto_a

    :cond_c
    move-object v8, v10

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v10

    move-object/from16 v3, v16

    :goto_a
    if-eqz v3, :cond_e

    move v5, v6

    :cond_e
    const-string v6, "tenc atom is mandatory"

    invoke-static {v6, v5}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_b
    if-eqz v3, :cond_f

    return-object v3

    :cond_f
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_10
    const/16 v16, 0x0

    return-object v16
.end method

.method public static h(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;Z)Landroidx/media3/extractor/mp4/TrackSampleTable;
    .locals 42

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    const v4, 0x7374737a

    invoke-virtual {v0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v6, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;

    invoke-direct {v6, v4, v3}, Landroidx/media3/extractor/mp4/BoxParser$StszSampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;Landroidx/media3/common/Format;)V

    goto :goto_0

    :cond_0
    const v4, 0x73747a32

    invoke-virtual {v0, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_4f

    new-instance v6, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;

    invoke-direct {v6, v4}, Landroidx/media3/extractor/mp4/BoxParser$Stz2SampleSizeBox;-><init>(Landroidx/media3/container/Mp4Box$LeafBox;)V

    :goto_0
    invoke-interface {v6}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->c()I

    move-result v4

    const/4 v7, 0x0

    if-nez v4, :cond_1

    new-instance v0, Landroidx/media3/extractor/mp4/TrackSampleTable;

    new-array v2, v7, [J

    new-array v3, v7, [I

    new-array v5, v7, [J

    new-array v6, v7, [I

    new-array v7, v7, [I

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v0

    :cond_1
    iget v8, v1, Landroidx/media3/extractor/mp4/Track;->b:I

    const/4 v9, 0x2

    const-wide/16 v10, 0x0

    if-ne v8, v9, :cond_2

    iget-wide v12, v1, Landroidx/media3/extractor/mp4/Track;->f:J

    cmp-long v8, v12, v10

    if-lez v8, :cond_2

    int-to-float v8, v4

    long-to-float v12, v12

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v12, v13

    div-float/2addr v8, v12

    invoke-virtual {v3}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iput v8, v3, Landroidx/media3/common/Format$Builder;->y:F

    new-instance v8, Landroidx/media3/common/Format;

    invoke-direct {v8, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v1, v8}, Landroidx/media3/extractor/mp4/Track;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    :cond_2
    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    const v8, 0x7374636f

    invoke-virtual {v0, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    const/4 v12, 0x1

    if-nez v8, :cond_3

    const v8, 0x636f3634

    invoke-virtual {v0, v8}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v12

    goto :goto_1

    :cond_3
    move v13, v7

    :goto_1
    iget-object v8, v8, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v14, 0x73747363

    invoke-virtual {v0, v14}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v14, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v15, 0x73747473

    invoke-virtual {v0, v15}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v5, 0x73747373

    invoke-virtual {v0, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    :goto_2
    move-wide/from16 v17, v10

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :goto_3
    const v10, 0x63747473

    invoke-virtual {v0, v10}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    new-instance v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;

    invoke-direct {v10, v14, v8, v13}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;-><init>(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/common/util/ParsableByteArray;Z)V

    const/16 v8, 0xc

    invoke-virtual {v15, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v11

    sub-int/2addr v11, v12

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v13

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v14

    if-eqz v0, :cond_6

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v19

    goto :goto_5

    :cond_6
    move/from16 v19, v7

    :goto_5
    const/4 v9, -0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    :goto_6
    move/from16 p0, v12

    goto :goto_7

    :cond_7
    move/from16 v16, v9

    move/from16 p0, v12

    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    move v8, v7

    move/from16 v16, v9

    goto :goto_6

    :goto_7
    invoke-interface {v6}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->b()I

    move-result v12

    iget-object v7, v3, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    if-eq v12, v9, :cond_a

    const-string v9, "audio/raw"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "audio/g711-mlaw"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, "audio/g711-alaw"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    if-nez v11, :cond_a

    if-nez v19, :cond_a

    if-nez v8, :cond_a

    move/from16 v7, p0

    goto :goto_8

    :cond_a
    const/4 v7, 0x0

    :goto_8
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_b

    move/from16 v30, p0

    goto :goto_9

    :cond_b
    const/16 v30, 0x0

    :goto_9
    if-eqz v7, :cond_14

    iget v0, v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->a:I

    new-array v4, v0, [J

    new-array v5, v0, [I

    :goto_a
    invoke-virtual {v10}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    iget v6, v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->b:I

    iget-wide v7, v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->d:J

    aput-wide v7, v4, v6

    iget v7, v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->c:I

    aput v7, v5, v6

    goto :goto_a

    :cond_c
    int-to-long v6, v14

    const/16 v8, 0x2000

    div-int/2addr v8, v12

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_b
    if-ge v10, v0, :cond_d

    aget v13, v5, v10

    invoke-static {v13, v8}, Landroidx/media3/common/util/Util;->g(II)I

    move-result v13

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_d
    new-array v10, v11, [J

    new-array v13, v11, [I

    new-array v14, v11, [J

    new-array v15, v11, [I

    move-object/from16 v22, v3

    move-object/from16 v16, v4

    move-object/from16 v23, v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v24, 0x0

    :goto_c
    if-ge v3, v0, :cond_f

    aget v25, v23, v3

    aget-wide v26, v16, v3

    move/from16 v41, v24

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v19, v41

    move/from16 v41, v25

    move/from16 v25, v3

    move/from16 v3, v41

    :goto_d
    if-lez v3, :cond_e

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v28

    aput-wide v26, v10, v19

    move/from16 p1, v3

    mul-int v3, v12, v28

    aput v3, v13, v19

    add-int/2addr v5, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v3, v5

    move-wide/from16 v31, v6

    int-to-long v5, v4

    mul-long v6, v31, v5

    aput-wide v6, v14, v19

    aput p0, v15, v19

    aget v5, v13, v19

    int-to-long v5, v5

    add-long v26, v26, v5

    add-int v4, v4, v28

    sub-int v5, p1, v28

    add-int/lit8 v19, v19, 0x1

    move v6, v5

    move v5, v3

    move v3, v6

    move-wide/from16 v6, v31

    goto :goto_d

    :cond_e
    move-wide/from16 v31, v6

    add-int/lit8 v3, v25, 0x1

    move/from16 v6, v19

    move/from16 v19, v0

    move/from16 v0, v24

    move/from16 v24, v6

    move-wide/from16 v6, v31

    goto :goto_c

    :cond_f
    move-wide/from16 v31, v6

    int-to-long v3, v4

    mul-long v6, v31, v3

    int-to-long v3, v5

    const/4 v12, 0x0

    if-eqz p3, :cond_10

    new-array v10, v12, [J

    :cond_10
    if-eqz p3, :cond_11

    new-array v13, v12, [I

    :cond_11
    if-eqz p3, :cond_12

    new-array v14, v12, [J

    :cond_12
    if-eqz p3, :cond_13

    new-array v15, v12, [I

    :cond_13
    move/from16 v33, v11

    move-object/from16 v28, v15

    move/from16 v26, v19

    :goto_e
    move-object/from16 v24, v10

    move-object/from16 v25, v13

    move-object v0, v14

    move-wide v10, v6

    goto/16 :goto_20

    :cond_14
    move-object/from16 v22, v3

    const/4 v12, 0x0

    if-eqz p3, :cond_15

    new-array v3, v12, [J

    goto :goto_f

    :cond_15
    new-array v3, v4, [J

    :goto_f
    if-eqz p3, :cond_16

    new-array v7, v12, [I

    goto :goto_10

    :cond_16
    new-array v7, v4, [I

    :goto_10
    move-object/from16 p1, v0

    if-eqz p3, :cond_17

    new-array v0, v12, [J

    goto :goto_11

    :cond_17
    new-array v0, v4, [J

    :goto_11
    move-object/from16 v23, v5

    if-eqz p3, :cond_18

    new-array v5, v12, [I

    goto :goto_12

    :cond_18
    new-array v5, v4, [I

    :goto_12
    move-object/from16 v31, v6

    move-object/from16 v32, v15

    move/from16 v12, v16

    move-wide/from16 v24, v17

    move-wide/from16 v26, v24

    move-wide/from16 v28, v26

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v33, 0x0

    :goto_13
    if-ge v6, v4, :cond_24

    move-wide/from16 v34, v28

    move/from16 v28, v16

    move/from16 v16, p0

    :goto_14
    if-nez v28, :cond_19

    invoke-virtual {v10}, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->a()Z

    move-result v16

    if-eqz v16, :cond_19

    move/from16 v29, v13

    move/from16 v36, v14

    iget-wide v13, v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->d:J

    move/from16 v37, v4

    iget v4, v10, Landroidx/media3/extractor/mp4/BoxParser$ChunkIterator;->c:I

    move/from16 v28, v4

    move-wide/from16 v34, v13

    move/from16 v13, v29

    move/from16 v14, v36

    move/from16 v4, v37

    goto :goto_14

    :cond_19
    move/from16 v37, v4

    move/from16 v29, v13

    move/from16 v36, v14

    if-nez v16, :cond_1b

    const-string v4, "Unexpected end of chunk data"

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    if-nez p3, :cond_1a

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    move-object v14, v0

    move-object v10, v3

    move-object v13, v4

    move v4, v6

    :goto_15
    move/from16 v0, v28

    goto/16 :goto_1a

    :cond_1a
    move-object v14, v0

    move-object v10, v3

    move v4, v6

    move-object v13, v7

    goto :goto_15

    :cond_1b
    if-eqz p1, :cond_1d

    :goto_16
    if-nez v33, :cond_1c

    if-lez v19, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v33

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v15

    add-int/lit8 v19, v19, -0x1

    goto :goto_16

    :cond_1c
    add-int/lit8 v33, v33, -0x1

    :cond_1d
    invoke-interface/range {v31 .. v31}, Landroidx/media3/extractor/mp4/BoxParser$SampleSizeBox;->a()I

    move-result v4

    int-to-long v13, v4

    add-long v26, v26, v13

    if-le v4, v2, :cond_1e

    move v2, v4

    :cond_1e
    if-nez p3, :cond_20

    aput-wide v34, v3, v6

    aput v4, v7, v6

    move/from16 v16, v2

    move-object v4, v3

    int-to-long v2, v15

    add-long v2, v24, v2

    aput-wide v2, v0, v6

    if-nez v23, :cond_1f

    move/from16 v2, p0

    goto :goto_17

    :cond_1f
    const/4 v2, 0x0

    :goto_17
    aput v2, v5, v6

    if-ne v6, v12, :cond_21

    aput p0, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_20
    move/from16 v16, v2

    move-object v4, v3

    :cond_21
    :goto_18
    if-eqz v23, :cond_22

    if-ne v6, v12, :cond_22

    add-int/lit8 v8, v8, -0x1

    if-lez v8, :cond_22

    invoke-virtual/range {v23 .. v23}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v12, v2

    :cond_22
    move/from16 v2, v36

    move-object/from16 v36, v4

    int-to-long v3, v2

    add-long v24, v24, v3

    add-int/lit8 v3, v29, -0x1

    if-nez v3, :cond_23

    if-lez v11, :cond_23

    invoke-virtual/range {v32 .. v32}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v2

    invoke-virtual/range {v32 .. v32}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    add-int/lit8 v11, v11, -0x1

    goto :goto_19

    :cond_23
    move/from16 v41, v3

    move v3, v2

    move/from16 v2, v41

    :goto_19
    add-long v13, v34, v13

    add-int/lit8 v4, v28, -0x1

    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v28, v13

    move v13, v2

    move v14, v3

    move/from16 v2, v16

    move-object/from16 v3, v36

    move/from16 v16, v4

    move/from16 v4, v37

    goto/16 :goto_13

    :cond_24
    move-object/from16 v36, v3

    move/from16 v37, v4

    move/from16 v29, v13

    move-object v14, v0

    move-object v13, v7

    move/from16 v0, v16

    move-object/from16 v10, v36

    :goto_1a
    int-to-long v6, v15

    add-long v6, v24, v6

    if-eqz p1, :cond_26

    :goto_1b
    if-lez v19, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v3

    if-eqz v3, :cond_25

    const/4 v3, 0x0

    goto :goto_1c

    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    add-int/lit8 v19, v19, -0x1

    goto :goto_1b

    :cond_26
    move/from16 v3, p0

    :goto_1c
    if-nez v8, :cond_28

    if-nez v29, :cond_28

    if-nez v0, :cond_28

    if-nez v11, :cond_28

    if-nez v33, :cond_28

    if-nez v3, :cond_27

    goto :goto_1d

    :cond_27
    move/from16 v16, v2

    goto :goto_1f

    :cond_28
    :goto_1d
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "Inconsistent stbl box for track "

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v1, Landroidx/media3/extractor/mp4/Track;->a:I

    move/from16 v16, v2

    const-string v2, ": remainingSynchronizationSamples "

    move/from16 p1, v3

    const-string v3, ", remainingSamplesAtTimestampDelta "

    invoke-static {v15, v8, v2, v3, v12}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, ", remainingSamplesInChunk "

    const-string v3, ", remainingTimestampDeltaChanges "

    move/from16 v8, v29

    invoke-static {v8, v0, v2, v3, v12}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez p1, :cond_29

    const-string v0, ", ctts invalid"

    goto :goto_1e

    :cond_29
    const-string v0, ""

    :goto_1e
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_1f
    move/from16 v33, v4

    move-object/from16 v28, v5

    move-wide/from16 v3, v26

    move/from16 v26, v16

    goto/16 :goto_e

    :goto_20
    iget-wide v5, v1, Landroidx/media3/extractor/mp4/Track;->f:J

    cmp-long v2, v5, v17

    const-wide/32 v7, 0x7fffffff

    if-lez v2, :cond_2a

    const-wide/16 v12, 0x8

    mul-long v34, v3, v12

    const-wide/32 v36, 0xf4240

    sget-object v40, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v38, v5

    invoke-static/range {v34 .. v40}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    cmp-long v4, v2, v17

    if-lez v4, :cond_2a

    cmp-long v4, v2, v7

    if-gez v4, :cond_2a

    invoke-virtual/range {v22 .. v22}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    long-to-int v2, v2

    iput v2, v4, Landroidx/media3/common/Format$Builder;->h:I

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Track;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    :cond_2a
    iget v2, v1, Landroidx/media3/extractor/mp4/Track;->b:I

    iget-wide v14, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    iget-object v3, v1, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    iget-object v4, v1, Landroidx/media3/extractor/mp4/Track;->j:[J

    iget-object v5, v1, Landroidx/media3/extractor/mp4/Track;->i:[J

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v12, 0xf4240

    move-object/from16 v16, v40

    invoke-static/range {v10 .. v16}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    invoke-static {v9}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object v29

    if-nez v5, :cond_2c

    if-nez p3, :cond_2b

    invoke-static {v0, v14, v15}, Landroidx/media3/common/util/Util;->Y([JJ)V

    :cond_2b
    new-instance v22, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v27, v0

    move-object/from16 v23, v1

    invoke-direct/range {v22 .. v33}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v22

    :cond_2c
    move-object/from16 v27, v0

    const-wide/16 v12, -0x1

    if-eqz p3, :cond_30

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, v5

    move/from16 v2, p0

    if-ne v0, v2, :cond_2d

    const/16 v21, 0x0

    aget-wide v2, v5, v21

    cmp-long v0, v2, v17

    if-nez v0, :cond_2d

    aget-wide v2, v4, v21

    sub-long v34, v10, v2

    const-wide/32 v36, 0xf4240

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v38, v2

    invoke-static/range {v34 .. v40}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    :goto_21
    move-wide/from16 v31, v2

    goto :goto_23

    :cond_2d
    move-wide/from16 v14, v17

    const/4 v7, 0x0

    :goto_22
    array-length v0, v5

    if-ge v7, v0, :cond_2f

    aget-wide v2, v4, v7

    cmp-long v0, v2, v12

    if-eqz v0, :cond_2e

    aget-wide v2, v5, v7

    add-long/2addr v14, v2

    :cond_2e
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    :cond_2f
    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    sget-object v20, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v16, 0xf4240

    move-wide/from16 v18, v2

    invoke-static/range {v14 .. v20}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v2

    goto :goto_21

    :goto_23
    new-instance v22, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v23, v1

    invoke-direct/range {v22 .. v33}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v22

    :cond_30
    move-object/from16 v0, v27

    array-length v6, v5

    move-wide/from16 v22, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    if-ne v2, v7, :cond_33

    array-length v6, v0

    const/4 v8, 0x2

    if-lt v6, v8, :cond_33

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    aget-wide v19, v4, v6

    aget-wide v34, v5, v6

    move/from16 p0, v7

    iget-wide v7, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v31, v12

    iget-wide v12, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    move-wide/from16 v36, v7

    move-wide/from16 v38, v12

    invoke-static/range {v34 .. v40}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    add-long v7, v19, v7

    array-length v12, v0

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x4

    invoke-static {v13, v6, v12}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v16

    move/from16 p1, v13

    array-length v13, v0

    add-int/lit8 v13, v13, -0x4

    invoke-static {v13, v6, v12}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v12

    aget-wide v34, v0, v6

    cmp-long v6, v34, v19

    if-gtz v6, :cond_32

    aget-wide v34, v0, v16

    cmp-long v6, v19, v34

    if-gez v6, :cond_32

    aget-wide v12, v0, v12

    cmp-long v6, v12, v7

    if-gez v6, :cond_32

    const-wide/16 v12, 0x2

    add-long/2addr v12, v10

    cmp-long v6, v7, v12

    if-gtz v6, :cond_32

    sub-long v6, v10, v7

    move-wide/from16 v12, v17

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/16 v21, 0x0

    aget-wide v16, v0, v21

    sub-long v34, v19, v16

    iget v8, v3, Landroidx/media3/common/Format;->H:I

    move-wide/from16 v17, v12

    int-to-long v12, v8

    move-wide/from16 v19, v6

    iget-wide v6, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v38, v6

    move-wide/from16 v36, v12

    invoke-static/range {v34 .. v40}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    iget v8, v3, Landroidx/media3/common/Format;->H:I

    int-to-long v12, v8

    move-object/from16 p1, v9

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v38, v8

    move-wide/from16 v36, v12

    move-wide/from16 v34, v19

    invoke-static/range {v34 .. v40}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    cmp-long v12, v6, v17

    if-nez v12, :cond_31

    cmp-long v12, v8, v17

    if-eqz v12, :cond_34

    :cond_31
    cmp-long v12, v6, v22

    if-gtz v12, :cond_34

    cmp-long v12, v8, v22

    if-gtz v12, :cond_34

    long-to-int v2, v6

    move-object/from16 v3, p2

    iput v2, v3, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    long-to-int v2, v8

    iput v2, v3, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    invoke-static {v0, v14, v15}, Landroidx/media3/common/util/Util;->Y([JJ)V

    const/16 v21, 0x0

    aget-wide v34, v5, v21

    const-wide/32 v36, 0xf4240

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    move-wide/from16 v38, v2

    invoke-static/range {v34 .. v40}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    new-instance v22, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v27, v0

    move-object/from16 v23, v1

    invoke-direct/range {v22 .. v33}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v22

    :cond_32
    move-object/from16 p1, v9

    goto :goto_24

    :cond_33
    move-object/from16 p1, v9

    move-wide/from16 v31, v12

    :cond_34
    :goto_24
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_37

    const/16 v21, 0x0

    aget-wide v6, v5, v21

    const-wide/16 v17, 0x0

    cmp-long v6, v6, v17

    if-nez v6, :cond_36

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-wide v2, v4, v21

    const/4 v7, 0x0

    :goto_25
    array-length v4, v0

    if-ge v7, v4, :cond_35

    aget-wide v4, v0, v7

    sub-long v12, v4, v2

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v4

    invoke-static/range {v12 .. v18}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_35
    sub-long v12, v10, v2

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    sget-object v18, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v14, 0xf4240

    move-wide/from16 v16, v2

    invoke-static/range {v12 .. v18}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    new-instance v22, Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-object/from16 v27, v0

    move-object/from16 v23, v1

    invoke-direct/range {v22 .. v33}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v22

    :cond_36
    const/4 v7, 0x1

    :cond_37
    move-object/from16 v10, v24

    move-object/from16 v13, v25

    move-object/from16 v15, v28

    move/from16 v11, v33

    if-ne v2, v7, :cond_38

    const/4 v2, 0x1

    goto :goto_26

    :cond_38
    const/4 v2, 0x0

    :goto_26
    array-length v6, v5

    new-array v6, v6, [I

    array-length v7, v5

    new-array v7, v7, [I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_27
    array-length v4, v5

    if-ge v12, v4, :cond_41

    move-object v4, v6

    move-object/from16 v19, v7

    aget-wide v6, v16, v12

    cmp-long v20, v6, v31

    if-eqz v20, :cond_40

    aget-wide v33, v5, v12

    move/from16 v20, v12

    move-object/from16 v25, v13

    iget-wide v12, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v35, v12

    iget-wide v12, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    sget-object v39, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v37, v12

    invoke-static/range {v33 .. v39}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    add-long/2addr v12, v6

    move-object/from16 p2, v4

    const/4 v4, 0x1

    invoke-static {v0, v6, v7, v4}, Landroidx/media3/common/util/Util;->f([JJZ)I

    move-result v6

    aput v6, p2, v20

    invoke-static {v0, v12, v13, v2}, Landroidx/media3/common/util/Util;->b([JJZ)I

    move-result v4

    add-int/lit8 v6, v4, -0x1

    move/from16 v22, v2

    const/4 v7, 0x0

    :goto_28
    array-length v2, v0

    if-ge v4, v2, :cond_3b

    aget-wide v23, v0, v4

    cmp-long v2, v23, v12

    if-gez v2, :cond_39

    move v6, v4

    goto :goto_29

    :cond_39
    add-int/lit8 v7, v7, 0x1

    iget v2, v3, Landroidx/media3/common/Format;->q:I

    if-le v7, v2, :cond_3a

    goto :goto_2a

    :cond_3a
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3b
    :goto_2a
    add-int/lit8 v6, v6, 0x1

    aput v6, v19, v20

    aget v2, p2, v20

    :goto_2b
    aget v4, p2, v20

    if-lez v4, :cond_3c

    aget v6, v15, v4

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-nez v6, :cond_3d

    add-int/lit8 v4, v4, -0x1

    aput v4, p2, v20

    goto :goto_2b

    :cond_3c
    const/4 v7, 0x1

    :cond_3d
    const/16 v21, 0x0

    if-nez v4, :cond_3e

    aget v4, v15, v21

    and-int/2addr v4, v7

    if-nez v4, :cond_3e

    aput v2, p2, v20

    :goto_2c
    aget v2, p2, v20

    aget v4, v19, v20

    if-ge v2, v4, :cond_3e

    aget v4, v15, v2

    and-int/2addr v4, v7

    if-nez v4, :cond_3e

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v20

    const/4 v7, 0x1

    goto :goto_2c

    :cond_3e
    aget v2, v19, v20

    aget v4, p2, v20

    sub-int v6, v2, v4

    add-int/2addr v6, v9

    if-eq v14, v4, :cond_3f

    const/4 v4, 0x1

    goto :goto_2d

    :cond_3f
    move/from16 v4, v21

    :goto_2d
    or-int/2addr v4, v8

    move v14, v2

    move v8, v4

    move v9, v6

    goto :goto_2e

    :cond_40
    move/from16 v22, v2

    move-object/from16 p2, v4

    move/from16 v20, v12

    move-object/from16 v25, v13

    const/16 v21, 0x0

    :goto_2e
    add-int/lit8 v12, v20, 0x1

    move-object/from16 v6, p2

    move-object/from16 v7, v19

    move/from16 v2, v22

    move-object/from16 v13, v25

    goto/16 :goto_27

    :cond_41
    move-object/from16 p2, v6

    move-object/from16 v19, v7

    move-object/from16 v25, v13

    const/16 v21, 0x0

    if-eq v9, v11, :cond_42

    const/4 v2, 0x1

    goto :goto_2f

    :cond_42
    move/from16 v2, v21

    :goto_2f
    or-int/2addr v2, v8

    if-eqz v2, :cond_43

    new-array v4, v9, [J

    goto :goto_30

    :cond_43
    move-object v4, v10

    :goto_30
    if-eqz v2, :cond_44

    new-array v6, v9, [I

    goto :goto_31

    :cond_44
    move-object/from16 v6, v25

    :goto_31
    if-eqz v2, :cond_45

    move/from16 v12, v21

    goto :goto_32

    :cond_45
    move/from16 v12, v26

    :goto_32
    if-eqz v2, :cond_46

    new-array v7, v9, [I

    goto :goto_33

    :cond_46
    move-object v7, v15

    :goto_33
    if-eqz v2, :cond_47

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    goto :goto_34

    :cond_47
    move-object/from16 v8, p1

    :goto_34
    new-array v9, v9, [J

    move/from16 v26, v12

    move/from16 v11, v21

    move v12, v11

    const-wide/16 v31, 0x0

    :goto_35
    array-length v13, v5

    if-ge v11, v13, :cond_4d

    aget-wide v13, v16, v11

    move-object/from16 v27, v0

    aget v0, p2, v11

    move/from16 p1, v2

    aget v2, v19, v11

    move-object/from16 v20, v3

    if-eqz p1, :cond_48

    sub-int v3, v2, v0

    invoke-static {v10, v0, v4, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v22, v5

    move-object/from16 v5, v25

    invoke-static {v5, v0, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v15, v0, v7, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_36

    :cond_48
    move-object/from16 v22, v5

    move-object/from16 v5, v25

    :goto_36
    move/from16 v3, v26

    :goto_37
    if-ge v0, v2, :cond_4c

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    sget-object v37, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v33, 0xf4240

    move-wide/from16 v35, v5

    invoke-static/range {v31 .. v37}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v28, v27, v0

    sub-long v33, v28, v13

    const-wide/32 v35, 0xf4240

    move-wide/from16 v28, v5

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/Track;->c:J

    move-object/from16 v39, v37

    move-wide/from16 v37, v5

    invoke-static/range {v33 .. v39}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    const-wide/16 v17, 0x0

    cmp-long v24, v5, v17

    if-gez v24, :cond_49

    const/16 v21, 0x1

    :cond_49
    add-long v5, v28, v5

    aput-wide v5, v9, v12

    if-eqz p1, :cond_4a

    aget v5, v25, v12

    if-le v5, v3, :cond_4a

    aget v3, v23, v0

    :cond_4a
    if-eqz p1, :cond_4b

    if-nez v30, :cond_4b

    aget v5, v7, v12

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4b
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, v23

    move-object/from16 v6, v25

    goto :goto_37

    :cond_4c
    move-object/from16 v23, v5

    move-object/from16 v25, v6

    const-wide/16 v17, 0x0

    aget-wide v5, v22, v11

    add-long v31, v31, v5

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p1

    move/from16 v26, v3

    move-object/from16 v3, v20

    move-object/from16 v5, v22

    move-object/from16 v6, v25

    move-object/from16 v0, v27

    move-object/from16 v25, v23

    goto/16 :goto_35

    :cond_4d
    move-object/from16 v20, v3

    move-object/from16 v25, v6

    iget-wide v2, v1, Landroidx/media3/extractor/mp4/Track;->d:J

    sget-object v37, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v33, 0xf4240

    move-wide/from16 v35, v2

    invoke-static/range {v31 .. v37}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v31

    if-eqz v21, :cond_4e

    invoke-virtual/range {v20 .. v20}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/common/Format$Builder;->t:Z

    new-instance v2, Landroidx/media3/common/Format;

    invoke-direct {v2, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/mp4/Track;->a(Landroidx/media3/common/Format;)Landroidx/media3/extractor/mp4/Track;

    move-result-object v1

    :cond_4e
    move-object/from16 v23, v1

    new-instance v22, Landroidx/media3/extractor/mp4/TrackSampleTable;

    invoke-static {v8}, Lcom/google/common/primitives/Ints;->g(Ljava/util/Collection;)[I

    move-result-object v29

    array-length v0, v4

    move/from16 v33, v0

    move-object/from16 v24, v4

    move-object/from16 v28, v7

    move-object/from16 v27, v9

    invoke-direct/range {v22 .. v33}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    return-object v22

    :cond_4f
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method

.method public static i(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/ArrayList;
    .locals 69

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    iget-object v11, v0, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_ac

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v1, v15, Landroidx/media3/container/Mp4Box;->a:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move/from16 v4, p8

    move-object/from16 v59, v11

    move-object v2, v12

    move/from16 v60, v14

    const/16 v35, 0x0

    goto/16 :goto_74

    :cond_0
    const v1, 0x6d766864

    invoke-virtual {v0, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x6d646961

    invoke-virtual {v15, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v4, 0x68646c72    # 4.3148E24f

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    const v6, 0x736f756e

    const/16 v16, 0x1

    const/4 v10, -0x1

    if-ne v4, v6, :cond_1

    move/from16 v4, v16

    goto :goto_2

    :cond_1
    const v6, 0x76696465

    if-ne v4, v6, :cond_2

    const/4 v4, 0x2

    goto :goto_2

    :cond_2
    const v6, 0x74657874

    if-eq v4, v6, :cond_5

    const v6, 0x7362746c

    if-eq v4, v6, :cond_5

    const v6, 0x73756274

    if-eq v4, v6, :cond_5

    const v6, 0x636c6370

    if-eq v4, v6, :cond_5

    const v6, 0x73756270

    if-ne v4, v6, :cond_3

    goto :goto_1

    :cond_3
    const v6, 0x6d657461

    if-ne v4, v6, :cond_4

    const/4 v4, 0x5

    goto :goto_2

    :cond_4
    move v4, v10

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x3

    :goto_2
    const/16 v18, 0x0

    const/16 v35, 0x0

    if-ne v4, v10, :cond_6

    :goto_3
    move-object/from16 v0, p7

    move-object/from16 v59, v11

    move-object/from16 v37, v12

    move/from16 v60, v14

    move-object v2, v15

    :goto_4
    move-object/from16 v6, v18

    goto/16 :goto_73

    :cond_6
    const v2, 0x746b6864

    invoke-virtual {v15, v2}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v21

    if-nez v21, :cond_7

    goto :goto_5

    :cond_7
    move v9, v5

    :goto_5
    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v24

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget v6, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-nez v21, :cond_8

    move v13, v9

    goto :goto_6

    :cond_8
    const/16 v13, 0x8

    :goto_6
    move/from16 v7, v35

    :goto_7
    const-wide/16 v33, 0x0

    const-wide v36, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v13, :cond_c

    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int v23, v6, v7

    aget-byte v5, v5, v23

    if-eq v5, v10, :cond_b

    if-nez v21, :cond_9

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v5

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v5

    :goto_8
    cmp-long v7, v5, v33

    if-nez v7, :cond_a

    :goto_9
    move-wide/from16 v25, v36

    goto :goto_a

    :cond_a
    move-wide/from16 v25, v5

    goto :goto_a

    :cond_b
    add-int/lit8 v7, v7, 0x1

    const/16 v5, 0x10

    goto :goto_7

    :cond_c
    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    goto :goto_9

    :goto_a
    const/16 v13, 0xa

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v27

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v6

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v13

    const/high16 v9, -0x10000

    const/high16 v10, 0x10000

    if-nez v5, :cond_e

    if-ne v6, v10, :cond_e

    if-eq v7, v9, :cond_d

    if-ne v7, v10, :cond_e

    :cond_d
    if-nez v13, :cond_e

    const/16 v5, 0x5a

    :goto_b
    move/from16 v28, v5

    :goto_c
    const/16 v5, 0x10

    goto :goto_d

    :cond_e
    if-nez v5, :cond_10

    if-ne v6, v9, :cond_10

    if-eq v7, v10, :cond_f

    if-ne v7, v9, :cond_10

    :cond_f
    if-nez v13, :cond_10

    const/16 v5, 0x10e

    goto :goto_b

    :cond_10
    if-eq v5, v9, :cond_11

    if-ne v5, v10, :cond_12

    :cond_11
    if-nez v6, :cond_12

    if-nez v7, :cond_12

    if-ne v13, v9, :cond_12

    const/16 v5, 0xb4

    goto :goto_b

    :cond_12
    move/from16 v28, v35

    goto :goto_c

    :goto_d
    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v29

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v30

    new-instance v23, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;

    invoke-direct/range {v23 .. v30}, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;-><init>(IJIIII)V

    move-object/from16 v13, v23

    cmp-long v2, p2, v36

    if-nez v2, :cond_13

    iget-wide v5, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->b:J

    move-wide/from16 v23, v5

    goto :goto_e

    :cond_13
    move-wide/from16 v23, p2

    :goto_e
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v1

    iget-wide v1, v1, Landroidx/media3/container/Mp4TimestampData;->c:J

    cmp-long v5, v23, v36

    if-nez v5, :cond_14

    move-wide/from16 v23, v1

    move-wide/from16 v25, v36

    :goto_f
    const v1, 0x6d696e66

    goto :goto_10

    :cond_14
    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v29, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v25, 0xf4240

    move-wide/from16 v27, v1

    invoke-static/range {v23 .. v29}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v1

    move-wide/from16 v23, v27

    move-wide/from16 v25, v1

    goto :goto_f

    :goto_10
    invoke-virtual {v3, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7374626c

    invoke-virtual {v2, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6d646864

    invoke-virtual {v3, v5}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v5

    if-nez v5, :cond_15

    const/16 v6, 0x8

    goto :goto_11

    :cond_15
    const/16 v6, 0x10

    :goto_11
    invoke-virtual {v3, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v42

    iget v6, v3, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-nez v5, :cond_16

    const/4 v7, 0x4

    goto :goto_12

    :cond_16
    const/16 v7, 0x8

    :goto_12
    move/from16 v9, v35

    :goto_13
    if-ge v9, v7, :cond_1a

    iget-object v10, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int v27, v6, v9

    aget-byte v10, v10, v27

    const/4 v1, -0x1

    if-eq v10, v1, :cond_19

    if-nez v5, :cond_17

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v5

    goto :goto_14

    :cond_17
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v5

    :goto_14
    cmp-long v1, v5, v33

    if-nez v1, :cond_18

    move-wide/from16 v45, v42

    goto :goto_15

    :cond_18
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v47, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v45, v42

    const-wide/32 v43, 0xf4240

    move-wide/from16 v41, v5

    invoke-static/range {v41 .. v47}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v36

    goto :goto_15

    :cond_19
    move-wide/from16 v45, v42

    add-int/lit8 v9, v9, 0x1

    const v1, 0x7374626c

    goto :goto_13

    :cond_1a
    move-wide/from16 v45, v42

    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :goto_15
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    shr-int/lit8 v3, v1, 0xa

    const/16 v5, 0x1f

    and-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    shr-int/lit8 v6, v1, 0x5

    and-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x60

    int-to-char v6, v6

    and-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    const/4 v7, 0x3

    new-array v9, v7, [C

    aput-char v3, v9, v35

    aput-char v6, v9, v16

    const/16 v32, 0x2

    aput-char v1, v9, v32

    move/from16 v1, v35

    :goto_16
    const/16 v3, 0x61

    if-ge v1, v7, :cond_1d

    aget-char v6, v9, v1

    if-lt v6, v3, :cond_1c

    const/16 v7, 0x7a

    if-le v6, v7, :cond_1b

    goto :goto_17

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x3

    goto :goto_16

    :cond_1c
    :goto_17
    move-object/from16 v1, v18

    goto :goto_18

    :cond_1d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([C)V

    :goto_18
    new-instance v41, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;

    move-wide/from16 v42, v45

    move-object/from16 v46, v1

    move-wide/from16 v44, v36

    invoke-direct/range {v41 .. v46}, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;-><init>(JJLjava/lang/String;)V

    move-object/from16 v1, v41

    const v6, 0x73747364

    invoke-virtual {v2, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v2

    if-nez v2, :cond_1e

    const-string v1, "Ignoring track where sample table (stbl) box is missing a sample description (stsd)."

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1e
    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v6, 0xc

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v6

    new-instance v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;

    invoke-direct {v9, v6}, Landroidx/media3/extractor/mp4/BoxParser$StsdData;-><init>(I)V

    move/from16 v10, v35

    :goto_19
    iget-object v7, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-ge v10, v6, :cond_9f

    move/from16 v27, v3

    iget v3, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    move/from16 v28, v4

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    if-lez v4, :cond_1f

    move/from16 v5, v16

    goto :goto_1a

    :cond_1f
    move/from16 v5, v35

    :goto_1a
    const-string v0, "childAtomSize must be positive"

    invoke-static {v0, v5}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    move/from16 v30, v6

    const v6, 0x61766331

    move-object/from16 v36, v7

    iget-object v7, v1, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->c:Ljava/lang/String;

    if-eq v5, v6, :cond_9e

    const v6, 0x61766333

    if-eq v5, v6, :cond_9e

    const v6, 0x656e6376

    if-eq v5, v6, :cond_9e

    const v6, 0x6d317620

    if-eq v5, v6, :cond_9e

    const v6, 0x6d703476

    if-eq v5, v6, :cond_9e

    const v6, 0x68766331

    if-eq v5, v6, :cond_9e

    const v6, 0x68657631

    if-eq v5, v6, :cond_9e

    const v6, 0x76766331

    if-eq v5, v6, :cond_9e

    const v6, 0x76766931

    if-eq v5, v6, :cond_9e

    const v6, 0x73323633

    if-eq v5, v6, :cond_9e

    const v6, 0x48323633

    if-eq v5, v6, :cond_9e

    const v6, 0x68323633

    if-eq v5, v6, :cond_9e

    const v6, 0x76703038

    if-eq v5, v6, :cond_9e

    const v6, 0x76703039

    if-eq v5, v6, :cond_9e

    const v6, 0x61763031

    if-eq v5, v6, :cond_9e

    const v6, 0x64766176

    if-eq v5, v6, :cond_9e

    const v6, 0x64766131

    if-eq v5, v6, :cond_9e

    const v6, 0x64766865

    if-eq v5, v6, :cond_9e

    const v6, 0x64766831

    if-eq v5, v6, :cond_9e

    const v6, 0x61707631

    if-eq v5, v6, :cond_9e

    const v6, 0x64617631

    if-ne v5, v6, :cond_20

    move-object/from16 v53, v1

    move-object/from16 v51, v2

    move/from16 v61, v3

    move/from16 v48, v4

    move v2, v5

    move-object v0, v7

    move/from16 v58, v10

    move-object/from16 v59, v11

    move-object/from16 v37, v12

    move/from16 v60, v14

    move-object/from16 v45, v15

    const/16 v20, 0x3

    goto/16 :goto_68

    :cond_20
    iget v6, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->a:I

    move-object/from16 v53, v1

    const v1, 0x656e6361

    move/from16 v57, v6

    const v6, 0x6d703461

    if-eq v5, v6, :cond_21

    if-eq v5, v1, :cond_21

    const v6, 0x61632d33

    if-eq v5, v6, :cond_21

    const v6, 0x65632d33

    if-eq v5, v6, :cond_21

    const v6, 0x61632d34

    if-eq v5, v6, :cond_21

    const v6, 0x6d6c7061

    if-eq v5, v6, :cond_21

    const v6, 0x64747363

    if-eq v5, v6, :cond_21

    const v6, 0x64747365

    if-eq v5, v6, :cond_21

    const v6, 0x64747368

    if-eq v5, v6, :cond_21

    const v6, 0x6474736c

    if-eq v5, v6, :cond_21

    const v6, 0x64747378

    if-eq v5, v6, :cond_21

    const v6, 0x73616d72

    if-eq v5, v6, :cond_21

    const v6, 0x73617762

    if-eq v5, v6, :cond_21

    const v6, 0x6c70636d

    if-eq v5, v6, :cond_21

    const v6, 0x736f7774

    if-eq v5, v6, :cond_21

    const v6, 0x74776f73

    if-eq v5, v6, :cond_21

    const v6, 0x2e6d7032

    if-eq v5, v6, :cond_21

    const v6, 0x2e6d7033

    if-eq v5, v6, :cond_21

    const v6, 0x6d686131

    if-eq v5, v6, :cond_21

    const v6, 0x6d686d31

    if-eq v5, v6, :cond_21

    const v6, 0x616c6163

    if-eq v5, v6, :cond_21

    const v6, 0x616c6177

    if-eq v5, v6, :cond_21

    const v6, 0x756c6177

    if-eq v5, v6, :cond_21

    const v6, 0x4f707573

    if-eq v5, v6, :cond_21

    const v6, 0x664c6143

    if-eq v5, v6, :cond_21

    const v6, 0x69616d66

    if-eq v5, v6, :cond_21

    const v6, 0x6970636d

    if-eq v5, v6, :cond_21

    const v6, 0x6670636d

    if-ne v5, v6, :cond_22

    :cond_21
    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    goto/16 :goto_26

    :cond_22
    const v0, 0x77767474

    const v1, 0x74783367

    const v6, 0x54544d4c

    if-eq v5, v6, :cond_26

    if-eq v5, v1, :cond_26

    if-eq v5, v0, :cond_26

    const v0, 0x73747070

    if-eq v5, v0, :cond_26

    const v0, 0x63363038

    if-eq v5, v0, :cond_26

    const v0, 0x6d703473

    if-ne v5, v0, :cond_23

    goto/16 :goto_1e

    :cond_23
    const v0, 0x6d657474

    if-ne v5, v0, :cond_25

    add-int/lit8 v1, v3, 0x10

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    if-ne v5, v0, :cond_24

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    :cond_24
    :goto_1b
    move-object v1, v2

    move/from16 v61, v3

    move/from16 v48, v4

    move/from16 v58, v10

    move-object/from16 v59, v11

    move-object/from16 v37, v12

    move/from16 v60, v14

    move-object/from16 v45, v15

    move/from16 v11, v16

    move-object/from16 v0, v53

    :goto_1c
    const v12, 0x6d646961

    const/16 v14, 0x8

    const/4 v15, 0x2

    const/16 v17, 0x5

    const/16 v20, 0x3

    :goto_1d
    const/16 v29, 0x1f

    const/16 v38, 0x10

    const/16 v39, 0x4

    const/16 v40, -0x1

    goto/16 :goto_69

    :cond_25
    const v0, 0x63616d6d

    if-ne v5, v0, :cond_24

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    const-string v1, "application/x-camera-motion"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    goto :goto_1b

    :cond_26
    :goto_1e
    add-int/lit8 v0, v3, 0x10

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const-string v0, "application/ttml+xml"

    const-wide v45, 0x7fffffffffffffffL

    if-ne v5, v6, :cond_27

    :goto_1f
    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    move-object/from16 v1, v18

    :goto_20
    move-wide/from16 v5, v45

    goto/16 :goto_24

    :cond_27
    if-ne v5, v1, :cond_28

    add-int/lit8 v0, v4, -0x10

    new-array v1, v0, [B

    move/from16 v5, v35

    invoke-virtual {v2, v5, v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "application/x-quicktime-tx3g"

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    goto :goto_20

    :cond_28
    const v1, 0x77767474

    if-ne v5, v1, :cond_29

    const-string v0, "application/x-mp4-vtt"

    goto :goto_1f

    :cond_29
    const v1, 0x73747070

    if-ne v5, v1, :cond_2a

    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    move-object/from16 v1, v18

    move-wide/from16 v5, v33

    goto/16 :goto_24

    :cond_2a
    const v0, 0x63363038

    if-ne v5, v0, :cond_2b

    move/from16 v0, v16

    iput v0, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->d:I

    const-string v0, "application/x-mp4-cea-608"

    goto :goto_1f

    :cond_2b
    const v0, 0x6d703473

    if-ne v5, v0, :cond_32

    iget v0, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    const v5, 0x65736473

    if-ne v1, v5, :cond_30

    invoke-static {v0, v2}, Landroidx/media3/extractor/mp4/BoxParser;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    if-eqz v0, :cond_2c

    array-length v1, v0

    const/16 v5, 0x40

    if-eq v1, v5, :cond_2d

    :cond_2c
    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    goto/16 :goto_25

    :cond_2d
    array-length v1, v0

    if-ne v1, v5, :cond_2e

    const/4 v1, 0x1

    goto :goto_21

    :cond_2e
    const/4 v1, 0x0

    :goto_21
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v5, 0x10

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_22
    array-length v6, v0

    const/16 v20, 0x3

    add-int/lit8 v6, v6, -0x3

    if-ge v5, v6, :cond_2f

    aget-byte v6, v0, v5

    add-int/lit8 v36, v5, 0x1

    move-object/from16 v37, v0

    aget-byte v0, v37, v36

    add-int/lit8 v36, v5, 0x2

    move/from16 v42, v5

    aget-byte v5, v37, v36

    add-int/lit8 v36, v42, 0x3

    move/from16 v58, v10

    aget-byte v10, v37, v36

    invoke-static {v6, v0, v5, v10}, Lcom/google/common/primitives/Ints;->d(BBBB)I

    move-result v0

    shr-int/lit8 v5, v0, 0x10

    const/16 v6, 0xff

    and-int/2addr v5, v6

    shr-int/lit8 v10, v0, 0x8

    and-int/2addr v10, v6

    and-int/2addr v0, v6

    add-int/lit8 v10, v10, -0x80

    const/16 v6, 0x36fb

    move/from16 v36, v0

    const/16 v0, 0x2710

    invoke-static {v10, v6, v0, v5}, Lpq0;->c(IIII)I

    move-result v6

    add-int/lit8 v0, v36, -0x80

    move-object/from16 v59, v11

    mul-int/lit16 v11, v0, 0xd7f

    move/from16 v60, v14

    const/16 v14, 0x2710

    div-int/2addr v11, v14

    sub-int v11, v5, v11

    mul-int/lit16 v10, v10, 0x1c01

    div-int/2addr v10, v14

    sub-int/2addr v11, v10

    const/16 v10, 0x457e

    invoke-static {v0, v10, v14, v5}, Lpq0;->c(IIII)I

    move-result v0

    const/16 v5, 0xff

    const/4 v10, 0x0

    invoke-static {v6, v10, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v6

    const/16 v38, 0x10

    shl-int/lit8 v6, v6, 0x10

    invoke-static {v11, v10, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v11

    const/16 v22, 0x8

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v6, v11

    invoke-static {v0, v10, v5}, Landroidx/media3/common/util/Util;->j(III)I

    move-result v0

    or-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v5, "%06x"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v42, 0x4

    move-object/from16 v0, v37

    move/from16 v10, v58

    move-object/from16 v11, v59

    move/from16 v14, v60

    goto :goto_22

    :cond_2f
    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    const-string v0, "x"

    const-string v5, "\npalette: "

    iget v6, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->e:I

    iget v10, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->f:I

    const-string v11, "size: "

    invoke-static {v6, v10, v11, v0, v5}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Lcom/google/common/base/Joiner;

    const-string v6, ", "

    invoke-direct {v5, v6}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/google/common/base/Joiner;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const-string v1, "application/vobsub"

    goto :goto_23

    :cond_30
    move/from16 v58, v10

    move-object/from16 v59, v11

    move/from16 v60, v14

    move-object/from16 v0, v18

    move-object v1, v0

    :goto_23
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_20

    :goto_24
    if-eqz v0, :cond_31

    new-instance v10, Landroidx/media3/common/Format$Builder;

    invoke-direct {v10}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v7, v10, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iput-wide v5, v10, Landroidx/media3/common/Format$Builder;->s:J

    iput-object v1, v10, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v10}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    :cond_31
    :goto_25
    move-object v1, v2

    move/from16 v61, v3

    move/from16 v48, v4

    move-object/from16 v37, v12

    move-object/from16 v45, v15

    move-object/from16 v0, v53

    const/4 v11, 0x1

    goto/16 :goto_1c

    :cond_32
    invoke-static {}, Lr81;->b()V

    return-object v18

    :goto_26
    add-int/lit8 v6, v3, 0x10

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v6, 0x6

    if-eqz p6, :cond_33

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v10

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    goto :goto_27

    :cond_33
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v10, 0x0

    :goto_27
    const/16 v11, 0x18

    if-eqz v10, :cond_34

    const/4 v1, 0x1

    if-ne v10, v1, :cond_35

    :cond_34
    move-object v1, v7

    goto/16 :goto_2d

    :cond_35
    const/4 v1, 0x2

    if-ne v10, v1, :cond_40

    const/16 v1, 0x10

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v62

    invoke-static/range {v62 .. v63}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v62

    move-object v1, v7

    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v7

    const/4 v10, 0x4

    invoke-virtual {v2, v10}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v10

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v62

    and-int/lit8 v63, v62, 0x1

    if-eqz v63, :cond_36

    const/16 v63, 0x1

    goto :goto_28

    :cond_36
    const/16 v63, 0x0

    :goto_28
    and-int/lit8 v62, v62, 0x2

    if-eqz v62, :cond_37

    const/16 v62, 0x1

    goto :goto_29

    :cond_37
    const/16 v62, 0x0

    :goto_29
    if-nez v63, :cond_3e

    const/16 v14, 0x8

    if-ne v10, v14, :cond_38

    const/4 v10, 0x3

    goto :goto_2b

    :cond_38
    const/16 v14, 0x10

    if-ne v10, v14, :cond_3a

    if-eqz v62, :cond_39

    const/high16 v10, 0x10000000

    goto :goto_2a

    :cond_39
    const/4 v10, 0x2

    :goto_2a
    const/16 v14, 0x8

    goto :goto_2b

    :cond_3a
    if-ne v10, v11, :cond_3c

    if-eqz v62, :cond_3b

    const/high16 v10, 0x50000000

    goto :goto_2a

    :cond_3b
    const/16 v10, 0x15

    goto :goto_2a

    :cond_3c
    const/16 v14, 0x20

    if-ne v10, v14, :cond_3f

    if-eqz v62, :cond_3d

    const/high16 v10, 0x60000000

    goto :goto_2a

    :cond_3d
    const/16 v10, 0x16

    goto :goto_2a

    :cond_3e
    const/16 v14, 0x20

    if-nez v62, :cond_3f

    if-ne v10, v14, :cond_3f

    const/4 v10, 0x4

    goto :goto_2a

    :cond_3f
    const/4 v10, -0x1

    goto :goto_2a

    :goto_2b
    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move v11, v6

    move v6, v10

    const/4 v14, 0x0

    :goto_2c
    const v10, 0x69616d66

    goto :goto_2f

    :cond_40
    move-object/from16 v51, v2

    move/from16 v61, v3

    move/from16 v48, v4

    move-object/from16 v37, v12

    move-object/from16 v46, v13

    move-object/from16 v45, v15

    const/16 v20, 0x3

    goto/16 :goto_67

    :goto_2d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->B()I

    move-result v7

    iget v14, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/16 v39, 0x4

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v2, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v14

    const/4 v11, 0x1

    if-ne v10, v11, :cond_41

    const/16 v10, 0x10

    invoke-virtual {v2, v10}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    goto :goto_2e

    :cond_41
    const/16 v10, 0x10

    :goto_2e
    move v11, v7

    move v7, v6

    const/4 v6, -0x1

    goto :goto_2c

    :goto_2f
    if-ne v5, v10, :cond_42

    const/4 v7, -0x1

    const/4 v11, -0x1

    goto :goto_31

    :cond_42
    const v10, 0x73616d72

    if-ne v5, v10, :cond_43

    const/16 v7, 0x1f40

    :goto_30
    move v11, v7

    const/4 v7, 0x1

    goto :goto_31

    :cond_43
    const v10, 0x73617762

    if-ne v5, v10, :cond_44

    const/16 v7, 0x3e80

    goto :goto_30

    :cond_44
    :goto_31
    iget v10, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    move-object/from16 v64, v1

    const v1, 0x656e6361

    if-ne v5, v1, :cond_47

    invoke-static {v2, v3, v4}, Landroidx/media3/extractor/mp4/BoxParser;->g(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_46

    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v8, :cond_45

    move/from16 v61, v3

    move-object/from16 v3, v18

    goto :goto_32

    :cond_45
    move/from16 v61, v3

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    invoke-virtual {v8, v3}, Landroidx/media3/common/DrmInitData;->a(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    :goto_32
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v1, v36, v58

    goto :goto_33

    :cond_46
    move/from16 v61, v3

    move-object v3, v8

    :goto_33
    invoke-virtual {v2, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto :goto_34

    :cond_47
    move/from16 v61, v3

    move-object v3, v8

    :goto_34
    const-string v1, "audio/mhm1"

    const-string v36, "audio/eac3"

    const-string v65, "audio/ac3"

    const-string v66, "audio/raw"

    move/from16 v67, v7

    const v7, 0x61632d33

    if-ne v5, v7, :cond_48

    move-object/from16 v7, v65

    goto/16 :goto_38

    :cond_48
    const v7, 0x65632d33

    if-ne v5, v7, :cond_49

    move-object/from16 v7, v36

    goto/16 :goto_38

    :cond_49
    const v7, 0x61632d34

    if-ne v5, v7, :cond_4a

    const-string v7, "audio/ac4"

    goto/16 :goto_38

    :cond_4a
    const v7, 0x64747363

    if-ne v5, v7, :cond_4b

    const-string v7, "audio/vnd.dts"

    goto/16 :goto_38

    :cond_4b
    const v7, 0x64747368

    if-eq v5, v7, :cond_60

    const v7, 0x6474736c

    if-ne v5, v7, :cond_4c

    goto/16 :goto_37

    :cond_4c
    const v7, 0x64747365

    if-ne v5, v7, :cond_4d

    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_38

    :cond_4d
    const v7, 0x64747378

    if-ne v5, v7, :cond_4e

    const-string v7, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_38

    :cond_4e
    const v7, 0x73616d72

    if-ne v5, v7, :cond_4f

    const-string v7, "audio/3gpp"

    goto/16 :goto_38

    :cond_4f
    const v7, 0x73617762

    if-ne v5, v7, :cond_50

    const-string v7, "audio/amr-wb"

    goto/16 :goto_38

    :cond_50
    const v7, 0x736f7774

    if-ne v5, v7, :cond_51

    :goto_35
    move-object/from16 v7, v66

    const/4 v6, 0x2

    goto/16 :goto_38

    :cond_51
    const v7, 0x74776f73

    if-ne v5, v7, :cond_52

    move-object/from16 v7, v66

    const/high16 v6, 0x10000000

    goto/16 :goto_38

    :cond_52
    const v7, 0x6c70636d

    if-ne v5, v7, :cond_54

    const/4 v7, -0x1

    if-ne v6, v7, :cond_53

    goto :goto_35

    :cond_53
    move-object/from16 v7, v66

    goto/16 :goto_38

    :cond_54
    const v7, 0x2e6d7032

    if-eq v5, v7, :cond_5f

    const v7, 0x2e6d7033

    if-ne v5, v7, :cond_55

    goto :goto_36

    :cond_55
    const v7, 0x6d686131

    if-ne v5, v7, :cond_56

    const-string v7, "audio/mha1"

    goto :goto_38

    :cond_56
    const v7, 0x6d686d31

    if-ne v5, v7, :cond_57

    move-object v7, v1

    goto :goto_38

    :cond_57
    const v7, 0x616c6163

    if-ne v5, v7, :cond_58

    const-string v7, "audio/alac"

    goto :goto_38

    :cond_58
    const v7, 0x616c6177

    if-ne v5, v7, :cond_59

    const-string v7, "audio/g711-alaw"

    goto :goto_38

    :cond_59
    const v7, 0x756c6177

    if-ne v5, v7, :cond_5a

    const-string v7, "audio/g711-mlaw"

    goto :goto_38

    :cond_5a
    const v7, 0x4f707573

    if-ne v5, v7, :cond_5b

    const-string v7, "audio/opus"

    goto :goto_38

    :cond_5b
    const v7, 0x664c6143

    if-ne v5, v7, :cond_5c

    const-string v7, "audio/flac"

    goto :goto_38

    :cond_5c
    const v7, 0x6d6c7061

    if-ne v5, v7, :cond_5d

    const-string v7, "audio/true-hd"

    goto :goto_38

    :cond_5d
    const v7, 0x69616d66

    if-ne v5, v7, :cond_5e

    const-string v7, "audio/iamf"

    goto :goto_38

    :cond_5e
    move-object/from16 v7, v18

    goto :goto_38

    :cond_5f
    :goto_36
    const-string v7, "audio/mpeg"

    goto :goto_38

    :cond_60
    :goto_37
    const-string v7, "audio/vnd.dts.hd"

    :goto_38
    move v8, v11

    move-object/from16 v37, v12

    move-object/from16 v46, v13

    move-object/from16 v45, v15

    move-object/from16 v12, v18

    move-object v15, v12

    move-object/from16 v47, v15

    move-object/from16 v68, v47

    move v11, v10

    move-object v10, v7

    move/from16 v7, v67

    :goto_39
    sub-int v13, v11, v61

    if-ge v13, v4, :cond_9a

    invoke-virtual {v2, v11}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v13

    move/from16 v48, v4

    if-lez v13, :cond_61

    const/4 v4, 0x1

    goto :goto_3a

    :cond_61
    const/4 v4, 0x0

    :goto_3a
    invoke-static {v0, v4}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    move/from16 v49, v6

    const v6, 0x6d686143

    if-ne v4, v6, :cond_65

    add-int/lit8 v4, v11, 0x8

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {v10, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "mhm1.%02X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_3b
    move-object v12, v4

    goto :goto_3c

    :cond_62
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "mha1.%02X"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    :goto_3c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v4

    new-array v6, v4, [B

    move-object/from16 v50, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v4, v6}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    if-nez v15, :cond_63

    invoke-static {v6}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    move-object v15, v4

    goto :goto_3d

    :cond_63
    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v15, v1

    :cond_64
    :goto_3d
    move-object/from16 v51, v2

    move/from16 v55, v5

    move-object/from16 v52, v12

    move v6, v13

    const/16 v20, 0x3

    move-object v12, v0

    move-object/from16 v0, v64

    goto/16 :goto_65

    :cond_65
    move-object/from16 v50, v1

    const v1, 0x6d686150

    if-ne v4, v1, :cond_67

    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    if-lez v1, :cond_64

    new-array v4, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    if-nez v15, :cond_66

    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_3d

    :cond_66
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1, v4}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    goto :goto_3d

    :cond_67
    const v1, 0x65736473

    if-eq v4, v1, :cond_68

    if-eqz p6, :cond_69

    const v1, 0x77617665

    if-ne v4, v1, :cond_69

    const v1, 0x65736473

    :cond_68
    move-object/from16 v55, v0

    move-object/from16 v54, v10

    move-object/from16 v52, v12

    move/from16 v51, v13

    move-object/from16 v56, v15

    move-object/from16 v0, v64

    const v6, 0x6970636d

    const v10, 0x6670636d

    const/16 v12, 0x20

    const/4 v15, 0x6

    const/16 v20, 0x3

    goto/16 :goto_55

    :cond_69
    const v1, 0x62747274

    if-ne v4, v1, :cond_6a

    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move-object v6, v0

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v0

    move-object/from16 v52, v12

    move/from16 v51, v13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v12

    new-instance v4, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {v4, v12, v13, v0, v1}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    move-object/from16 v68, v4

    move/from16 v55, v5

    move-object v12, v6

    move/from16 v6, v51

    move-object/from16 v0, v64

    const/16 v20, 0x3

    move-object/from16 v51, v2

    goto/16 :goto_65

    :cond_6a
    move-object v6, v0

    move-object/from16 v52, v12

    move/from16 v51, v13

    const v0, 0x64616333

    sget-object v1, Landroidx/media3/extractor/Ac3Util;->d:[I

    sget-object v12, Landroidx/media3/extractor/Ac3Util;->b:[I

    if-ne v4, v0, :cond_6c

    add-int/lit8 v0, v11, 0x8

    invoke-virtual {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    invoke-virtual {v4, v2}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v54

    aget v12, v12, v54

    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v54

    aget v1, v1, v54

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v54

    if-eqz v54, :cond_6b

    add-int/lit8 v1, v1, 0x1

    :cond_6b
    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v54

    sget-object v13, Landroidx/media3/extractor/Ac3Util;->e:[I

    aget v13, v13, v54

    mul-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v0, v4, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static/range {v65 .. v65}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v1, v4, Landroidx/media3/common/Format$Builder;->F:I

    iput v12, v4, Landroidx/media3/common/Format$Builder;->G:I

    iput-object v3, v4, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    move-object/from16 v0, v64

    iput-object v0, v4, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iput v13, v4, Landroidx/media3/common/Format$Builder;->h:I

    iput v13, v4, Landroidx/media3/common/Format$Builder;->i:I

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    move-object/from16 v55, v6

    move-object/from16 v54, v10

    move-object/from16 v56, v15

    :goto_3e
    const v6, 0x6970636d

    const v10, 0x6670636d

    const/16 v12, 0x20

    const/4 v15, 0x6

    const/16 v20, 0x3

    goto/16 :goto_54

    :cond_6c
    move-object/from16 v0, v64

    const v13, 0x64656333

    if-ne v4, v13, :cond_71

    add-int/lit8 v4, v11, 0x8

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v13, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v13}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    move-object/from16 v54, v1

    const/16 v1, 0xd

    invoke-virtual {v13, v1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    move-object/from16 v55, v6

    const/4 v6, 0x3

    invoke-virtual {v13, v6}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v6, 0x2

    invoke-virtual {v13, v6}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v56

    aget v6, v12, v56

    const/16 v12, 0xa

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v12, 0x3

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v20

    aget v20, v54, v20

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v16

    if-eqz v16, :cond_6d

    add-int/lit8 v20, v20, 0x1

    :cond_6d
    move/from16 v16, v20

    const/4 v12, 0x3

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v12, 0x4

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v56

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    move-object/from16 v54, v10

    if-lez v56, :cond_6f

    const/4 v10, 0x6

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v10

    if-eqz v10, :cond_6e

    add-int/lit8 v16, v16, 0x2

    :cond_6e
    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_6f
    move/from16 v10, v16

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v12

    move-object/from16 v56, v15

    const/4 v15, 0x7

    if-le v12, v15, :cond_70

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v12, 0x1

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v15

    if-eqz v15, :cond_70

    const-string v12, "audio/eac3-joc"

    goto :goto_3f

    :cond_70
    move-object/from16 v12, v36

    :goto_3f
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableBitArray;->d()I

    move-result v13

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-instance v13, Landroidx/media3/common/Format$Builder;

    invoke-direct {v13}, Landroidx/media3/common/Format$Builder;-><init>()V

    iput-object v4, v13, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static {v12}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v10, v13, Landroidx/media3/common/Format$Builder;->F:I

    iput v6, v13, Landroidx/media3/common/Format$Builder;->G:I

    iput-object v3, v13, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iput-object v0, v13, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iput v1, v13, Landroidx/media3/common/Format$Builder;->i:I

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v13}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    goto/16 :goto_3e

    :cond_71
    move-object/from16 v55, v6

    move-object/from16 v54, v10

    move-object/from16 v56, v15

    const v1, 0x64616334

    if-ne v4, v1, :cond_72

    add-int/lit8 v1, v11, 0x8

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0, v3}, Landroidx/media3/extractor/Ac4Util;->b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    goto/16 :goto_3e

    :cond_72
    const v1, 0x646d6c70

    if-ne v4, v1, :cond_74

    if-lez v14, :cond_73

    move v8, v14

    move/from16 v6, v51

    move-object/from16 v10, v54

    move-object/from16 v12, v55

    move-object/from16 v15, v56

    const/4 v7, 0x2

    :goto_40
    const/16 v20, 0x3

    :goto_41
    move-object/from16 v51, v2

    move/from16 v55, v5

    goto/16 :goto_65

    :cond_73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_74
    const v1, 0x64647473

    if-eq v4, v1, :cond_75

    const v1, 0x75647473

    if-ne v4, v1, :cond_76

    :cond_75
    const v6, 0x6970636d

    const v10, 0x6670636d

    const/16 v12, 0x20

    const/4 v15, 0x6

    const/16 v20, 0x3

    goto/16 :goto_53

    :cond_76
    const v1, 0x644f7073

    if-ne v4, v1, :cond_77

    add-int/lit8 v13, v51, -0x8

    sget-object v1, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    array-length v4, v1

    add-int/2addr v4, v13

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    add-int/lit8 v6, v11, 0x8

    invoke-virtual {v2, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    array-length v1, v1

    invoke-virtual {v2, v1, v13, v4}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-static {v4}, Landroidx/media3/container/OpusUtil;->a([B)Ljava/util/ArrayList;

    move-result-object v15

    move/from16 v6, v51

    move-object/from16 v10, v54

    move-object/from16 v12, v55

    goto :goto_40

    :cond_77
    const v1, 0x64664c61

    if-ne v4, v1, :cond_78

    add-int/lit8 v13, v51, -0xc

    add-int/lit8 v1, v51, -0x8

    new-array v1, v1, [B

    const/16 v4, 0x66

    const/16 v35, 0x0

    aput-byte v4, v1, v35

    const/16 v4, 0x4c

    const/16 v16, 0x1

    aput-byte v4, v1, v16

    const/16 v32, 0x2

    aput-byte v27, v1, v32

    const/16 v4, 0x43

    const/16 v20, 0x3

    aput-byte v4, v1, v20

    add-int/lit8 v4, v11, 0xc

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v10, 0x4

    invoke-virtual {v2, v10, v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    :goto_42
    move/from16 v6, v51

    move-object/from16 v10, v54

    move-object/from16 v12, v55

    goto/16 :goto_41

    :cond_78
    const v6, 0x616c6163

    const/16 v20, 0x3

    if-ne v4, v6, :cond_79

    add-int/lit8 v13, v51, -0xc

    new-array v1, v13, [B

    add-int/lit8 v4, v11, 0xc

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    sget-object v4, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v7

    const/16 v8, 0x9

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    const/16 v10, 0x14

    invoke-virtual {v4, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v4

    filled-new-array {v4, v8, v7}, [I

    move-result-object v4

    const/16 v35, 0x0

    aget v7, v4, v35

    const/16 v16, 0x1

    aget v8, v4, v16

    const/16 v32, 0x2

    aget v4, v4, v32

    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v4, v10}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result v4

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    move v6, v8

    move v8, v7

    move v7, v6

    move/from16 v49, v4

    goto :goto_42

    :cond_79
    const v1, 0x69616362

    if-ne v4, v1, :cond_87

    add-int/lit8 v1, v11, 0x9

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->F()I

    move-result v1

    new-array v4, v1, [B

    const/4 v10, 0x0

    invoke-virtual {v2, v10, v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    sget-object v1, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_43
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v13

    if-lez v13, :cond_7a

    if-eqz v10, :cond_7b

    if-nez v12, :cond_7a

    goto :goto_44

    :cond_7a
    move-object/from16 v17, v4

    const/4 v15, 0x6

    goto/16 :goto_4d

    :cond_7b
    :goto_44
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    shr-int/lit8 v15, v13, 0x3

    and-int/lit8 v52, v13, 0x2

    if-eqz v52, :cond_7c

    const/16 v52, 0x1

    goto :goto_45

    :cond_7c
    const/16 v52, 0x0

    :goto_45
    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_7d

    const/4 v13, 0x1

    goto :goto_46

    :cond_7d
    const/4 v13, 0x0

    :goto_46
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->F()I

    move-result v56

    const/4 v6, 0x4

    if-le v15, v6, :cond_7f

    const/16 v6, 0x18

    if-ge v15, v6, :cond_7f

    if-eqz v52, :cond_7f

    :goto_47
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_7e

    goto :goto_47

    :cond_7e
    :goto_48
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_7f

    goto :goto_48

    :cond_7f
    if-eqz v13, :cond_80

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->F()I

    move-result v6

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_80
    iget v6, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int v6, v6, v56

    const/16 v13, 0x1f

    if-ne v15, v13, :cond_82

    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v10

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v13}, [Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "iamf.%03X.%03X"

    invoke-static {v13, v15, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :cond_81
    move-object/from16 v17, v4

    const/4 v15, 0x6

    goto :goto_4c

    :cond_82
    if-nez v15, :cond_81

    :goto_49
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_83

    goto :goto_49

    :cond_83
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x4

    invoke-virtual {v1, v13, v12}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    const-string v15, "mp4a"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_81

    :goto_4a
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v15

    and-int/lit16 v15, v15, 0x80

    if-eqz v15, :cond_84

    goto :goto_4a

    :cond_84
    const/4 v15, 0x2

    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    new-instance v13, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v13}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    invoke-virtual {v13, v1}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    move-object/from16 v17, v4

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    const/16 v15, 0x1f

    if-ne v4, v15, :cond_85

    const/4 v15, 0x6

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    const/16 v63, 0x20

    add-int/lit8 v4, v4, 0x20

    goto :goto_4b

    :cond_85
    const/4 v15, 0x6

    :goto_4b
    const-string v13, ".40."

    invoke-static {v4, v12, v13}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    :goto_4c
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    move-object/from16 v4, v17

    const v6, 0x616c6163

    goto/16 :goto_43

    :goto_4d
    if-eqz v10, :cond_86

    if-eqz v12, :cond_86

    const-string v1, "."

    invoke-static {v10, v1, v12}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_4e

    :cond_86
    const/4 v12, 0x0

    :goto_4e
    invoke-static/range {v17 .. v17}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object v15, v1

    move-object/from16 v52, v12

    goto/16 :goto_42

    :cond_87
    const/4 v15, 0x6

    const v1, 0x70636d43

    if-ne v4, v1, :cond_8c

    add-int/lit8 v1, v11, 0xc

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    const/16 v16, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_88

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4f

    :cond_88
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_4f
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v4

    const v6, 0x6970636d

    if-ne v5, v6, :cond_89

    invoke-static {v4, v1}, Landroidx/media3/common/util/Util;->C(ILjava/nio/ByteOrder;)I

    move-result v1

    const/4 v4, -0x1

    const v10, 0x6670636d

    const/16 v12, 0x20

    goto :goto_51

    :cond_89
    const v10, 0x6670636d

    const/16 v12, 0x20

    if-ne v5, v10, :cond_8a

    if-ne v4, v12, :cond_8a

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    const/4 v1, 0x4

    :goto_50
    const/4 v4, -0x1

    goto :goto_51

    :cond_8a
    move/from16 v1, v49

    goto :goto_50

    :goto_51
    move/from16 v49, v1

    move/from16 v6, v51

    if-eq v1, v4, :cond_8b

    move-object/from16 v12, v55

    move-object/from16 v15, v56

    move-object/from16 v10, v66

    goto/16 :goto_41

    :cond_8b
    :goto_52
    move-object/from16 v10, v54

    move-object/from16 v12, v55

    move-object/from16 v15, v56

    goto/16 :goto_41

    :cond_8c
    const v6, 0x6970636d

    const v10, 0x6670636d

    const/16 v12, 0x20

    goto :goto_54

    :goto_53
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static/range {v54 .. v54}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v7, v1, Landroidx/media3/common/Format$Builder;->F:I

    iput v8, v1, Landroidx/media3/common/Format$Builder;->G:I

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v4, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    :goto_54
    move/from16 v6, v51

    goto :goto_52

    :goto_55
    if-ne v4, v1, :cond_8d

    move v13, v1

    move v1, v11

    move/from16 v6, v51

    move-object/from16 v12, v55

    :goto_56
    const/4 v4, -0x1

    goto :goto_5c

    :cond_8d
    iget v1, v2, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-lt v1, v11, :cond_8e

    const/4 v4, 0x1

    :goto_57
    const/4 v13, 0x0

    goto :goto_58

    :cond_8e
    const/4 v4, 0x0

    goto :goto_57

    :goto_58
    invoke-static {v13, v4}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    :goto_59
    sub-int v4, v1, v11

    move/from16 v6, v51

    if-ge v4, v6, :cond_91

    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    if-lez v4, :cond_8f

    const/4 v10, 0x1

    :goto_5a
    move-object/from16 v12, v55

    goto :goto_5b

    :cond_8f
    const/4 v10, 0x0

    goto :goto_5a

    :goto_5b
    invoke-static {v12, v10}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    const v13, 0x65736473

    if-ne v10, v13, :cond_90

    goto :goto_56

    :cond_90
    add-int/2addr v1, v4

    move/from16 v51, v6

    move-object/from16 v55, v12

    const v6, 0x6970636d

    const v10, 0x6670636d

    const/16 v12, 0x20

    const/4 v13, 0x0

    goto :goto_59

    :cond_91
    move-object/from16 v12, v55

    const v13, 0x65736473

    const/4 v1, -0x1

    goto :goto_56

    :goto_5c
    if-eq v1, v4, :cond_99

    invoke-static {v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v1

    iget-object v10, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->a:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    if-eqz v4, :cond_98

    const-string v13, "audio/vorbis"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_96

    new-instance v13, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v13, v4}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v15, 0x0

    :goto_5d
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v17

    if-lez v17, :cond_92

    move-object/from16 v17, v1

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    move-result v1

    move-object/from16 v51, v2

    const/16 v2, 0xff

    if-ne v1, v2, :cond_93

    add-int/lit16 v15, v15, 0xff

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move-object/from16 v1, v17

    move-object/from16 v2, v51

    goto :goto_5d

    :cond_92
    move-object/from16 v17, v1

    move-object/from16 v51, v2

    :cond_93
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    add-int/2addr v1, v15

    const/4 v2, 0x0

    :goto_5e
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v15

    if-lez v15, :cond_95

    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->j()I

    move-result v15

    move/from16 v55, v5

    const/16 v5, 0xff

    if-ne v15, v5, :cond_94

    add-int/lit16 v2, v2, 0xff

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move/from16 v5, v55

    goto :goto_5e

    :cond_94
    :goto_5f
    const/4 v15, 0x1

    goto :goto_60

    :cond_95
    move/from16 v55, v5

    const/16 v5, 0xff

    goto :goto_5f

    :goto_60
    invoke-virtual {v13}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v16

    add-int v16, v16, v2

    new-array v2, v1, [B

    iget v13, v13, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/4 v5, 0x0

    invoke-static {v4, v13, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v13, v1

    add-int v13, v13, v16

    array-length v1, v4

    sub-int/2addr v1, v13

    new-array v15, v1, [B

    invoke-static {v4, v13, v15, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v15}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    :goto_61
    move v5, v7

    move-object/from16 v13, v17

    goto :goto_64

    :cond_96
    move-object/from16 v17, v1

    move-object/from16 v51, v2

    move/from16 v55, v5

    const/4 v5, 0x0

    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    new-instance v1, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v1, v4}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    invoke-static {v1, v5}, Landroidx/media3/extractor/AacUtil;->b(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object v1

    iget v8, v1, Landroidx/media3/extractor/AacUtil$Config;->a:I

    iget v7, v1, Landroidx/media3/extractor/AacUtil$Config;->b:I

    iget-object v1, v1, Landroidx/media3/extractor/AacUtil$Config;->c:Ljava/lang/String;

    goto :goto_62

    :cond_97
    move-object/from16 v1, v52

    :goto_62
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    move-object/from16 v52, v1

    goto :goto_61

    :cond_98
    move-object/from16 v17, v1

    move-object/from16 v51, v2

    move/from16 v55, v5

    move v5, v7

    move-object/from16 v13, v17

    :goto_63
    move-object/from16 v15, v56

    goto :goto_64

    :cond_99
    move-object/from16 v51, v2

    move/from16 v55, v5

    move v5, v7

    move-object/from16 v13, v47

    move-object/from16 v10, v54

    goto :goto_63

    :goto_64
    move v7, v5

    move-object/from16 v47, v13

    :goto_65
    add-int/2addr v11, v6

    move-object/from16 v64, v0

    move-object v0, v12

    move/from16 v4, v48

    move/from16 v6, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v12, v52

    move/from16 v5, v55

    const/16 v18, 0x0

    goto/16 :goto_39

    :cond_9a
    move-object/from16 v51, v2

    move/from16 v48, v4

    move/from16 v49, v6

    move-object/from16 v54, v10

    move-object/from16 v52, v12

    move-object/from16 v56, v15

    move-object/from16 v0, v64

    const/16 v20, 0x3

    iget-object v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    if-nez v1, :cond_9d

    if-eqz v54, :cond_9d

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static/range {v54 .. v54}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    move-object/from16 v2, v52

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    iput v7, v1, Landroidx/media3/common/Format$Builder;->F:I

    iput v8, v1, Landroidx/media3/common/Format$Builder;->G:I

    move/from16 v6, v49

    iput v6, v1, Landroidx/media3/common/Format$Builder;->H:I

    move-object/from16 v15, v56

    iput-object v15, v1, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    if-eqz v47, :cond_9b

    move-object/from16 v0, v47

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->c:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v2

    iput v2, v1, Landroidx/media3/common/Format$Builder;->h:I

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->d:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->i:I

    goto :goto_66

    :cond_9b
    move-object/from16 v0, v68

    if-eqz v0, :cond_9c

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->a:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v2

    iput v2, v1, Landroidx/media3/common/Format$Builder;->h:I

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->b:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->i:I

    :cond_9c
    :goto_66
    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    :cond_9d
    :goto_67
    move-object/from16 v13, v46

    move-object/from16 v1, v51

    move-object/from16 v0, v53

    const/4 v11, 0x1

    const v12, 0x6d646961

    const/16 v14, 0x8

    const/4 v15, 0x2

    const/16 v17, 0x5

    const/16 v18, 0x0

    goto/16 :goto_1d

    :cond_9e
    move-object/from16 v53, v1

    move-object/from16 v51, v2

    move/from16 v61, v3

    move/from16 v48, v4

    move-object v0, v7

    move/from16 v58, v10

    move-object/from16 v59, v11

    move-object/from16 v37, v12

    move/from16 v60, v14

    move-object/from16 v45, v15

    const/16 v20, 0x3

    move v2, v5

    :goto_68
    iget v5, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->a:I

    iget v7, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->d:I

    move-object/from16 v8, p4

    move-object v6, v0

    move/from16 v4, v48

    move-object/from16 v1, v51

    move-object/from16 v0, v53

    move/from16 v10, v58

    move/from16 v3, v61

    const/4 v11, 0x1

    const v12, 0x6d646961

    const/16 v14, 0x8

    const/4 v15, 0x2

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v29, 0x1f

    const/16 v38, 0x10

    const/16 v39, 0x4

    const/16 v40, -0x1

    invoke-static/range {v1 .. v10}, Landroidx/media3/extractor/mp4/BoxParser;->k(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V

    :goto_69
    add-int v3, v61, v48

    invoke-virtual {v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    add-int/lit8 v10, v58, 0x1

    move-object/from16 v8, p4

    move-object v2, v1

    move/from16 v16, v11

    move/from16 v3, v27

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v30

    move-object/from16 v12, v37

    move-object/from16 v15, v45

    move-object/from16 v11, v59

    move/from16 v14, v60

    const/16 v35, 0x0

    move-object v1, v0

    move-object/from16 v0, p0

    goto/16 :goto_19

    :cond_9f
    move-object v0, v1

    move/from16 v28, v4

    move-object/from16 v36, v7

    move-object/from16 v59, v11

    move-object/from16 v37, v12

    move/from16 v60, v14

    move-object/from16 v45, v15

    move/from16 v11, v16

    const v12, 0x6d646961

    const/16 v14, 0x8

    const/4 v15, 0x2

    if-nez p5, :cond_a6

    const v1, 0x65647473

    move-object/from16 v2, v45

    invoke-virtual {v2, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    if-eqz v1, :cond_a5

    const v3, 0x656c7374

    invoke-virtual {v1, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v1

    if-nez v1, :cond_a0

    move-object/from16 v46, v13

    move-object/from16 v6, v18

    goto :goto_6d

    :cond_a0
    iget-object v1, v1, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v3

    invoke-static {v3}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v3

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v4

    new-array v5, v4, [J

    new-array v6, v4, [J

    const/4 v7, 0x0

    :goto_6a
    if-ge v7, v4, :cond_a4

    if-ne v3, v11, :cond_a1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v19

    goto :goto_6b

    :cond_a1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v19

    :goto_6b
    aput-wide v19, v5, v7

    if-ne v3, v11, :cond_a2

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->u()J

    move-result-wide v19

    move-object/from16 v46, v13

    goto :goto_6c

    :cond_a2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    move-object/from16 v46, v13

    int-to-long v12, v8

    move-wide/from16 v19, v12

    :goto_6c
    aput-wide v19, v6, v7

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v8

    if-ne v8, v11, :cond_a3

    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v46

    const v12, 0x6d646961

    goto :goto_6a

    :cond_a3
    const-string v0, "Unsupported media rate."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v18

    :cond_a4
    move-object/from16 v46, v13

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    :goto_6d
    if-eqz v6, :cond_a7

    iget-object v1, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    iget-object v3, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, [J

    move-object/from16 v33, v1

    move-object/from16 v34, v6

    goto :goto_6f

    :cond_a5
    move-object/from16 v46, v13

    goto :goto_6e

    :cond_a6
    move-object/from16 v46, v13

    move-object/from16 v2, v45

    :cond_a7
    :goto_6e
    move-object/from16 v33, v18

    move-object/from16 v34, v33

    :goto_6f
    iget-object v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    if-nez v1, :cond_a8

    move-object/from16 v0, p7

    move-object/from16 v6, v18

    const/16 v35, 0x0

    goto :goto_73

    :cond_a8
    move-object/from16 v13, v46

    iget v3, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->c:I

    if-eqz v3, :cond_aa

    new-instance v1, Landroidx/media3/container/Mp4AlternateGroupData;

    invoke-direct {v1, v3}, Landroidx/media3/container/Mp4AlternateGroupData;-><init>(I)V

    iget-object v3, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    invoke-virtual {v3}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    if-eqz v4, :cond_a9

    new-array v5, v11, [Landroidx/media3/common/Metadata$Entry;

    const/16 v35, 0x0

    aput-object v1, v5, v35

    invoke-virtual {v4, v5}, Landroidx/media3/common/Metadata;->a([Landroidx/media3/common/Metadata$Entry;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_70

    :cond_a9
    const/16 v35, 0x0

    new-instance v4, Landroidx/media3/common/Metadata;

    new-array v5, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v1, v5, v35

    invoke-direct {v4, v5}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    move-object v1, v4

    :goto_70
    iput-object v1, v3, Landroidx/media3/common/Format$Builder;->k:Landroidx/media3/common/Metadata;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v3}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    :goto_71
    move-object/from16 v29, v1

    goto :goto_72

    :cond_aa
    const/16 v35, 0x0

    goto :goto_71

    :goto_72
    new-instance v18, Landroidx/media3/extractor/mp4/Track;

    iget v1, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->d:I

    iget v3, v9, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    iget v4, v13, Landroidx/media3/extractor/mp4/BoxParser$TkhdData;->a:I

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->a:J

    iget-wide v7, v0, Landroidx/media3/extractor/mp4/BoxParser$MdhdData;->b:J

    move/from16 v30, v1

    move/from16 v32, v3

    move/from16 v19, v4

    move-wide/from16 v21, v5

    move/from16 v20, v28

    move-object/from16 v31, v36

    move-wide/from16 v27, v7

    invoke-direct/range {v18 .. v34}, Landroidx/media3/extractor/mp4/Track;-><init>(IIJJJJLandroidx/media3/common/Format;I[Landroidx/media3/extractor/mp4/TrackEncryptionBox;I[J[J)V

    move-object/from16 v0, p7

    goto/16 :goto_4

    :goto_73
    invoke-interface {v0, v6}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/Track;

    if-nez v1, :cond_ab

    move-object/from16 v3, p1

    move/from16 v4, p8

    move-object/from16 v2, v37

    goto :goto_74

    :cond_ab
    const v10, 0x6d646961

    invoke-virtual {v2, v10}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x6d696e66

    invoke-virtual {v2, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, 0x7374626c

    invoke-virtual {v2, v3}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v3, p1

    move/from16 v4, p8

    invoke-static {v1, v2, v3, v4}, Landroidx/media3/extractor/mp4/BoxParser;->h(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;Z)Landroidx/media3/extractor/mp4/TrackSampleTable;

    move-result-object v1

    move-object/from16 v2, v37

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_74
    add-int/lit8 v14, v60, 0x1

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object v12, v2

    move-object/from16 v11, v59

    goto/16 :goto_0

    :cond_ac
    move-object v2, v12

    return-object v2
.end method

.method public static j(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-instance v2, Landroidx/media3/common/Metadata;

    const/4 v3, 0x0

    new-array v4, v3, [Landroidx/media3/common/Metadata$Entry;

    invoke-direct {v2, v4}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v4

    if-lt v4, v0, :cond_3e

    iget v4, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v6

    const v7, 0x6d657461

    const/4 v8, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v6, v7, :cond_2e

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    add-int v6, v4, v5

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    :goto_1
    iget v7, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v7, v6, :cond_2b

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v13

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v14

    const v15, 0x696c7374

    if-ne v14, v15, :cond_2d

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    add-int/2addr v7, v13

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iget v13, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v13, v7, :cond_2a

    const-string v14, "Skipped unknown metadata entry: "

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v13

    shr-int/lit8 v0, v13, 0x18

    and-int/lit16 v0, v0, 0xff

    const/16 v10, 0xa9

    const-string v9, "TCON"

    if-eq v0, v10, :cond_0

    const/16 v10, 0xfd

    if-ne v0, v10, :cond_1

    :cond_0
    const/4 v8, -0x1

    goto/16 :goto_8

    :cond_1
    const v0, 0x676e7265

    if-ne v13, v0, :cond_3

    :try_start_0
    invoke-static {v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->c(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result v0

    sub-int/2addr v0, v11

    invoke-static {v0}, Landroidx/media3/extractor/metadata/id3/Id3Util;->a(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v10, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v10, v9, v12, v0}, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_2
    const-string v0, "Failed to parse standard genre code"

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v12

    :goto_3
    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v8, -0x1

    goto/16 :goto_c

    :cond_3
    const v0, 0x6469736b

    if-ne v13, v0, :cond_4

    :try_start_1
    const-string v0, "TPOS"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->b(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_4
    const v0, 0x74726b6e

    if-ne v13, v0, :cond_5

    const-string v0, "TRCK"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->b(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :cond_5
    const v0, 0x746d706f

    if-ne v13, v0, :cond_6

    const-string v0, "TBPM"

    invoke-static {v13, v0, v1, v11, v3}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v10

    goto :goto_3

    :cond_6
    const v0, 0x6370696c

    if-ne v13, v0, :cond_7

    const-string v0, "TCMP"

    invoke-static {v13, v0, v1, v11, v11}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v10

    goto :goto_3

    :cond_7
    const v0, 0x636f7672

    if-ne v13, v0, :cond_8

    invoke-static {v1}, Landroidx/media3/extractor/mp4/MetadataUtil;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/id3/ApicFrame;

    move-result-object v10

    goto :goto_3

    :cond_8
    const v0, 0x61415254

    if-ne v13, v0, :cond_9

    const-string v0, "TPE2"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :cond_9
    const v0, 0x736f6e6d

    if-ne v13, v0, :cond_a

    const-string v0, "TSOT"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :cond_a
    const v0, 0x736f616c

    if-ne v13, v0, :cond_b

    const-string v0, "TSOA"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :cond_b
    const v0, 0x736f6172

    if-ne v13, v0, :cond_c

    const-string v0, "TSOP"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :cond_c
    const v0, 0x736f6161

    if-ne v13, v0, :cond_d

    const-string v0, "TSO2"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_3

    :cond_d
    const v0, 0x736f636f

    if-ne v13, v0, :cond_e

    const-string v0, "TSOC"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_3

    :cond_e
    const v0, 0x72746e67

    if-ne v13, v0, :cond_f

    const-string v0, "ITUNESADVISORY"

    invoke-static {v13, v0, v1, v3, v3}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v10

    goto/16 :goto_3

    :cond_f
    const v0, 0x70676170

    if-ne v13, v0, :cond_10

    const-string v0, "ITUNESGAPLESS"

    invoke-static {v13, v0, v1, v3, v11}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v10

    goto/16 :goto_3

    :cond_10
    const v0, 0x736f736e

    if-ne v13, v0, :cond_11

    const-string v0, "TVSHOWSORT"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_3

    :cond_11
    const v0, 0x74767368

    if-ne v13, v0, :cond_12

    const-string v0, "TVSHOW"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_3

    :cond_12
    const v0, 0x2d2d2d2d

    if-ne v13, v0, :cond_19

    move-object v0, v12

    move-object v9, v0

    const/4 v10, -0x1

    const/4 v13, -0x1

    :goto_4
    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v14, v15, :cond_16

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v17

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v12

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const v8, 0x6d65616e

    if-ne v12, v8, :cond_13

    add-int/lit8 v0, v17, -0xc

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->w(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_13
    const v8, 0x6e616d65

    if-ne v12, v8, :cond_14

    add-int/lit8 v8, v17, -0xc

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->w(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_14
    const v8, 0x64617461

    if-ne v12, v8, :cond_15

    move v10, v14

    move/from16 v13, v17

    :cond_15
    add-int/lit8 v8, v17, -0xc

    invoke-virtual {v1, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :goto_5
    const/4 v8, 0x4

    const/4 v12, 0x0

    goto :goto_4

    :cond_16
    if-eqz v0, :cond_18

    if-eqz v9, :cond_18

    const/4 v8, -0x1

    if-ne v10, v8, :cond_17

    goto :goto_6

    :cond_17
    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/16 v10, 0x10

    invoke-virtual {v1, v10}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    add-int/lit8 v13, v13, -0x10

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->w(I)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {v12, v0, v9, v10}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v12

    goto :goto_7

    :cond_18
    const/4 v8, -0x1

    :goto_6
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_c

    :cond_19
    const/4 v8, -0x1

    goto/16 :goto_9

    :goto_8
    const v0, 0xffffff

    and-int/2addr v0, v13

    const v10, 0x636d74

    if-ne v0, v10, :cond_1b

    :try_start_2
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    const v10, 0x64617461

    if-ne v9, v10, :cond_1a

    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/16 v16, 0x10

    add-int/lit8 v0, v0, -0x10

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->w(I)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string v10, "und"

    invoke-direct {v9, v10, v0, v0}, Landroidx/media3/extractor/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v9

    goto :goto_7

    :cond_1a
    invoke-static {v13}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v9, "Failed to parse comment attribute: "

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_6

    :cond_1b
    const v10, 0x6e616d

    if-eq v0, v10, :cond_28

    const v10, 0x74726b

    if-ne v0, v10, :cond_1c

    goto/16 :goto_b

    :cond_1c
    const v10, 0x636f6d

    if-eq v0, v10, :cond_27

    const v10, 0x777274

    if-ne v0, v10, :cond_1d

    goto/16 :goto_a

    :cond_1d
    const v10, 0x646179

    if-ne v0, v10, :cond_1e

    const-string v0, "TDRC"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_7

    :cond_1e
    const v10, 0x415254

    if-ne v0, v10, :cond_1f

    const-string v0, "TPE1"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_7

    :cond_1f
    const v10, 0x746f6f

    if-ne v0, v10, :cond_20

    const-string v0, "TSSE"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto :goto_7

    :cond_20
    const v10, 0x616c62

    if-ne v0, v10, :cond_21

    const-string v0, "TALB"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_7

    :cond_21
    const v10, 0x6c7972

    if-ne v0, v10, :cond_22

    const-string v0, "USLT"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_7

    :cond_22
    const v10, 0x67656e

    if-ne v0, v10, :cond_23

    invoke-static {v13, v1, v9}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_7

    :cond_23
    const v9, 0x677270

    if-ne v0, v9, :cond_24

    const-string v0, "TIT1"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_7

    :cond_24
    const v9, 0x6d766e

    if-ne v0, v9, :cond_25

    const-string v0, "MVNM"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_7

    :cond_25
    const v9, 0x6d7669

    if-ne v0, v9, :cond_26

    const-string v0, "MVIN"

    invoke-static {v13, v0, v1, v11, v3}, Landroidx/media3/extractor/mp4/MetadataUtil;->d(ILjava/lang/String;Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/metadata/id3/Id3Frame;

    move-result-object v10

    goto/16 :goto_7

    :cond_26
    :goto_9
    invoke-static {v13}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v10, 0x0

    goto :goto_c

    :cond_27
    :goto_a
    :try_start_3
    const-string v0, "TCOM"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10

    goto/16 :goto_7

    :cond_28
    :goto_b
    const-string v0, "TIT2"

    invoke-static {v13, v1, v0}, Landroidx/media3/extractor/mp4/MetadataUtil;->e(ILandroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;)Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_7

    :goto_c
    if-eqz v10, :cond_29

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    const/16 v0, 0x8

    const/4 v8, 0x4

    const/4 v12, 0x0

    goto/16 :goto_2

    :goto_d
    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    throw v0

    :cond_2a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_2b
    const/4 v12, 0x0

    goto :goto_e

    :cond_2c
    new-instance v12, Landroidx/media3/common/Metadata;

    invoke-direct {v12, v6}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    goto :goto_e

    :cond_2d
    const/4 v8, -0x1

    add-int/2addr v7, v13

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/16 v0, 0x8

    const/4 v8, 0x4

    const/4 v12, 0x0

    goto/16 :goto_1

    :goto_e
    invoke-virtual {v2, v12}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    move-object v2, v0

    const/16 v14, 0x8

    goto/16 :goto_19

    :cond_2e
    const/4 v8, -0x1

    const v0, 0x736d7461

    const/4 v7, 0x2

    if-ne v6, v0, :cond_3c

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    add-int v0, v4, v5

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :goto_f
    iget v9, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v9, v0, :cond_3b

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v12

    const v13, 0x73617574

    if-ne v12, v13, :cond_3a

    const/16 v12, 0x10

    if-ge v10, v12, :cond_2f

    const/4 v12, 0x0

    const/16 v14, 0x8

    goto/16 :goto_16

    :cond_2f
    const/4 v13, 0x4

    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move v10, v3

    move v9, v8

    move v8, v10

    :goto_10
    if-ge v8, v7, :cond_32

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    if-nez v12, :cond_30

    move v9, v13

    goto :goto_11

    :cond_30
    if-ne v12, v11, :cond_31

    move v10, v13

    :cond_31
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_32
    const v7, -0x7fffffff

    if-ne v9, v6, :cond_33

    const/16 v0, 0xf0

    :goto_12
    const/16 v14, 0x8

    goto :goto_14

    :cond_33
    const/16 v8, 0xd

    if-ne v9, v8, :cond_34

    const/16 v0, 0x78

    goto :goto_12

    :cond_34
    const/16 v8, 0x15

    if-eq v9, v8, :cond_35

    move v0, v7

    goto :goto_12

    :cond_35
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    const/16 v14, 0x8

    if-lt v8, v14, :cond_38

    iget v8, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int/2addr v8, v14

    if-le v8, v0, :cond_36

    goto :goto_13

    :cond_36
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v8

    if-lt v0, v6, :cond_38

    const v0, 0x73726672

    if-eq v8, v0, :cond_37

    goto :goto_13

    :cond_37
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->B()I

    move-result v0

    goto :goto_14

    :cond_38
    :goto_13
    move v0, v7

    :goto_14
    if-ne v0, v7, :cond_39

    :goto_15
    const/4 v12, 0x0

    goto :goto_16

    :cond_39
    new-instance v12, Landroidx/media3/common/Metadata;

    new-instance v6, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    int-to-float v0, v0

    invoke-direct {v6, v0, v10}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(FI)V

    new-array v0, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v6, v0, v3

    invoke-direct {v12, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    goto :goto_16

    :cond_3a
    const/16 v12, 0x10

    const/4 v13, 0x4

    const/16 v14, 0x8

    add-int/2addr v9, v10

    invoke-virtual {v1, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    goto/16 :goto_f

    :cond_3b
    const/16 v14, 0x8

    goto :goto_15

    :goto_16
    invoke-virtual {v2, v12}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    :goto_17
    move-object v2, v0

    goto :goto_19

    :cond_3c
    const/16 v14, 0x8

    const v0, -0x56878686

    if-ne v6, v0, :cond_3d

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v0

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x2b

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/16 v7, 0x2d

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :try_start_4
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v6, Landroidx/media3/common/Metadata;

    new-instance v8, Landroidx/media3/container/Mp4LocationData;

    invoke-direct {v8, v7, v0}, Landroidx/media3/container/Mp4LocationData;-><init>(FF)V

    new-array v0, v11, [Landroidx/media3/common/Metadata$Entry;

    aput-object v8, v0, v3

    invoke-direct {v6, v0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v12, v6

    goto :goto_18

    :catch_0
    const/4 v12, 0x0

    :goto_18
    invoke-virtual {v2, v12}, Landroidx/media3/common/Metadata;->b(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v0

    goto :goto_17

    :cond_3d
    :goto_19
    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    move v0, v14

    goto/16 :goto_0

    :cond_3e
    return-object v2
.end method

.method public static k(Landroidx/media3/common/util/ParsableByteArray;IIIILjava/lang/String;ILandroidx/media3/common/DrmInitData;Landroidx/media3/extractor/mp4/BoxParser$StsdData;I)V
    .locals 49

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    add-int/lit8 v5, v1, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v7

    const/16 v8, 0x32

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget v8, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const v9, 0x656e6376

    move/from16 v11, p1

    if-ne v11, v9, :cond_2

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/mp4/BoxParser;->g(Landroidx/media3/common/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-object v12, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v12, v12, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroidx/media3/common/DrmInitData;->a(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v3

    :goto_0
    iget-object v12, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->a:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    aput-object v9, v12, p9

    :cond_1
    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :cond_2
    const v9, 0x6d317620

    const-string v12, "video/3gpp"

    if-ne v11, v9, :cond_3

    const-string v9, "video/mpeg"

    goto :goto_1

    :cond_3
    const v9, 0x48323633

    if-ne v11, v9, :cond_4

    move-object v9, v12

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_1
    const/high16 v15, 0x3f800000    # 1.0f

    const/16 p1, 0x8

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x8

    const/16 v29, 0x8

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    :goto_2
    sub-int v13, v8, v1

    if-ge v13, v2, :cond_7b

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget v13, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v14

    if-nez v14, :cond_5

    iget v10, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int/2addr v10, v1

    if-ne v10, v2, :cond_5

    move/from16 v47, v6

    move/from16 v46, v7

    move/from16 v45, v15

    move-object/from16 v10, v17

    move/from16 v8, v25

    move/from16 v37, v26

    move/from16 v13, v27

    move/from16 v39, v28

    move/from16 v40, v29

    move-object/from16 v26, v3

    move-object/from16 v27, v9

    move/from16 v3, v20

    goto/16 :goto_56

    :cond_5
    if-lez v14, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    :goto_3
    const-string v1, "childAtomSize must be positive"

    invoke-static {v1, v10}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    const v2, 0x61766343

    if-ne v10, v2, :cond_9

    if-nez v9, :cond_7

    const/4 v1, 0x1

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    invoke-static {v2, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object v1

    iget-object v5, v1, Landroidx/media3/extractor/AvcConfig;->a:Ljava/util/ArrayList;

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->b:I

    iput v2, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    if-nez v33, :cond_8

    iget v15, v1, Landroidx/media3/extractor/AvcConfig;->k:F

    :cond_8
    iget-object v2, v1, Landroidx/media3/extractor/AvcConfig;->l:Ljava/lang/String;

    iget v9, v1, Landroidx/media3/extractor/AvcConfig;->j:I

    iget v10, v1, Landroidx/media3/extractor/AvcConfig;->g:I

    iget v13, v1, Landroidx/media3/extractor/AvcConfig;->h:I

    move-object/from16 v18, v2

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->i:I

    move/from16 v21, v2

    iget v2, v1, Landroidx/media3/extractor/AvcConfig;->e:I

    iget v1, v1, Landroidx/media3/extractor/AvcConfig;->f:I

    const-string v25, "video/avc"

    move/from16 v29, v1

    move/from16 v28, v2

    move-object/from16 v26, v3

    move/from16 v47, v6

    move/from16 v46, v7

    move/from16 v35, v8

    move/from16 v43, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v45, v15

    move/from16 v38, v21

    move-object/from16 v27, v25

    const/4 v6, -0x1

    move/from16 v15, p1

    move/from16 v21, v9

    move/from16 v25, v10

    :goto_6
    const/4 v9, 0x0

    goto/16 :goto_55

    :cond_9
    const v2, 0x68766343

    move/from16 v35, v8

    const-string v8, "video/hevc"

    if-ne v10, v2, :cond_d

    if-nez v9, :cond_a

    const/4 v1, 0x1

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_7

    :goto_8
    invoke-static {v2, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v5

    iget-object v1, v5, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    iget v2, v5, Landroidx/media3/extractor/HevcConfig;->b:I

    iput v2, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    if-nez v33, :cond_b

    iget v15, v5, Landroidx/media3/extractor/HevcConfig;->l:F

    :cond_b
    iget v2, v5, Landroidx/media3/extractor/HevcConfig;->m:I

    iget v9, v5, Landroidx/media3/extractor/HevcConfig;->c:I

    iget-object v10, v5, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    iget v13, v5, Landroidx/media3/extractor/HevcConfig;->k:I

    move-object/from16 v18, v1

    const/4 v1, -0x1

    if-eq v13, v1, :cond_c

    move/from16 v20, v13

    :cond_c
    iget v1, v5, Landroidx/media3/extractor/HevcConfig;->d:I

    iget v13, v5, Landroidx/media3/extractor/HevcConfig;->e:I

    move/from16 v21, v1

    iget v1, v5, Landroidx/media3/extractor/HevcConfig;->h:I

    move/from16 v22, v1

    iget v1, v5, Landroidx/media3/extractor/HevcConfig;->i:I

    move/from16 v23, v1

    iget v1, v5, Landroidx/media3/extractor/HevcConfig;->j:I

    move/from16 v24, v1

    iget v1, v5, Landroidx/media3/extractor/HevcConfig;->f:I

    move/from16 v25, v1

    iget v1, v5, Landroidx/media3/extractor/HevcConfig;->g:I

    iget-object v5, v5, Landroidx/media3/extractor/HevcConfig;->o:Landroidx/media3/container/NalUnitUtil$H265VpsData;

    move/from16 v29, v1

    move-object/from16 v26, v3

    move-object/from16 v32, v5

    move/from16 v47, v6

    move/from16 v46, v7

    move-object/from16 v27, v8

    move/from16 v43, v11

    move-object/from16 v36, v12

    move/from16 v45, v15

    move-object/from16 v5, v18

    move/from16 v37, v23

    move/from16 v38, v24

    move/from16 v28, v25

    const/4 v6, -0x1

    move/from16 v15, p1

    move-object/from16 v18, v10

    move/from16 v24, v13

    move/from16 v23, v21

    move/from16 v25, v22

    move/from16 v21, v2

    move/from16 v22, v9

    goto :goto_6

    :cond_d
    const v2, 0x6c687643

    move-object/from16 v36, v12

    const/4 v12, 0x2

    if-ne v10, v2, :cond_19

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "lhvC must follow hvcC atom"

    invoke-static {v2, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    move-object/from16 v2, v32

    if-eqz v2, :cond_e

    iget-object v1, v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lt v1, v12, :cond_e

    const/4 v1, 0x1

    goto :goto_9

    :cond_e
    const/4 v1, 0x0

    :goto_9
    const-string v8, "must have at least two layers"

    invoke-static {v8, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Landroidx/media3/extractor/HevcConfig;->a(Landroidx/media3/common/util/ParsableByteArray;ZLandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/extractor/HevcConfig;

    move-result-object v8

    iget v1, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    iget v9, v8, Landroidx/media3/extractor/HevcConfig;->b:I

    if-ne v1, v9, :cond_f

    const/4 v1, 0x1

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :goto_a
    const-string v9, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    invoke-static {v9, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->h:I

    const/4 v9, -0x1

    move/from16 v10, v25

    if-eq v1, v9, :cond_11

    if-ne v10, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_b

    :cond_10
    const/4 v1, 0x0

    :goto_b
    const-string v12, "colorSpace must be the same for both views"

    invoke-static {v12, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    :cond_11
    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->i:I

    move/from16 v12, v26

    if-eq v1, v9, :cond_13

    if-ne v12, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    :goto_c
    const-string v13, "colorRange must be the same for both views"

    invoke-static {v13, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    :cond_13
    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->j:I

    if-eq v1, v9, :cond_15

    move/from16 v9, v27

    if-ne v9, v1, :cond_14

    const/4 v1, 0x1

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    :goto_d
    const-string v13, "colorTransfer must be the same for both views"

    invoke-static {v13, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_15
    move/from16 v9, v27

    :goto_e
    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->f:I

    move/from16 v13, v28

    if-ne v13, v1, :cond_16

    const/4 v1, 0x1

    :goto_f
    move/from16 v18, v9

    goto :goto_10

    :cond_16
    const/4 v1, 0x0

    goto :goto_f

    :goto_10
    const-string v9, "bitdepthLuma must be the same for both views"

    invoke-static {v9, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    iget v1, v8, Landroidx/media3/extractor/HevcConfig;->g:I

    move/from16 v9, v29

    if-ne v9, v1, :cond_17

    const/4 v1, 0x1

    :goto_11
    move/from16 v25, v9

    goto :goto_12

    :cond_17
    const/4 v1, 0x0

    goto :goto_11

    :goto_12
    const-string v9, "bitdepthChroma must be the same for both views"

    invoke-static {v9, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    if-eqz v5, :cond_18

    sget-object v1, Lcom/google/common/collect/ImmutableList;->c:Lcom/google/common/collect/UnmodifiableListIterator;

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    check-cast v5, Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    iget-object v5, v8, Landroidx/media3/extractor/HevcConfig;->a:Ljava/util/List;

    check-cast v5, Ljava/util/List;

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    goto :goto_13

    :cond_18
    const-string v1, "initializationData must be already set from hvcC atom"

    const/4 v9, 0x0

    invoke-static {v1, v9}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    :goto_13
    iget-object v1, v8, Landroidx/media3/extractor/HevcConfig;->n:Ljava/lang/String;

    const-string v8, "video/mv-hevc"

    move-object/from16 v32, v2

    move-object/from16 v26, v3

    move/from16 v47, v6

    move/from16 v46, v7

    move-object/from16 v27, v8

    move/from16 v43, v11

    move/from16 v37, v12

    move/from16 v28, v13

    move/from16 v45, v15

    move/from16 v38, v18

    move/from16 v29, v25

    const/4 v6, -0x1

    const/4 v9, 0x0

    move/from16 v15, p1

    move-object/from16 v18, v1

    move/from16 v25, v10

    goto/16 :goto_55

    :cond_19
    move/from16 v8, v25

    move/from16 v37, v26

    move/from16 v38, v27

    move/from16 v39, v28

    move/from16 v40, v29

    move-object/from16 v2, v32

    const/16 v27, 0x7f

    const/16 v32, 0x5

    const/16 v41, 0x7

    const/16 v42, 0x3

    const v12, 0x76766343

    const/16 v44, 0x4

    if-ne v10, v12, :cond_27

    if-nez v9, :cond_1a

    const/4 v1, 0x1

    :goto_14
    const/4 v5, 0x0

    goto :goto_15

    :cond_1a
    const/4 v1, 0x0

    goto :goto_14

    :goto_15
    invoke-static {v5, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    shr-int/lit8 v5, v1, 0x1

    and-int/lit8 v5, v5, 0x3

    const/4 v9, 0x1

    and-int/2addr v1, v9

    if-eqz v1, :cond_1b

    move v1, v9

    goto :goto_16

    :cond_1b
    const/4 v1, 0x0

    :goto_16
    add-int/2addr v5, v9

    const-string v10, "L"

    if-eqz v1, :cond_1f

    :try_start_1
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v9

    shr-int/lit8 v9, v9, 0x5

    and-int/lit8 v9, v9, 0x7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    and-int/lit8 v12, v12, 0x3f

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    shr-int/lit8 v18, v13, 0x1

    and-int/lit8 v18, v18, 0x7f

    const/16 v34, 0x1

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1c

    const-string v10, "H"

    :cond_1c
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v13

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v12, 0x1

    if-le v1, v12, :cond_1e

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v21

    move/from16 v34, v12

    const/4 v12, 0x0

    :goto_17
    move/from16 v25, v1

    add-int/lit8 v1, v25, -0x1

    if-ge v12, v1, :cond_1e

    rsub-int/lit8 v1, v12, 0x7

    shr-int v1, v21, v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_1d
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v25

    const/16 v34, 0x1

    goto :goto_17

    :cond_1e
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move/from16 v1, v18

    goto :goto_18

    :cond_1f
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_18
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    move/from16 v18, v9

    iget v9, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    move-object/from16 v26, v3

    move/from16 v45, v15

    const/4 v3, 0x0

    const/4 v15, 0x0

    :goto_19
    if-ge v3, v12, :cond_22

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v21

    move/from16 v25, v3

    and-int/lit8 v3, v21, 0x1f

    move/from16 v46, v7

    const/16 v7, 0xd

    if-eq v3, v7, :cond_20

    const/16 v7, 0xc

    if-eq v3, v7, :cond_20

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v3

    goto :goto_1a

    :cond_20
    const/4 v3, 0x1

    :goto_1a
    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v3, :cond_21

    move/from16 v21, v3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v3

    add-int/lit8 v27, v3, 0x4

    add-int v15, v27, v15

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v3, v21

    goto :goto_1b

    :cond_21
    add-int/lit8 v3, v25, 0x1

    move/from16 v7, v46

    goto :goto_19

    :cond_22
    move/from16 v46, v7

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-array v3, v15, [B

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_1c
    if-ge v7, v12, :cond_25

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v15

    and-int/lit8 v15, v15, 0x1f

    move/from16 v21, v7

    const/16 v7, 0xd

    if-eq v15, v7, :cond_23

    const/16 v7, 0xc

    if-eq v15, v7, :cond_23

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v7

    goto :goto_1d

    :cond_23
    const/4 v7, 0x1

    :goto_1d
    move v15, v9

    const/4 v9, 0x0

    :goto_1e
    if-ge v9, v7, :cond_24

    move/from16 v25, v7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v7

    move/from16 v27, v9

    sget-object v9, Landroidx/media3/container/NalUnitUtil;->a:[B

    move/from16 v47, v6

    move/from16 v29, v12

    move/from16 v12, v44

    const/4 v6, 0x0

    invoke-static {v9, v6, v3, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x4

    invoke-virtual {v0, v15, v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    add-int/2addr v15, v7

    add-int/lit8 v9, v27, 0x1

    move/from16 v7, v25

    move/from16 v12, v29

    move/from16 v6, v47

    const/16 v44, 0x4

    goto :goto_1e

    :cond_24
    move/from16 v47, v6

    move/from16 v29, v12

    add-int/lit8 v7, v21, 0x1

    move v9, v15

    const/16 v44, 0x4

    goto :goto_1c

    :cond_25
    move/from16 v47, v6

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vvc1."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v28, v18, 0x8

    iput v5, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->c:I

    const-string v5, "video/vvc"

    move/from16 v15, p1

    move-object/from16 v18, v1

    move-object/from16 v32, v2

    move-object/from16 v27, v5

    move/from16 v25, v8

    move/from16 v43, v11

    move/from16 v29, v28

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/16 v21, 0x10

    move-object v5, v3

    goto/16 :goto_55

    :cond_26
    :try_start_2
    const-string v0, "Unsupported VVC version"

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing VVC configuration"

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_27
    move-object/from16 v26, v3

    move/from16 v47, v6

    move/from16 v46, v7

    move/from16 v45, v15

    const v3, 0x76657875

    if-ne v10, v3, :cond_37

    add-int/lit8 v3, v13, 0x8

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget v3, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/4 v6, 0x0

    :goto_1f
    sub-int v7, v3, v13

    if-ge v7, v14, :cond_30

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    if-lez v7, :cond_28

    const/4 v10, 0x1

    goto :goto_20

    :cond_28
    const/4 v10, 0x0

    :goto_20
    invoke-static {v1, v10}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    const v12, 0x65796573

    if-ne v10, v12, :cond_2f

    add-int/lit8 v6, v3, 0x8

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget v6, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    :goto_21
    sub-int v10, v6, v3

    if-ge v10, v7, :cond_2e

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    if-lez v10, :cond_29

    const/4 v12, 0x1

    goto :goto_22

    :cond_29
    const/4 v12, 0x0

    :goto_22
    invoke-static {v1, v12}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v12

    const v15, 0x73747269

    if-ne v12, v15, :cond_2d

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    new-instance v10, Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    new-instance v12, Landroidx/media3/extractor/mp4/BoxParser$StriData;

    and-int/lit8 v15, v6, 0x1

    move-object/from16 v48, v1

    const/4 v1, 0x1

    if-ne v15, v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_23

    :cond_2a
    const/4 v1, 0x0

    :goto_23
    and-int/lit8 v15, v6, 0x2

    move/from16 v27, v3

    const/4 v3, 0x2

    if-ne v15, v3, :cond_2b

    const/4 v3, 0x1

    goto :goto_24

    :cond_2b
    const/4 v3, 0x0

    :goto_24
    and-int/lit8 v6, v6, 0x8

    move/from16 v15, p1

    if-ne v6, v15, :cond_2c

    const/4 v6, 0x1

    goto :goto_25

    :cond_2c
    const/4 v6, 0x0

    :goto_25
    invoke-direct {v12, v1, v3, v6}, Landroidx/media3/extractor/mp4/BoxParser$StriData;-><init>(ZZZ)V

    invoke-direct {v10, v12}, Landroidx/media3/extractor/mp4/BoxParser$EyesData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$StriData;)V

    goto :goto_26

    :cond_2d
    move-object/from16 v48, v1

    move/from16 v27, v3

    add-int/2addr v6, v10

    const/16 p1, 0x8

    goto :goto_21

    :cond_2e
    move-object/from16 v48, v1

    move/from16 v27, v3

    const/4 v10, 0x0

    :goto_26
    move-object v6, v10

    goto :goto_27

    :cond_2f
    move-object/from16 v48, v1

    move/from16 v27, v3

    :goto_27
    add-int v3, v27, v7

    move-object/from16 v1, v48

    const/16 p1, 0x8

    goto/16 :goto_1f

    :cond_30
    if-nez v6, :cond_31

    const/4 v1, 0x0

    goto :goto_28

    :cond_31
    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$VexuData;

    invoke-direct {v1, v6}, Landroidx/media3/extractor/mp4/BoxParser$VexuData;-><init>(Landroidx/media3/extractor/mp4/BoxParser$EyesData;)V

    :goto_28
    if-eqz v1, :cond_33

    iget-object v1, v1, Landroidx/media3/extractor/mp4/BoxParser$VexuData;->a:Landroidx/media3/extractor/mp4/BoxParser$EyesData;

    if-eqz v1, :cond_33

    iget-object v1, v1, Landroidx/media3/extractor/mp4/BoxParser$EyesData;->a:Landroidx/media3/extractor/mp4/BoxParser$StriData;

    if-eqz v2, :cond_34

    iget-object v3, v2, Landroidx/media3/container/NalUnitUtil$H265VpsData;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_34

    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->a:Z

    if-eqz v3, :cond_32

    iget-boolean v3, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->b:Z

    if-eqz v3, :cond_32

    const/4 v3, 0x1

    goto :goto_29

    :cond_32
    const/4 v3, 0x0

    :goto_29
    const-string v6, "both eye views must be marked as available"

    invoke-static {v6, v3}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    iget-boolean v1, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->c:Z

    const/16 v34, 0x1

    xor-int/lit8 v1, v1, 0x1

    const-string v3, "for MV-HEVC, eye_views_reversed must be set to false"

    invoke-static {v3, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    :cond_33
    move/from16 v3, v20

    goto :goto_2a

    :cond_34
    move/from16 v3, v20

    const/4 v6, -0x1

    if-ne v3, v6, :cond_36

    iget-boolean v1, v1, Landroidx/media3/extractor/mp4/BoxParser$StriData;->c:Z

    if-eqz v1, :cond_35

    move/from16 v20, v32

    goto :goto_2b

    :cond_35
    const/16 v20, 0x4

    goto :goto_2b

    :cond_36
    :goto_2a
    move/from16 v20, v3

    :goto_2b
    move-object/from16 v32, v2

    :goto_2c
    move/from16 v25, v8

    move-object/from16 v27, v9

    move/from16 v43, v11

    move/from16 v28, v39

    move/from16 v29, v40

    :goto_2d
    const/4 v6, -0x1

    const/4 v9, 0x0

    const/16 v15, 0x8

    goto/16 :goto_55

    :cond_37
    move/from16 v3, v20

    const v1, 0x64766343

    if-eq v10, v1, :cond_38

    const v1, 0x64767643

    if-eq v10, v1, :cond_38

    const v1, 0x64767743

    if-ne v10, v1, :cond_39

    :cond_38
    move-object/from16 v20, v2

    move-object/from16 v27, v9

    move/from16 v43, v11

    move/from16 v13, v38

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/16 v15, 0x8

    goto/16 :goto_54

    :cond_39
    const v1, 0x76706343

    const/16 v6, 0xb

    const/16 v7, 0xa

    if-ne v10, v1, :cond_3f

    if-nez v9, :cond_3a

    const/4 v1, 0x1

    :goto_2e
    const/4 v8, 0x0

    goto :goto_2f

    :cond_3a
    const/4 v1, 0x0

    goto :goto_2e

    :goto_2f
    invoke-static {v8, v1}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    const v1, 0x76703038

    const-string v8, "video/x-vnd.on2.vp9"

    if-ne v11, v1, :cond_3b

    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_30

    :cond_3b
    move-object v1, v8

    :goto_30
    add-int/lit8 v13, v13, 0xc

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v9

    int-to-byte v9, v9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v10

    int-to-byte v10, v10

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    shr-int/lit8 v13, v12, 0x4

    shr-int/lit8 v15, v12, 0x1

    and-int/lit8 v15, v15, 0x7

    int-to-byte v15, v15

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    int-to-byte v5, v13

    sget-object v8, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    const/16 v8, 0xc

    new-array v8, v8, [B

    const/16 v20, 0x0

    const/16 v34, 0x1

    aput-byte v34, v8, v20

    aput-byte v34, v8, v34

    const/16 v25, 0x2

    aput-byte v9, v8, v25

    aput-byte v25, v8, v42

    const/16 v44, 0x4

    aput-byte v34, v8, v44

    aput-byte v10, v8, v32

    const/16 v29, 0x6

    aput-byte v42, v8, v29

    aput-byte v34, v8, v41

    const/16 v9, 0x8

    aput-byte v5, v8, v9

    const/16 v5, 0x9

    aput-byte v44, v8, v5

    aput-byte v34, v8, v7

    aput-byte v15, v8, v6

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    :cond_3c
    and-int/lit8 v6, v12, 0x1

    if-eqz v6, :cond_3d

    const/4 v6, 0x1

    goto :goto_31

    :cond_3d
    const/4 v6, 0x0

    :goto_31
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v7

    if-eqz v6, :cond_3e

    const/16 v25, 0x1

    goto :goto_32

    :cond_3e
    const/16 v25, 0x2

    :goto_32
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v27

    move-object/from16 v32, v2

    move/from16 v20, v3

    move/from16 v43, v11

    move/from16 v28, v13

    move/from16 v29, v28

    move/from16 v37, v25

    move/from16 v38, v27

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/16 v15, 0x8

    move-object/from16 v27, v1

    move/from16 v25, v7

    goto/16 :goto_55

    :cond_3f
    const v1, 0x61763143

    if-ne v10, v1, :cond_59

    add-int/lit8 v1, v14, -0x8

    new-array v5, v1, [B

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-instance v1, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v1}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    new-instance v6, Landroidx/media3/common/util/ParsableBitArray;

    iget-object v8, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-direct {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iget v8, v0, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/16 v9, 0x8

    mul-int/2addr v8, v9

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    move/from16 v8, v42

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9

    const/4 v8, 0x6

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v10

    const/4 v12, 0x2

    if-ne v9, v12, :cond_44

    if-eqz v8, :cond_43

    if-eqz v10, :cond_40

    const/16 v8, 0xc

    goto :goto_33

    :cond_40
    move v8, v7

    :goto_33
    iput v8, v1, Landroidx/media3/common/ColorInfo$Builder;->e:I

    if-eqz v10, :cond_41

    const/16 v7, 0xc

    :cond_41
    iput v7, v1, Landroidx/media3/common/ColorInfo$Builder;->f:I

    :cond_42
    :goto_34
    const/16 v7, 0xd

    goto :goto_37

    :cond_43
    const/4 v12, 0x2

    :cond_44
    if-gt v9, v12, :cond_42

    if-eqz v8, :cond_45

    move v9, v7

    goto :goto_35

    :cond_45
    const/16 v9, 0x8

    :goto_35
    iput v9, v1, Landroidx/media3/common/ColorInfo$Builder;->e:I

    if-eqz v8, :cond_46

    goto :goto_36

    :cond_46
    const/16 v7, 0x8

    :goto_36
    iput v7, v1, Landroidx/media3/common/ColorInfo$Builder;->f:I

    goto :goto_34

    :goto_37
    invoke-virtual {v6, v7}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    const/4 v12, 0x4

    invoke-virtual {v6, v12}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_47

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported obu_type: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_3f

    :cond_47
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v7

    if-eqz v7, :cond_48

    const-string v6, "Unsupported obu_extension_flag"

    invoke-static {v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_3f

    :cond_48
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v7

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    if-eqz v7, :cond_49

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v7

    move/from16 v8, v27

    if-le v7, v8, :cond_49

    const-string v6, "Excessive obu_size"

    invoke-static {v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_3f

    :cond_49
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v7

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_4a

    const-string v6, "Unsupported reduced_still_picture_header"

    invoke-static {v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_3f

    :cond_4a
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_4b

    const-string v6, "Unsupported timing_info_present_flag"

    invoke-static {v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_3f

    :cond_4b
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_4c

    const-string v6, "Unsupported initial_display_delay_present_flag"

    invoke-static {v6}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    goto/16 :goto_3f

    :cond_4c
    move/from16 v8, v32

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9

    const/4 v10, 0x0

    :goto_38
    if-gt v10, v9, :cond_4e

    const/16 v12, 0xc

    invoke-virtual {v6, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    move/from16 v8, v41

    if-le v13, v8, :cond_4d

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    :cond_4d
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x5

    const/16 v41, 0x7

    goto :goto_38

    :cond_4e
    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    const/16 v34, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_4f

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto :goto_39

    :cond_4f
    const/4 v8, 0x7

    :goto_39
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_50

    const/4 v12, 0x2

    invoke-virtual {v6, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_50
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v9

    if-eqz v9, :cond_51

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto :goto_3a

    :cond_51
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v10

    :goto_3a
    if-lez v10, :cond_52

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v10

    if-nez v10, :cond_52

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_52
    if-eqz v8, :cond_53

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto :goto_3b

    :cond_53
    const/4 v8, 0x3

    :goto_3b
    invoke-virtual {v6, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    const/4 v12, 0x2

    if-ne v7, v12, :cond_54

    if-eqz v8, :cond_54

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    :cond_54
    const/4 v9, 0x1

    if-eq v7, v9, :cond_55

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v7

    if-eqz v7, :cond_55

    const/4 v7, 0x1

    goto :goto_3c

    :cond_55
    const/4 v7, 0x0

    :goto_3c
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_58

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v10

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v12

    const/4 v9, 0x1

    if-nez v7, :cond_56

    if-ne v8, v9, :cond_56

    const/16 v7, 0xd

    if-ne v10, v7, :cond_56

    if-nez v12, :cond_56

    move v6, v9

    goto :goto_3d

    :cond_56
    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v34

    move/from16 v6, v34

    :goto_3d
    invoke-static {v8}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v7

    iput v7, v1, Landroidx/media3/common/ColorInfo$Builder;->a:I

    if-ne v6, v9, :cond_57

    const/4 v6, 0x1

    goto :goto_3e

    :cond_57
    const/4 v6, 0x2

    :goto_3e
    iput v6, v1, Landroidx/media3/common/ColorInfo$Builder;->b:I

    invoke-static {v10}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v6

    iput v6, v1, Landroidx/media3/common/ColorInfo$Builder;->c:I

    :cond_58
    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v1

    :goto_3f
    iget v6, v1, Landroidx/media3/common/ColorInfo;->e:I

    iget v7, v1, Landroidx/media3/common/ColorInfo;->f:I

    iget v8, v1, Landroidx/media3/common/ColorInfo;->a:I

    iget v9, v1, Landroidx/media3/common/ColorInfo;->b:I

    iget v1, v1, Landroidx/media3/common/ColorInfo;->c:I

    const-string v10, "video/av01"

    move/from16 v38, v1

    move-object/from16 v32, v2

    move/from16 v20, v3

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v25, v8

    move/from16 v37, v9

    move-object/from16 v27, v10

    move/from16 v43, v11

    goto/16 :goto_2d

    :cond_59
    const v1, 0x636c6c69

    const/16 v7, 0x19

    if-ne v10, v1, :cond_5b

    if-nez v16, :cond_5a

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_40

    :cond_5a
    move-object/from16 v1, v16

    :goto_40
    const/16 v6, 0x15

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v6

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v16, v1

    move-object/from16 v32, v2

    move/from16 v20, v3

    goto/16 :goto_2c

    :cond_5b
    const v1, 0x6d646376

    if-ne v10, v1, :cond_5d

    if-nez v16, :cond_5c

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_41

    :cond_5c
    move-object/from16 v1, v16

    :goto_41
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v7

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v10

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v12

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v13

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v15

    move-object/from16 v20, v2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v2

    move-object/from16 v27, v9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->x()S

    move-result v9

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v28

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v41

    move/from16 v43, v11

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x2710

    div-long v9, v28, v6

    long-to-int v2, v9

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    div-long v6, v41, v6

    long-to-int v2, v6

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v16, v1

    :goto_42
    move/from16 v25, v8

    move-object/from16 v32, v20

    :goto_43
    move/from16 v28, v39

    move/from16 v29, v40

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/16 v15, 0x8

    :goto_44
    move/from16 v20, v3

    goto/16 :goto_55

    :cond_5d
    move-object/from16 v20, v2

    move-object/from16 v27, v9

    move/from16 v43, v11

    const v1, 0x64323633

    if-ne v10, v1, :cond_5f

    if-nez v27, :cond_5e

    const/4 v10, 0x1

    :goto_45
    const/4 v2, 0x0

    goto :goto_46

    :cond_5e
    const/4 v10, 0x0

    goto :goto_45

    :goto_46
    invoke-static {v2, v10}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    move/from16 v25, v8

    move-object/from16 v32, v20

    move-object/from16 v27, v36

    goto :goto_43

    :cond_5f
    const/4 v2, 0x0

    const v1, 0x65736473

    if-ne v10, v1, :cond_62

    if-nez v27, :cond_60

    const/4 v10, 0x1

    goto :goto_47

    :cond_60
    const/4 v10, 0x0

    :goto_47
    invoke-static {v2, v10}, Landroidx/media3/extractor/ExtractorUtil;->a(Ljava/lang/String;Z)V

    invoke-static {v13, v0}, Landroidx/media3/extractor/mp4/BoxParser;->b(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp4/BoxParser$EsdsData;

    move-result-object v1

    iget-object v6, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->a:Ljava/lang/String;

    iget-object v7, v1, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->b:[B

    if-eqz v7, :cond_61

    invoke-static {v7}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    :cond_61
    move-object/from16 v31, v1

    move-object/from16 v27, v6

    goto :goto_42

    :cond_62
    const v1, 0x62747274

    if-ne v10, v1, :cond_63

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v9

    new-instance v1, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;

    invoke-direct {v1, v9, v10, v6, v7}, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;-><init>(JJ)V

    move-object/from16 v30, v1

    goto :goto_42

    :cond_63
    const v1, 0x70617370

    if-ne v10, v1, :cond_64

    add-int/lit8 v13, v13, 0x8

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v6

    int-to-float v1, v1

    int-to-float v6, v6

    div-float/2addr v1, v6

    move/from16 v45, v1

    move/from16 v25, v8

    move-object/from16 v32, v20

    move/from16 v28, v39

    move/from16 v29, v40

    const/4 v6, -0x1

    const/4 v9, 0x0

    const/16 v15, 0x8

    const/16 v33, 0x1

    goto/16 :goto_44

    :cond_64
    const v1, 0x73763364

    if-ne v10, v1, :cond_67

    add-int/lit8 v1, v13, 0x8

    :goto_48
    sub-int v6, v1, v13

    if-ge v6, v14, :cond_66

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v7

    const v9, 0x70726f6a

    if-ne v7, v9, :cond_65

    iget-object v7, v0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    add-int/2addr v6, v1

    invoke-static {v7, v1, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    move-object/from16 v19, v1

    goto/16 :goto_42

    :cond_65
    add-int/2addr v1, v6

    goto :goto_48

    :cond_66
    move-object/from16 v19, v2

    goto/16 :goto_42

    :cond_67
    const v1, 0x73743364

    if-ne v10, v1, :cond_6d

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    if-nez v1, :cond_6b

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v1

    if-eqz v1, :cond_6a

    const/4 v9, 0x1

    if-eq v1, v9, :cond_69

    const/4 v12, 0x2

    if-eq v1, v12, :cond_68

    if-eq v1, v6, :cond_6c

    goto :goto_49

    :cond_68
    const/4 v6, 0x2

    goto :goto_4a

    :cond_69
    const/4 v6, 0x1

    goto :goto_4a

    :cond_6a
    const/4 v6, 0x0

    goto :goto_4a

    :cond_6b
    :goto_49
    move v6, v3

    :cond_6c
    :goto_4a
    move/from16 v25, v8

    move-object/from16 v32, v20

    move/from16 v28, v39

    move/from16 v29, v40

    const/4 v9, 0x0

    const/16 v15, 0x8

    move/from16 v20, v6

    const/4 v6, -0x1

    goto/16 :goto_55

    :cond_6d
    const v1, 0x61707643

    if-ne v10, v1, :cond_74

    add-int/lit8 v1, v14, -0xc

    new-array v5, v1, [B

    add-int/lit8 v13, v13, 0xc

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v1, v5}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    sget-object v7, Landroidx/media3/common/util/CodecSpecificDataUtil;->a:[B

    const/16 v7, 0x11

    if-lt v1, v7, :cond_6e

    const/4 v7, 0x1

    goto :goto_4b

    :cond_6e
    move v7, v9

    :goto_4b
    const-string v8, "Invalid APV CSD length: %s"

    invoke-static {v1, v8, v7}, Lcom/google/common/base/Preconditions;->b(ILjava/lang/String;Z)V

    aget-byte v1, v5, v9

    const/4 v11, 0x1

    if-ne v1, v11, :cond_6f

    const/4 v7, 0x1

    goto :goto_4c

    :cond_6f
    move v7, v9

    :goto_4c
    const-string v8, "Invalid APV CSD version: %s"

    invoke-static {v1, v8, v7}, Lcom/google/common/base/Preconditions;->b(ILjava/lang/String;Z)V

    const/16 v32, 0x5

    aget-byte v1, v5, v32

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    const/16 v29, 0x6

    aget-byte v7, v5, v29

    invoke-static {v7}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    const/16 v41, 0x7

    aget-byte v8, v5, v41

    invoke-static {v8}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v8

    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, ".apvl"

    const-string v11, ".apvb"

    const-string v12, "apv1.apvf"

    invoke-static {v1, v7, v12, v10, v11}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    new-instance v7, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v7, v5}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    new-instance v5, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v5}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    new-instance v8, Landroidx/media3/common/util/ParsableBitArray;

    iget-object v10, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-direct {v8, v10}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iget v7, v7, Landroidx/media3/common/util/ParsableByteArray;->b:I

    const/16 v15, 0x8

    mul-int/2addr v7, v15

    invoke-virtual {v8, v7}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    invoke-virtual {v8, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v7

    move v10, v9

    :goto_4d
    if-ge v10, v7, :cond_73

    invoke-virtual {v8, v11}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    invoke-virtual {v8, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v11

    move v12, v9

    :goto_4e
    if-ge v12, v11, :cond_72

    const/4 v13, 0x6

    invoke-virtual {v8, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v27

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v8, v6}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v28

    add-int/lit8 v2, v28, 0x8

    iput v2, v5, Landroidx/media3/common/ColorInfo$Builder;->e:I

    iput v2, v5, Landroidx/media3/common/ColorInfo$Builder;->f:I

    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    if-eqz v27, :cond_71

    invoke-virtual {v8, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v27

    invoke-virtual {v8, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v28

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v29

    invoke-static/range {v27 .. v27}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v2

    iput v2, v5, Landroidx/media3/common/ColorInfo$Builder;->a:I

    if-eqz v29, :cond_70

    const/4 v2, 0x1

    goto :goto_4f

    :cond_70
    const/4 v2, 0x2

    :goto_4f
    iput v2, v5, Landroidx/media3/common/ColorInfo$Builder;->b:I

    invoke-static/range {v28 .. v28}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v2

    iput v2, v5, Landroidx/media3/common/ColorInfo$Builder;->c:I

    :cond_71
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    goto :goto_4e

    :cond_72
    const/4 v13, 0x6

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_4d

    :cond_73
    invoke-virtual {v5}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v2

    iget v5, v2, Landroidx/media3/common/ColorInfo;->e:I

    iget v6, v2, Landroidx/media3/common/ColorInfo;->f:I

    iget v7, v2, Landroidx/media3/common/ColorInfo;->a:I

    iget v8, v2, Landroidx/media3/common/ColorInfo;->b:I

    iget v2, v2, Landroidx/media3/common/ColorInfo;->c:I

    const-string v10, "video/apv"

    move/from16 v38, v2

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v25, v7

    move/from16 v37, v8

    move-object/from16 v27, v10

    move-object/from16 v32, v20

    const/4 v6, -0x1

    move-object v5, v1

    goto/16 :goto_44

    :cond_74
    const/4 v9, 0x0

    const/16 v15, 0x8

    const v1, 0x636f6c72

    if-ne v10, v1, :cond_79

    const/4 v6, -0x1

    move/from16 v13, v38

    if-ne v8, v6, :cond_7a

    if-ne v13, v6, :cond_7a

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    const v2, 0x6e636c78

    if-eq v1, v2, :cond_76

    const v2, 0x6e636c63

    if-ne v1, v2, :cond_75

    goto :goto_50

    :cond_75
    invoke-static {v1}, Landroidx/media3/container/Mp4Box;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported color type: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_53

    :cond_76
    :goto_50
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v2

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/16 v7, 0x13

    if-ne v14, v7, :cond_77

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_77

    const/4 v7, 0x1

    goto :goto_51

    :cond_77
    move v7, v9

    :goto_51
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v25

    if-eqz v7, :cond_78

    const/4 v12, 0x1

    :cond_78
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v1

    move/from16 v38, v1

    move/from16 v37, v12

    :goto_52
    move-object/from16 v32, v20

    move/from16 v28, v39

    move/from16 v29, v40

    goto/16 :goto_44

    :cond_79
    move/from16 v13, v38

    const/4 v6, -0x1

    :cond_7a
    :goto_53
    move/from16 v25, v8

    move/from16 v38, v13

    goto :goto_52

    :goto_54
    invoke-static {v0}, Landroidx/media3/container/DolbyVisionConfig;->a(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/DolbyVisionConfig;

    move-result-object v17

    goto :goto_53

    :goto_55
    add-int v8, v35, v14

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 p1, v15

    move-object/from16 v3, v26

    move-object/from16 v9, v27

    move-object/from16 v12, v36

    move/from16 v26, v37

    move/from16 v27, v38

    move/from16 v11, v43

    move/from16 v15, v45

    move/from16 v7, v46

    move/from16 v6, v47

    goto/16 :goto_2

    :cond_7b
    move/from16 v47, v6

    move/from16 v46, v7

    move/from16 v45, v15

    move/from16 v8, v25

    move/from16 v37, v26

    move/from16 v13, v27

    move/from16 v39, v28

    move/from16 v40, v29

    move-object/from16 v26, v3

    move-object/from16 v27, v9

    move/from16 v3, v20

    move-object/from16 v10, v17

    :goto_56
    if-eqz v10, :cond_7c

    iget-object v0, v10, Landroidx/media3/container/DolbyVisionConfig;->a:Ljava/lang/String;

    const-string v9, "video/dolby-vision"

    goto :goto_57

    :cond_7c
    move-object/from16 v0, v18

    move-object/from16 v9, v27

    :goto_57
    if-nez v9, :cond_7d

    return-void

    :cond_7d
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    invoke-static {v9}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    move/from16 v0, v47

    iput v0, v1, Landroidx/media3/common/Format$Builder;->u:I

    move/from16 v0, v46

    iput v0, v1, Landroidx/media3/common/Format$Builder;->v:I

    move/from16 v0, v23

    iput v0, v1, Landroidx/media3/common/Format$Builder;->w:I

    move/from16 v0, v24

    iput v0, v1, Landroidx/media3/common/Format$Builder;->x:I

    move/from16 v15, v45

    iput v15, v1, Landroidx/media3/common/Format$Builder;->A:F

    move/from16 v0, p6

    iput v0, v1, Landroidx/media3/common/Format$Builder;->z:I

    move-object/from16 v10, v19

    iput-object v10, v1, Landroidx/media3/common/Format$Builder;->B:[B

    iput v3, v1, Landroidx/media3/common/Format$Builder;->C:I

    iput-object v5, v1, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    move/from16 v0, v21

    iput v0, v1, Landroidx/media3/common/Format$Builder;->p:I

    move/from16 v0, v22

    iput v0, v1, Landroidx/media3/common/Format$Builder;->E:I

    move-object/from16 v3, v26

    iput-object v3, v1, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    move-object/from16 v0, p5

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/ColorInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/common/ColorInfo$Builder;-><init>()V

    iput v8, v0, Landroidx/media3/common/ColorInfo$Builder;->a:I

    move/from16 v12, v37

    iput v12, v0, Landroidx/media3/common/ColorInfo$Builder;->b:I

    iput v13, v0, Landroidx/media3/common/ColorInfo$Builder;->c:I

    if-eqz v16, :cond_7e

    invoke-virtual/range {v16 .. v16}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    goto :goto_58

    :cond_7e
    const/4 v10, 0x0

    :goto_58
    iput-object v10, v0, Landroidx/media3/common/ColorInfo$Builder;->d:[B

    move/from16 v13, v39

    iput v13, v0, Landroidx/media3/common/ColorInfo$Builder;->e:I

    move/from16 v9, v40

    iput v9, v0, Landroidx/media3/common/ColorInfo$Builder;->f:I

    invoke-virtual {v0}, Landroidx/media3/common/ColorInfo$Builder;->a()Landroidx/media3/common/ColorInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->D:Landroidx/media3/common/ColorInfo;

    move-object/from16 v10, v30

    if-eqz v10, :cond_7f

    iget-wide v2, v10, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->a:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->h:I

    iget-wide v2, v10, Landroidx/media3/extractor/mp4/BoxParser$BtrtData;->b:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->i:I

    goto :goto_59

    :cond_7f
    move-object/from16 v10, v31

    if-eqz v10, :cond_80

    iget-wide v2, v10, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->c:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->h:I

    iget-wide v2, v10, Landroidx/media3/extractor/mp4/BoxParser$EsdsData;->d:J

    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->f(J)I

    move-result v0

    iput v0, v1, Landroidx/media3/common/Format$Builder;->i:I

    :cond_80
    :goto_59
    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, v4, Landroidx/media3/extractor/mp4/BoxParser$StsdData;->b:Landroidx/media3/common/Format;

    return-void
.end method
