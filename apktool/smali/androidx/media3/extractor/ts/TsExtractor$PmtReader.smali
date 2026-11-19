.class Landroidx/media3/extractor/ts/TsExtractor$PmtReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/TsExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PmtReader"
.end annotation


# instance fields
.field public final a:Landroidx/media3/common/util/ParsableBitArray;

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:I

.field public final synthetic e:Landroidx/media3/extractor/ts/TsExtractor;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/ts/TsExtractor;I)V
    .locals 1

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->e:Landroidx/media3/extractor/ts/TsExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->a:Landroidx/media3/common/util/ParsableBitArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->b:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->c:Landroid/util/SparseIntArray;

    iput p2, p0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_14

    :cond_0
    iget-object v2, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->e:Landroidx/media3/extractor/ts/TsExtractor;

    iget v4, v2, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    iget-object v5, v2, Landroidx/media3/extractor/ts/TsExtractor;->i:Landroid/util/SparseArray;

    iget-object v6, v2, Landroidx/media3/extractor/ts/TsExtractor;->j:Landroid/util/SparseBooleanArray;

    iget-object v7, v2, Landroidx/media3/extractor/ts/TsExtractor;->g:Landroidx/media3/extractor/ts/TsPayloadReader$Factory;

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->d:Ljava/util/List;

    iget v9, v2, Landroidx/media3/extractor/ts/TsExtractor;->a:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v4, v11, :cond_2

    if-eq v4, v3, :cond_2

    iget v4, v2, Landroidx/media3/extractor/ts/TsExtractor;->o:I

    if-ne v4, v11, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v12}, Landroidx/media3/common/util/TimestampAdjuster;->d()J

    move-result-wide v12

    invoke-direct {v4, v12, v13}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/util/TimestampAdjuster;

    :goto_1
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_3

    goto/16 :goto_14

    :cond_3
    invoke-virtual {v1, v11}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v8

    const/4 v12, 0x3

    invoke-virtual {v1, v12}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    iget-object v13, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->a:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v14, v13, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v1, v10, v3, v14}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    invoke-virtual {v13, v12}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v15

    iput v15, v2, Landroidx/media3/extractor/ts/TsExtractor;->u:I

    iget-object v15, v13, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    invoke-virtual {v1, v10, v3, v15}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v11, 0xc

    invoke-virtual {v13, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v15

    invoke-virtual {v1, v15}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/16 v15, 0x2000

    const/16 v11, 0x15

    if-ne v9, v3, :cond_4

    iget-object v3, v2, Landroidx/media3/extractor/ts/TsExtractor;->s:Landroidx/media3/extractor/ts/TsPayloadReader;

    if-nez v3, :cond_4

    new-instance v18, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    const/16 v22, 0x0

    sget-object v23, Landroidx/media3/common/util/Util;->b:[B

    const/16 v19, 0x15

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v23}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    move-object/from16 v3, v18

    invoke-interface {v7, v11, v3}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->a(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/extractor/ts/TsExtractor;->s:Landroidx/media3/extractor/ts/TsPayloadReader;

    if-eqz v3, :cond_4

    iget-object v14, v2, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v12, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    invoke-direct {v12, v8, v11, v15}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    invoke-interface {v3, v4, v14, v12}, Landroidx/media3/extractor/ts/TsPayloadReader;->b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :cond_4
    iget-object v3, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v12, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v14

    :goto_2
    if-lez v14, :cond_1d

    iget-object v15, v13, Landroidx/media3/common/util/ParsableBitArray;->a:[B

    const/4 v11, 0x5

    invoke-virtual {v1, v10, v11, v15}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->m(I)V

    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v15

    const/4 v10, 0x3

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v10, 0xd

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v11

    const/4 v10, 0x4

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v10, 0xc

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v17

    iget v10, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    move-object/from16 v24, v13

    add-int v13, v10, v17

    const/16 v25, -0x1

    const/16 v26, 0x0

    move/from16 v28, v25

    move-object/from16 v29, v26

    move-object/from16 v31, v29

    const/16 v30, 0x0

    move/from16 v25, v14

    :goto_3
    iget v14, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v14, v13, :cond_5

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v14

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v26

    iget v0, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    add-int v0, v0, v26

    if-le v0, v13, :cond_6

    :cond_5
    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move-object/from16 v33, v5

    move/from16 v16, v8

    const/4 v4, 0x4

    goto/16 :goto_a

    :cond_6
    const/16 v26, 0xac

    const/16 v27, 0x87

    const/16 v32, 0x81

    move-object/from16 v33, v5

    const/4 v5, 0x5

    if-ne v14, v5, :cond_b

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v34

    const-wide/32 v36, 0x41432d33

    cmp-long v5, v34, v36

    if-nez v5, :cond_7

    move/from16 v28, v32

    goto :goto_5

    :cond_7
    const-wide/32 v36, 0x45414333

    cmp-long v5, v34, v36

    if-nez v5, :cond_8

    move/from16 v28, v27

    goto :goto_5

    :cond_8
    const-wide/32 v36, 0x41432d34

    cmp-long v5, v34, v36

    if-nez v5, :cond_9

    :goto_4
    move/from16 v28, v26

    goto :goto_5

    :cond_9
    const-wide/32 v26, 0x48455643

    cmp-long v5, v34, v26

    if-nez v5, :cond_a

    const/16 v28, 0x24

    :cond_a
    :goto_5
    move/from16 v27, v0

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    :goto_6
    move/from16 v16, v8

    :goto_7
    const/4 v4, 0x4

    goto/16 :goto_9

    :cond_b
    const/16 v5, 0x6a

    if-ne v14, v5, :cond_c

    move/from16 v27, v0

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move/from16 v16, v8

    move/from16 v28, v32

    goto :goto_7

    :cond_c
    const/16 v5, 0x7a

    if-ne v14, v5, :cond_d

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move/from16 v16, v8

    move/from16 v28, v27

    const/4 v4, 0x4

    move/from16 v27, v0

    goto/16 :goto_9

    :cond_d
    const/16 v5, 0x7f

    if-ne v14, v5, :cond_10

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v5

    const/16 v14, 0x15

    if-ne v5, v14, :cond_e

    goto :goto_4

    :cond_e
    const/16 v14, 0xe

    if-ne v5, v14, :cond_f

    const/16 v28, 0x88

    goto :goto_5

    :cond_f
    const/16 v14, 0x21

    if-ne v5, v14, :cond_a

    const/16 v28, 0x8b

    goto :goto_5

    :cond_10
    const/16 v5, 0x7b

    if-ne v14, v5, :cond_11

    const/16 v5, 0x8a

    move/from16 v27, v0

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move/from16 v28, v5

    goto :goto_6

    :cond_11
    const/16 v5, 0xa

    if-ne v14, v5, :cond_12

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v14, 0x3

    invoke-virtual {v1, v14, v5}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v30

    move/from16 v27, v0

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move-object/from16 v29, v5

    goto :goto_6

    :cond_12
    const/16 v5, 0x59

    if-ne v14, v5, :cond_14

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    iget v5, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    if-ge v5, v0, :cond_13

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v27, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0, v5}, Landroidx/media3/common/util/ParsableByteArray;->y(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v0

    move-object/from16 v34, v4

    move/from16 v16, v8

    const/4 v4, 0x4

    new-array v8, v4, [B

    move-object/from16 v35, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    new-instance v3, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    invoke-direct {v3, v5, v0, v8}, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v8, v16

    move/from16 v0, v27

    move-object/from16 v4, v34

    move-object/from16 v3, v35

    goto :goto_8

    :cond_13
    move/from16 v27, v0

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move/from16 v16, v8

    const/4 v4, 0x4

    move-object/from16 v31, v14

    const/16 v28, 0x59

    goto :goto_9

    :cond_14
    move/from16 v27, v0

    move-object/from16 v35, v3

    move-object/from16 v34, v4

    move/from16 v16, v8

    const/4 v4, 0x4

    const/16 v0, 0x6f

    if-ne v14, v0, :cond_15

    const/16 v0, 0x101

    move/from16 v28, v0

    :cond_15
    :goto_9
    iget v0, v1, Landroidx/media3/common/util/ParsableByteArray;->b:I

    sub-int v0, v27, v0

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    move-object/from16 v0, p0

    move/from16 v8, v16

    move-object/from16 v5, v33

    move-object/from16 v4, v34

    move-object/from16 v3, v35

    goto/16 :goto_3

    :goto_a
    invoke-virtual {v1, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    new-instance v27, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;

    iget-object v0, v1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v0, v10, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v32

    invoke-direct/range {v27 .. v32}, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    move-object/from16 v0, v27

    const/4 v3, 0x6

    if-eq v15, v3, :cond_16

    const/4 v5, 0x5

    if-ne v15, v5, :cond_17

    :cond_16
    iget v15, v0, Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;->a:I

    :cond_17
    add-int/lit8 v17, v17, 0x5

    sub-int v14, v25, v17

    const/4 v3, 0x2

    if-ne v9, v3, :cond_18

    move v5, v15

    goto :goto_b

    :cond_18
    move v5, v11

    :goto_b
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_19

    move-object/from16 v3, v35

    const/16 v8, 0x15

    goto :goto_e

    :cond_19
    const/16 v8, 0x15

    if-ne v9, v3, :cond_1a

    if-ne v15, v8, :cond_1a

    iget-object v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->s:Landroidx/media3/extractor/ts/TsPayloadReader;

    goto :goto_c

    :cond_1a
    invoke-interface {v7, v15, v0}, Landroidx/media3/extractor/ts/TsPayloadReader$Factory;->a(ILandroidx/media3/extractor/ts/TsPayloadReader$EsInfo;)Landroidx/media3/extractor/ts/TsPayloadReader;

    move-result-object v0

    :goto_c
    if-ne v9, v3, :cond_1c

    const/16 v3, 0x2000

    invoke-virtual {v12, v5, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ge v11, v10, :cond_1b

    goto :goto_d

    :cond_1b
    move-object/from16 v3, v35

    goto :goto_e

    :cond_1c
    :goto_d
    invoke-virtual {v12, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    move-object/from16 v3, v35

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_e
    move-object/from16 v0, p0

    move v11, v8

    move/from16 v8, v16

    move-object/from16 v13, v24

    move-object/from16 v5, v33

    move-object/from16 v4, v34

    const/4 v10, 0x0

    const/16 v15, 0x2000

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v34, v4

    move-object/from16 v33, v5

    move/from16 v16, v8

    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_20

    invoke-virtual {v12, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v12, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v5, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/ts/TsPayloadReader;

    if-eqz v7, :cond_1f

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->s:Landroidx/media3/extractor/ts/TsPayloadReader;

    if-eq v7, v8, :cond_1e

    iget-object v8, v2, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v10, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    move/from16 v11, v16

    const/16 v13, 0x2000

    invoke-direct {v10, v11, v4, v13}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(III)V

    move-object/from16 v4, v34

    invoke-interface {v7, v4, v8, v10}, Landroidx/media3/extractor/ts/TsPayloadReader;->b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    :goto_10
    move-object/from16 v8, v33

    goto :goto_11

    :cond_1e
    move/from16 v11, v16

    move-object/from16 v4, v34

    const/16 v13, 0x2000

    goto :goto_10

    :goto_11
    invoke-virtual {v8, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_12

    :cond_1f
    move/from16 v11, v16

    move-object/from16 v8, v33

    move-object/from16 v4, v34

    const/16 v13, 0x2000

    :goto_12
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v34, v4

    move-object/from16 v33, v8

    move/from16 v16, v11

    goto :goto_f

    :cond_20
    move-object/from16 v8, v33

    const/4 v1, 0x2

    if-ne v9, v1, :cond_21

    iget-boolean v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    if-nez v0, :cond_23

    iget-object v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    const/4 v3, 0x0

    iput v3, v2, Landroidx/media3/extractor/ts/TsExtractor;->o:I

    const/4 v7, 0x1

    iput-boolean v7, v2, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    return-void

    :cond_21
    move-object/from16 v0, p0

    const/4 v3, 0x0

    const/4 v7, 0x1

    iget v0, v0, Landroidx/media3/extractor/ts/TsExtractor$PmtReader;->d:I

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    if-ne v9, v7, :cond_22

    move v10, v3

    goto :goto_13

    :cond_22
    iget v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->o:I

    add-int/lit8 v10, v0, -0x1

    :goto_13
    iput v10, v2, Landroidx/media3/extractor/ts/TsExtractor;->o:I

    if-nez v10, :cond_23

    iget-object v0, v2, Landroidx/media3/extractor/ts/TsExtractor;->n:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iput-boolean v7, v2, Landroidx/media3/extractor/ts/TsExtractor;->p:Z

    :cond_23
    :goto_14
    return-void
.end method

.method public final b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    return-void
.end method
