.class public abstract Landroidx/media3/extractor/Ac4Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac4Util$Ac4Presentation;,
        Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/Ac4Util;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static a(ILandroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object p1, p1, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v0, 0x0

    const/16 v1, -0x54

    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    aput-byte v1, p1, v0

    const/4 v0, 0x3

    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    aput-byte p0, p1, v0

    return-void
.end method

.method public static b(Landroidx/media3/common/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format;
    .locals 20

    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->l(Landroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_39

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v6

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0xbb80

    goto :goto_0

    :cond_0
    const v7, 0xac44

    :goto_0
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v9, 0x9

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9

    const/16 v10, 0x10

    if-le v6, v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x80

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_1
    const/16 v11, 0x42

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v12

    if-lt v12, v11, :cond_3

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    goto :goto_2

    :cond_3
    const-string v0, "Invalid AC-4 DSI bitrate."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4
    :goto_2
    new-instance v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    const/4 v13, -0x1

    iput v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    iput v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->c:I

    iput-boolean v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->d:Z

    const/4 v14, 0x2

    iput v14, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->e:I

    iput v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->f:I

    const/4 v15, 0x0

    iput v15, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    :goto_3
    const/4 v13, 0x6

    const/4 v11, 0x5

    const/16 v5, 0x8

    if-ge v15, v9, :cond_2a

    if-nez v3, :cond_5

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v9

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v16

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v17

    move/from16 v18, v5

    move/from16 v8, v16

    move/from16 v14, v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    move/from16 v18, v5

    const/16 v5, 0xff

    if-ne v4, v5, :cond_6

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    if-le v8, v14, :cond_7

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x7

    const/4 v8, 0x4

    const/16 v11, 0x42

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v5

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v0, v11}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v9

    const/16 v10, 0x1f

    if-ne v9, v10, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    move v14, v8

    move v8, v9

    const/4 v9, 0x0

    :goto_5
    iput v14, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->f:I

    const/16 v11, 0xf

    if-nez v9, :cond_9

    if-nez v10, :cond_9

    if-ne v8, v13, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_17

    :cond_9
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    iput v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_a
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/4 v2, 0x1

    if-ne v3, v2, :cond_b

    if-eq v14, v2, :cond_c

    if-ne v14, v13, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v13, 0x5

    goto :goto_8

    :cond_c
    :goto_7
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto :goto_6

    :goto_8
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v13, 0xa

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    if-ne v3, v2, :cond_15

    if-lez v14, :cond_d

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v13

    iput-boolean v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    :cond_d
    iget-boolean v13, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    if-eqz v13, :cond_12

    if-eq v14, v2, :cond_e

    const/4 v13, 0x2

    if-ne v14, v13, :cond_f

    :cond_e
    const/4 v13, 0x5

    goto :goto_a

    :cond_f
    :goto_9
    const/16 v2, 0x18

    goto :goto_b

    :goto_a
    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    if-ltz v2, :cond_10

    if-gt v2, v11, :cond_10

    iput v2, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    :cond_10
    const/16 v13, 0xb

    if-lt v2, v13, :cond_11

    const/16 v13, 0xe

    if-gt v2, v13, :cond_11

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    iput-boolean v2, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->d:Z

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    iput v2, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->e:I

    goto :goto_9

    :cond_11
    const/4 v13, 0x2

    goto :goto_9

    :goto_b
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :goto_c
    const/4 v2, 0x1

    goto :goto_d

    :cond_12
    const/4 v13, 0x2

    goto :goto_c

    :goto_d
    if-eq v14, v2, :cond_13

    if-ne v14, v13, :cond_15

    :cond_13
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_14
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    move/from16 v2, v18

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v13

    const/4 v11, 0x0

    :goto_e
    if-ge v11, v13, :cond_15

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0x8

    goto :goto_e

    :cond_15
    if-nez v9, :cond_1d

    if-eqz v10, :cond_16

    goto/16 :goto_15

    :cond_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    if-eqz v8, :cond_1b

    const/4 v2, 0x1

    if-eq v8, v2, :cond_1b

    const/4 v13, 0x2

    if-eq v8, v13, :cond_1b

    const/4 v2, 0x3

    if-eq v8, v2, :cond_19

    const/4 v2, 0x4

    if-eq v8, v2, :cond_19

    const/4 v13, 0x5

    if-eq v8, v13, :cond_17

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v8, :cond_1f

    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_17
    if-nez v14, :cond_18

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_16

    :cond_18
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    const/4 v2, 0x0

    :goto_10
    const/16 v19, 0x2

    add-int/lit8 v9, v8, 0x2

    if-ge v2, v9, :cond_1f

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    if-nez v14, :cond_1a

    const/4 v2, 0x0

    const/4 v8, 0x3

    :goto_11
    if-ge v2, v8, :cond_1f

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1a
    const/4 v2, 0x0

    :goto_12
    const/4 v8, 0x3

    if-ge v2, v8, :cond_1f

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1b
    if-nez v14, :cond_1c

    const/4 v2, 0x0

    const/4 v13, 0x2

    :goto_13
    if-ge v2, v13, :cond_1f

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1c
    const/4 v2, 0x0

    :goto_14
    const/4 v13, 0x2

    if-ge v2, v13, :cond_1f

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_1d
    :goto_15
    if-nez v14, :cond_1e

    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    goto :goto_16

    :cond_1e
    invoke-static {v0, v12}, Landroidx/media3/extractor/Ac4Util;->e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V

    :cond_1f
    :goto_16
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    :goto_17
    if-eqz v2, :cond_20

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    const/4 v9, 0x0

    :goto_18
    if-ge v9, v8, :cond_21

    const/16 v10, 0xf

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_20
    const/4 v2, 0x7

    :cond_21
    if-lez v14, :cond_25

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v8

    const/16 v9, 0x42

    if-lt v8, v9, :cond_22

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto :goto_19

    :cond_22
    const-string v0, "Can\'t parse bitrate DSI."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_23
    :goto_19
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    const/16 v8, 0x10

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    const/4 v9, 0x0

    :goto_1a
    if-ge v9, v8, :cond_24

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1a

    :cond_24
    const/16 v10, 0x8

    goto :goto_1b

    :cond_25
    const/16 v10, 0x8

    const/4 v13, 0x5

    :goto_1b
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    const/4 v8, 0x1

    if-ne v3, v8, :cond_27

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v10

    sub-int/2addr v1, v5

    if-lt v4, v1, :cond_26

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Landroidx/media3/common/util/ParsableBitArray;->p(I)V

    goto :goto_1c

    :cond_26
    const-string v0, "pres_bytes is smaller than presentation bytes read."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_27
    :goto_1c
    iget-boolean v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    if-eqz v0, :cond_29

    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_28

    goto :goto_1d

    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t determine channel mode of presentation "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_29
    const/4 v1, -0x1

    goto :goto_1d

    :cond_2a
    move v10, v5

    move v13, v11

    const/4 v1, -0x1

    const/4 v2, 0x7

    :goto_1d
    iget-boolean v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->a:Z

    const/16 v3, 0xc

    if-eqz v0, :cond_30

    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    iget-boolean v4, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->d:Z

    iget v5, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->e:I

    const/16 v8, 0xd

    packed-switch v0, :pswitch_data_0

    move v2, v1

    :goto_1e
    :pswitch_0
    const/16 v13, 0xb

    goto :goto_1f

    :pswitch_1
    const/16 v2, 0x18

    goto :goto_1e

    :pswitch_2
    const/16 v2, 0xe

    goto :goto_1e

    :pswitch_3
    move v2, v8

    goto :goto_1e

    :pswitch_4
    move v2, v3

    goto :goto_1e

    :pswitch_5
    const/16 v2, 0xb

    goto :goto_1e

    :pswitch_6
    move v2, v10

    goto :goto_1e

    :pswitch_7
    const/4 v2, 0x6

    goto :goto_1e

    :pswitch_8
    move v2, v13

    goto :goto_1e

    :pswitch_9
    const/4 v2, 0x3

    goto :goto_1e

    :pswitch_a
    const/4 v2, 0x2

    goto :goto_1e

    :pswitch_b
    const/4 v2, 0x1

    goto :goto_1e

    :goto_1f
    if-eq v0, v13, :cond_2c

    if-eq v0, v3, :cond_2c

    if-eq v0, v8, :cond_2c

    const/16 v13, 0xe

    if-ne v0, v13, :cond_2b

    goto :goto_21

    :cond_2b
    :goto_20
    move v14, v2

    goto/16 :goto_23

    :cond_2c
    :goto_21
    if-nez v4, :cond_2d

    add-int/lit8 v2, v2, -0x2

    :cond_2d
    if-eqz v5, :cond_2f

    const/4 v8, 0x1

    if-eq v5, v8, :cond_2e

    goto :goto_20

    :cond_2e
    add-int/lit8 v2, v2, -0x2

    goto :goto_20

    :cond_2f
    add-int/lit8 v2, v2, -0x4

    goto :goto_20

    :cond_30
    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->c:I

    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    if-lez v0, :cond_32

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_31

    const/16 v1, 0x11

    if-ne v0, v1, :cond_31

    const/16 v0, 0x15

    :cond_31
    move v14, v0

    goto :goto_23

    :cond_32
    const/4 v2, 0x1

    if-eqz v1, :cond_37

    if-eq v1, v2, :cond_36

    const/4 v13, 0x2

    if-eq v1, v13, :cond_35

    const/4 v2, 0x3

    if-eq v1, v2, :cond_34

    const/4 v2, 0x4

    if-eq v1, v2, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AC-4 level "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has not been defined."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :goto_22
    move v14, v13

    goto :goto_23

    :cond_33
    move v14, v3

    goto :goto_23

    :cond_34
    const/16 v14, 0xa

    goto :goto_23

    :cond_35
    move v14, v10

    goto :goto_23

    :cond_36
    const/4 v14, 0x6

    goto :goto_23

    :cond_37
    const/4 v13, 0x2

    goto :goto_22

    :goto_23
    if-lez v14, :cond_38

    iget v0, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->f:I

    iget v1, v12, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->g:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "ac-4.%02d.%02d.%02d"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    const-string v2, "audio/ac4"

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iput v14, v1, Landroidx/media3/common/Format$Builder;->F:I

    iput v7, v1, Landroidx/media3/common/Format$Builder;->G:I

    move-object/from16 v2, p3

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    move-object/from16 v2, p2

    iput-object v2, v1, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iput-object v0, v1, Landroidx/media3/common/Format$Builder;->j:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-object v0

    :cond_38
    const-string v0, "Cannot determine channel count of presentation."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported AC-4 DSI version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static c(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
    .locals 9

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_3
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v5

    const v6, 0xac44

    const v7, 0xbb80

    if-eqz v5, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v6

    :goto_1
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result p0

    sget-object v8, Landroidx/media3/extractor/Ac4Util;->a:[I

    if-ne v5, v6, :cond_6

    const/16 v6, 0xd

    if-ne p0, v6, :cond_6

    aget p0, v8, p0

    goto :goto_4

    :cond_6
    if-ne v5, v7, :cond_c

    const/16 v6, 0xe

    if-ge p0, v6, :cond_c

    aget v6, v8, p0

    rem-int/lit8 v2, v2, 0x5

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eq v2, v8, :cond_a

    const/16 v8, 0xb

    if-eq v2, v1, :cond_9

    if-eq v2, v4, :cond_a

    if-eq v2, v3, :cond_7

    goto :goto_3

    :cond_7
    if-eq p0, v4, :cond_8

    if-eq p0, v7, :cond_8

    if-ne p0, v8, :cond_b

    :cond_8
    :goto_2
    add-int/lit8 p0, v6, 0x1

    goto :goto_4

    :cond_9
    if-eq p0, v7, :cond_8

    if-ne p0, v8, :cond_b

    goto :goto_2

    :cond_a
    if-eq p0, v4, :cond_8

    if-ne p0, v7, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    move p0, v6

    goto :goto_4

    :cond_c
    const/4 p0, 0x0

    :goto_4
    new-instance v1, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;

    invoke-direct {v1, v5, v0, p0}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(III)V

    return-object v1
.end method

.method public static d(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_0
    const/4 v0, 0x7

    if-lt v1, v0, :cond_1

    const/16 v0, 0xa

    if-gt v1, v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->n()V

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v0

    iget v2, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    if-ltz v1, :cond_3

    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    iput v1, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->b:I

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->f(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_4
    return-void
.end method

.method public static e(Landroidx/media3/common/util/ParsableBitArray;Landroidx/media3/extractor/Ac4Util$Ac4Presentation;)V
    .locals 6

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_0
    if-eqz v1, :cond_1

    const/16 v4, 0x18

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroidx/media3/extractor/Ac4Util$Ac4Presentation;->c:I

    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->f()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Landroidx/media3/extractor/Ac4Util;->f(Landroidx/media3/common/util/ParsableBitArray;)V

    :cond_5
    return-void
.end method

.method public static f(Landroidx/media3/common/util/ParsableBitArray;)V
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2a

    if-gt v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->o(I)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Invalid language tag bytes number: %d. Must be between 2 and 42."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
