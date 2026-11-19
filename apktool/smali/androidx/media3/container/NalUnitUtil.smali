.class public abstract Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$H265NalHeader;,
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265VpsData;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;,
        Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;,
        Landroidx/media3/container/NalUnitUtil$H265LayerInfo;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265RepFormat;,
        Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;,
        Landroidx/media3/container/NalUnitUtil$PpsData;,
        Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:[F

.field public static final c:Ljava/lang/Object;

.field public static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->b:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->c:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->d:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([Z)V
    .locals 2

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static b([BII[Z)I
    .locals 8

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    if-nez v0, :cond_1

    return p2

    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    const/4 v3, 0x2

    if-le v0, v2, :cond_3

    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_3
    if-le v0, v3, :cond_4

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_1
    if-ge p1, v4, :cond_7

    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p1, -0x2

    aget-byte v7, p0, v6

    if-nez v7, :cond_6

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_6

    if-ne v5, v2, :cond_6

    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->a([Z)V

    return v6

    :cond_6
    add-int/lit8 p1, p1, -0x2

    :goto_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_7
    if-le v0, v3, :cond_9

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    :goto_3
    move p1, v2

    goto :goto_4

    :cond_8
    move p1, v1

    goto :goto_4

    :cond_9
    if-ne v0, v3, :cond_a

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    :cond_a
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    :goto_4
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_c

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_b

    aget-byte p1, p0, v4

    if-nez p1, :cond_b

    :goto_5
    move p1, v2

    goto :goto_6

    :cond_b
    move p1, v1

    goto :goto_6

    :cond_c
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_b

    aget-byte p1, p0, v4

    if-nez p1, :cond_b

    goto :goto_5

    :goto_6
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_d

    move v1, v2

    :cond_d
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static c(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->k:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v0, "dva1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "dvav"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "dvh1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "dvhe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string p0, "video/hevc"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "video/avc"

    return-object p0

    :cond_3
    iget-object p0, p0, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    return-object p0
.end method

.method public static d([BILandroidx/media3/common/Format;)Z
    .locals 5

    iget-object v0, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v1, "video/avc"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0xe

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    aget-byte p0, p0, v1

    and-int/lit8 p1, p0, 0x60

    shr-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 p0, p0, 0x1f

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    if-ne p0, v2, :cond_5

    goto :goto_0

    :cond_3
    iget-object v0, p2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v4, "video/hevc"

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    add-int/2addr p1, v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->f(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object p0

    iget p1, p0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->a:I

    const/16 v0, 0x23

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    if-gt p1, v2, :cond_5

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    iget p0, p0, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->c:I

    iget p1, p2, Landroidx/media3/common/Format;->F:I

    sub-int/2addr p1, v3

    if-ne p0, p1, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v3
.end method

.method public static e(Landroidx/media3/common/Format;)I
    .locals 1

    invoke-static {p0}, Landroidx/media3/container/NalUnitUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "video/avc"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "video/hevc"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "video/vvc"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public static f(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    new-instance v2, Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    invoke-direct {v2, v1, v0, p0}, Landroidx/media3/container/NalUnitUtil$H265NalHeader;-><init>(III)V

    return-object v2
.end method

.method public static g(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x6

    new-array v4, v3, [I

    const/4 v5, 0x2

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v9

    move v10, v7

    move v11, v10

    :goto_0
    const/16 v12, 0x20

    if-ge v10, v12, :cond_1

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    shl-int/2addr v12, v10

    or-int/2addr v11, v12

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_1
    if-ge v10, v3, :cond_2

    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v12

    aput v12, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move v13, v2

    :goto_2
    move-object/from16 v17, v4

    move v14, v8

    move v15, v9

    move/from16 v16, v11

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    iget v3, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->a:I

    iget-boolean v8, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->b:Z

    iget v9, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->c:I

    iget v11, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->d:I

    iget-object v4, v2, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;->e:[I

    move v13, v3

    goto :goto_2

    :cond_4
    move-object/from16 v17, v4

    move v13, v7

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    :goto_3
    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v18

    move v2, v7

    :goto_4
    if-ge v7, v1, :cond_7

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, 0x58

    :cond_5
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, v2, 0x8

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    if-lez v1, :cond_8

    sub-int/2addr v6, v1

    mul-int/2addr v6, v5

    invoke-virtual {v0, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_8
    new-instance v12, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    invoke-direct/range {v12 .. v18}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;-><init>(IZII[II)V

    return-object v12
.end method

.method public static h(II[B)Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;
    .locals 17

    move-object/from16 v0, p2

    add-int/lit8 v1, p0, 0x2

    add-int/lit8 v2, p1, -0x1

    :goto_0
    aget-byte v3, v0, v2

    if-nez v3, :cond_0

    if-le v2, v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_e

    if-gt v2, v1, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v3, Landroidx/media3/container/ParsableNalUnitBitArray;

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v3, v0, v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    :goto_1
    const/16 v0, 0x10

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    :goto_2
    const/16 v5, 0xff

    if-ne v1, v5, :cond_2

    add-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    goto :goto_2

    :cond_2
    add-int/2addr v4, v1

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    move v6, v2

    :goto_3
    if-ne v1, v5, :cond_3

    add-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    goto :goto_3

    :cond_3
    add-int/2addr v6, v1

    if-eqz v6, :cond_e

    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->b(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_8

    :cond_4
    const/16 v0, 0xb0

    if-ne v4, v0, :cond_d

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v8

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    move v9, v1

    goto :goto_4

    :cond_5
    move v9, v2

    :goto_4
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    const/4 v4, -0x1

    move v11, v4

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move v4, v2

    :goto_5
    if-gt v4, v1, :cond_c

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v11

    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v12

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v13

    const/16 v6, 0x3f

    if-ne v13, v6, :cond_6

    goto :goto_8

    :cond_6
    if-nez v13, :cond_7

    add-int/lit8 v7, v8, -0x1e

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_6

    :cond_7
    add-int v7, v13, v8

    add-int/lit8 v7, v7, -0x1f

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_6
    invoke-virtual {v3, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v14

    if-eqz v0, :cond_a

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v5

    if-ne v5, v6, :cond_8

    goto :goto_8

    :cond_8
    if-nez v5, :cond_9

    add-int/lit8 v6, v9, -0x1e

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_7

    :cond_9
    add-int v6, v5, v9

    add-int/lit8 v6, v6, -0x1f

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_7
    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v6

    move v15, v5

    move/from16 v16, v6

    :cond_a
    invoke-virtual {v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    new-instance v7, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;

    add-int/lit8 v10, v1, 0x1

    invoke-direct/range {v7 .. v16}, Landroidx/media3/container/NalUnitUtil$H265Sei3dRefDisplayInfoData;-><init>(IIIIIIIII)V

    return-object v7

    :cond_d
    mul-int/lit8 v6, v6, 0x8

    invoke-virtual {v3, v6}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    goto/16 :goto_1

    :cond_e
    :goto_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public static i([BIILandroidx/media3/container/NalUnitUtil$H265VpsData;)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v4, v0, v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    invoke-static {v4}, Landroidx/media3/container/NalUnitUtil;->f(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v6

    const/4 v4, 0x2

    add-int/2addr v1, v4

    new-instance v5, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v5, v0, v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v7

    iget v2, v6, Landroidx/media3/container/NalUnitUtil$H265NalHeader;->b:I

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    const/4 v10, 0x7

    if-ne v7, v10, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget-object v11, v3, Landroidx/media3/container/NalUnitUtil$H265VpsData;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    sub-int/2addr v12, v8

    invoke-static {v2, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->a:I

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v11, 0x0

    if-nez v10, :cond_2

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-static {v5, v8, v7, v11}, Landroidx/media3/container/NalUnitUtil;->g(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v11

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    iget-object v12, v3, Landroidx/media3/container/NalUnitUtil$H265VpsData;->b:Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    iget-object v13, v12, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->b:[I

    iget-object v12, v12, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;->a:Lcom/google/common/collect/ImmutableList;

    aget v13, v13, v2

    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    move-result v14

    if-le v14, v13, :cond_3

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    :cond_3
    :goto_2
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v12

    const/16 v13, 0x8

    const/4 v14, -0x1

    if-eqz v10, :cond_7

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v5, v13}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v15

    goto :goto_3

    :cond_4
    move v15, v14

    :goto_3
    if-eqz v3, :cond_6

    iget-object v9, v3, Landroidx/media3/container/NalUnitUtil$H265VpsData;->c:Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    if-eqz v9, :cond_6

    iget-object v13, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->a:Lcom/google/common/collect/ImmutableList;

    if-ne v15, v14, :cond_5

    iget-object v9, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;->b:[I

    aget v15, v9, v2

    :cond_5
    if-eq v15, v14, :cond_6

    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v9

    if-le v9, v15, :cond_6

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    iget v13, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->a:I

    iget v15, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->d:I

    iget v14, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->e:I

    iget v0, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->b:I

    iget v9, v9, Landroidx/media3/container/NalUnitUtil$H265RepFormat;->c:I

    move/from16 v16, v14

    move/from16 v17, v15

    :goto_4
    const/16 v18, 0x4

    goto/16 :goto_9

    :cond_6
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v13

    if-ne v13, v1, :cond_8

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_8
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v15

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v14

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v0

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v9

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v17

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v18

    if-eq v13, v8, :cond_a

    if-ne v13, v4, :cond_9

    goto :goto_5

    :cond_9
    move/from16 v19, v8

    goto :goto_6

    :cond_a
    :goto_5
    move/from16 v19, v4

    :goto_6
    add-int/2addr v0, v9

    mul-int v0, v0, v19

    sub-int v0, v15, v0

    if-ne v13, v8, :cond_b

    move v9, v4

    goto :goto_7

    :cond_b
    move v9, v8

    :goto_7
    add-int v17, v17, v18

    mul-int v17, v17, v9

    sub-int v9, v14, v17

    goto :goto_8

    :cond_c
    move v9, v14

    move v0, v15

    :goto_8
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v17

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v18

    move/from16 v16, v15

    move v15, v0

    move/from16 v0, v17

    move/from16 v17, v16

    move/from16 v16, v14

    move v14, v9

    move/from16 v9, v18

    goto :goto_4

    :goto_9
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v19

    if-nez v10, :cond_f

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v20

    if-eqz v20, :cond_d

    const/16 v20, 0x0

    goto :goto_a

    :cond_d
    move/from16 v20, v7

    :goto_a
    move/from16 v4, v20

    const/4 v1, -0x1

    :goto_b
    if-gt v4, v7, :cond_e

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move/from16 v22, v8

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    add-int/lit8 v4, v4, 0x1

    move/from16 v8, v22

    goto :goto_b

    :cond_e
    :goto_c
    move/from16 v22, v8

    goto :goto_d

    :cond_f
    const/4 v1, -0x1

    goto :goto_c

    :goto_d
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz v10, :cond_10

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v4

    goto :goto_e

    :cond_10
    const/4 v4, 0x0

    :goto_e
    const/4 v8, 0x6

    if-eqz v4, :cond_12

    invoke-virtual {v5, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_11
    move/from16 v23, v0

    const/4 v0, 0x2

    goto :goto_14

    :cond_12
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x0

    :goto_f
    move/from16 v10, v18

    if-ge v4, v10, :cond_11

    move/from16 v18, v10

    const/4 v10, 0x0

    :goto_10
    if-ge v10, v8, :cond_17

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v23

    if-nez v23, :cond_14

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move/from16 v23, v0

    :cond_13
    const/4 v0, 0x3

    goto :goto_12

    :cond_14
    shl-int/lit8 v23, v4, 0x1

    add-int/lit8 v23, v23, 0x4

    shl-int v8, v22, v23

    move/from16 v23, v0

    const/16 v0, 0x40

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    move/from16 v8, v22

    if-le v4, v8, :cond_15

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    :cond_15
    const/4 v8, 0x0

    :goto_11
    if-ge v8, v0, :cond_13

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :goto_12
    if-ne v4, v0, :cond_16

    const/4 v0, 0x3

    goto :goto_13

    :cond_16
    const/4 v0, 0x1

    :goto_13
    add-int/2addr v10, v0

    move/from16 v0, v23

    const/4 v8, 0x6

    const/16 v22, 0x1

    goto :goto_10

    :cond_17
    move/from16 v23, v0

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x6

    const/16 v22, 0x1

    goto :goto_f

    :goto_14
    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_18
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v0

    const/4 v4, 0x0

    new-array v8, v4, [I

    new-array v10, v4, [I

    move/from16 v18, v1

    move/from16 v24, v2

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_15
    if-ge v4, v0, :cond_2a

    if-eqz v4, :cond_25

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v25

    if-eqz v25, :cond_25

    move/from16 v25, v0

    add-int v0, v1, v2

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v26

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v27

    const/16 v22, 0x1

    add-int/lit8 v27, v27, 0x1

    const/16 v21, 0x2

    mul-int/lit8 v26, v26, 0x2

    rsub-int/lit8 v26, v26, 0x1

    mul-int v26, v26, v27

    move/from16 v27, v4

    add-int/lit8 v4, v0, 0x1

    move-object/from16 v28, v6

    new-array v6, v4, [Z

    move-object/from16 v29, v6

    const/4 v6, 0x0

    :goto_16
    if-gt v6, v0, :cond_1a

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v30

    if-nez v30, :cond_19

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v30

    aput-boolean v30, v29, v6

    goto :goto_17

    :cond_19
    const/16 v22, 0x1

    aput-boolean v22, v29, v6

    :goto_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_1a
    new-array v6, v4, [I

    new-array v4, v4, [I

    add-int/lit8 v30, v2, -0x1

    const/16 v31, 0x0

    :goto_18
    if-ltz v30, :cond_1c

    aget v32, v10, v30

    add-int v32, v32, v26

    if-gez v32, :cond_1b

    add-int v33, v1, v30

    aget-boolean v33, v29, v33

    if-eqz v33, :cond_1b

    add-int/lit8 v33, v31, 0x1

    aput v32, v6, v31

    move/from16 v31, v33

    :cond_1b
    add-int/lit8 v30, v30, -0x1

    goto :goto_18

    :cond_1c
    if-gez v26, :cond_1d

    aget-boolean v30, v29, v0

    if-eqz v30, :cond_1d

    add-int/lit8 v30, v31, 0x1

    aput v26, v6, v31

    move/from16 v31, v30

    :cond_1d
    move/from16 v30, v0

    move/from16 v0, v31

    move/from16 v31, v7

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v1, :cond_1f

    aget v32, v8, v7

    add-int v32, v32, v26

    if-gez v32, :cond_1e

    aget-boolean v33, v29, v7

    if-eqz v33, :cond_1e

    add-int/lit8 v33, v0, 0x1

    aput v32, v6, v0

    move/from16 v0, v33

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    :cond_1f
    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    add-int/lit8 v7, v1, -0x1

    const/16 v32, 0x0

    :goto_1a
    if-ltz v7, :cond_21

    aget v33, v8, v7

    add-int v33, v33, v26

    if-lez v33, :cond_20

    aget-boolean v34, v29, v7

    if-eqz v34, :cond_20

    add-int/lit8 v34, v32, 0x1

    aput v33, v4, v32

    move/from16 v32, v34

    :cond_20
    add-int/lit8 v7, v7, -0x1

    goto :goto_1a

    :cond_21
    if-lez v26, :cond_22

    aget-boolean v7, v29, v30

    if-eqz v7, :cond_22

    add-int/lit8 v7, v32, 0x1

    aput v26, v4, v32

    move/from16 v32, v7

    :cond_22
    move/from16 v7, v32

    const/4 v8, 0x0

    :goto_1b
    if-ge v8, v2, :cond_24

    aget v30, v10, v8

    add-int v30, v30, v26

    if-lez v30, :cond_23

    add-int v32, v1, v8

    aget-boolean v32, v29, v32

    if-eqz v32, :cond_23

    add-int/lit8 v32, v7, 0x1

    aput v30, v4, v7

    move/from16 v7, v32

    :cond_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_24
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v10, v1

    move-object v8, v6

    move v2, v7

    :goto_1c
    const/16 v22, 0x1

    move v1, v0

    goto :goto_21

    :cond_25
    move/from16 v25, v0

    move/from16 v27, v4

    move-object/from16 v28, v6

    move/from16 v31, v7

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v0

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    new-array v2, v0, [I

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v0, :cond_27

    if-lez v4, :cond_26

    add-int/lit8 v6, v4, -0x1

    aget v6, v2, v6

    goto :goto_1e

    :cond_26
    const/4 v6, 0x0

    :goto_1e
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v7

    const/16 v22, 0x1

    add-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    aput v6, v2, v4

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_27
    new-array v4, v1, [I

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v1, :cond_29

    if-lez v6, :cond_28

    add-int/lit8 v7, v6, -0x1

    aget v7, v4, v7

    goto :goto_20

    :cond_28
    const/4 v7, 0x0

    :goto_20
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v8

    const/16 v22, 0x1

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v8, v7

    aput v8, v4, v6

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_29
    move-object v8, v2

    move-object v10, v4

    move v2, v1

    goto :goto_1c

    :goto_21
    add-int/lit8 v4, v27, 0x1

    move/from16 v0, v25

    move-object/from16 v6, v28

    move/from16 v7, v31

    goto/16 :goto_15

    :cond_2a
    move-object/from16 v28, v6

    move/from16 v31, v7

    const/16 v22, 0x1

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v0

    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_2b

    add-int/lit8 v2, v19, 0x5

    invoke-virtual {v5, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2b
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_36

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v4

    const/16 v1, 0xff

    if-ne v4, v1, :cond_2c

    const/16 v1, 0x10

    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v4

    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    if-eqz v4, :cond_2e

    if-eqz v1, :cond_2e

    int-to-float v2, v4

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_23

    :cond_2c
    const/16 v1, 0x11

    if-ge v4, v1, :cond_2d

    sget-object v1, Landroidx/media3/container/NalUnitUtil;->b:[F

    aget v2, v1, v4

    goto :goto_23

    :cond_2d
    const-string v1, "Unexpected aspect_ratio_idc value: "

    invoke-static {v4, v1}, La;->u(ILjava/lang/String;)V

    :cond_2e
    :goto_23
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_2f
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_30

    move/from16 v4, v22

    goto :goto_24

    :cond_30
    move v4, v0

    :goto_24
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v3

    invoke-virtual {v5, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v0

    invoke-static {v3}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v1

    goto :goto_25

    :cond_31
    const/4 v0, -0x1

    const/4 v1, -0x1

    goto :goto_25

    :cond_32
    if-eqz v3, :cond_33

    iget-object v0, v3, Landroidx/media3/container/NalUnitUtil$H265VpsData;->d:Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    if-eqz v0, :cond_33

    iget-object v1, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v0, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;->b:[I

    aget v0, v0, v24

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-le v3, v0, :cond_33

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    iget v1, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->a:I

    iget v3, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->b:I

    iget v0, v0, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;->c:I

    move v4, v1

    move v1, v0

    move v0, v4

    move v4, v3

    goto :goto_25

    :cond_33
    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, -0x1

    :goto_25
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_34
    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    if-eqz v3, :cond_35

    mul-int/lit8 v14, v14, 0x2

    :cond_35
    move/from16 v19, v0

    move/from16 v21, v1

    move/from16 v20, v4

    goto :goto_26

    :cond_36
    const/16 v19, -0x1

    const/16 v20, -0x1

    const/16 v21, -0x1

    :goto_26
    new-instance v5, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-object v8, v11

    move/from16 v10, v23

    move-object/from16 v6, v28

    move/from16 v7, v31

    move v11, v9

    move v9, v13

    move v13, v15

    move/from16 v15, v17

    move/from16 v17, v2

    invoke-direct/range {v5 .. v21}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;ILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;IIIIIIIIFIIII)V

    return-object v5
.end method

.method public static j(II[B)Landroidx/media3/container/NalUnitUtil$H265VpsData;
    .locals 37

    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v3, v1, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->f(Landroidx/media3/container/ParsableNalUnitBitArray;)Landroidx/media3/container/NalUnitUtil$H265NalHeader;

    move-result-object v2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v9

    const/16 v10, 0x11

    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v0, v10, v9, v11}, Landroidx/media3/container/NalUnitUtil;->g(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v12

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    move v13, v14

    goto :goto_0

    :cond_0
    move v13, v9

    :goto_0
    if-gt v13, v9, :cond_1

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v13

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v15

    add-int/2addr v15, v10

    invoke-static {v12}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    move/from16 v16, v4

    new-instance v4, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    move/from16 p1, v5

    new-array v5, v10, [I

    invoke-direct {v4, v11, v5}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    const/4 v5, 0x2

    if-lt v7, v5, :cond_2

    if-lt v15, v5, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v14

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v16, :cond_3

    move v3, v10

    goto :goto_2

    :cond_3
    move v3, v14

    :goto_2
    move/from16 p2, v10

    add-int/lit8 v10, v13, 0x1

    if-lt v10, v7, :cond_4

    move/from16 v16, p2

    goto :goto_3

    :cond_4
    move/from16 v16, v14

    :goto_3
    if-eqz v11, :cond_85

    if-eqz v3, :cond_85

    if-nez v16, :cond_5

    goto/16 :goto_60

    :cond_5
    new-array v3, v5, [I

    aput v10, v3, p2

    aput v15, v3, v14

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    new-array v5, v15, [I

    new-array v8, v15, [I

    aget-object v17, v3, v14

    aput v14, v17, v14

    aput p2, v5, v14

    aput v14, v8, v14

    move/from16 v14, p2

    :goto_4
    if-ge v14, v15, :cond_8

    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_5
    if-gt v1, v13, :cond_7

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v19

    if-eqz v19, :cond_6

    aget-object v19, v3, v14

    add-int/lit8 v20, v18, 0x1

    aput v1, v19, v18

    aput v1, v8, v14

    move/from16 v18, v20

    :cond_6
    aput v18, v5, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v1, 0x4

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_9
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v1, :cond_17

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    if-eqz v14, :cond_b

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v19

    if-eqz v19, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v22, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_7
    const/16 v21, 0x0

    goto :goto_a

    :cond_b
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v19

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v20

    if-nez v19, :cond_d

    if-eqz v20, :cond_c

    goto :goto_9

    :cond_c
    move/from16 v22, v1

    goto :goto_7

    :cond_d
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v21

    move/from16 v22, v1

    if-eqz v21, :cond_e

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    if-eqz v21, :cond_f

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_f
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :goto_a
    const/4 v1, 0x0

    :goto_b
    if-gt v1, v9, :cond_16

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v23

    if-nez v23, :cond_10

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v23

    :cond_10
    if-eqz v23, :cond_11

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    const/16 v23, 0x0

    goto :goto_c

    :cond_11
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v23

    :goto_c
    if-nez v23, :cond_12

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v23

    move/from16 v24, v23

    move/from16 v23, v1

    move/from16 v1, v24

    :goto_d
    move-object/from16 v24, v2

    goto :goto_e

    :cond_12
    move/from16 v23, v1

    const/4 v1, 0x0

    goto :goto_d

    :goto_e
    add-int v2, v19, v20

    move-object/from16 v25, v3

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_15

    move/from16 v26, v2

    const/4 v2, 0x0

    :goto_10
    if-gt v2, v1, :cond_14

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    if-eqz v21, :cond_13

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_13
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v26

    goto :goto_f

    :cond_15
    add-int/lit8 v1, v23, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_b

    :cond_16
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v22

    goto/16 :goto_6

    :cond_17
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_18
    move-object/from16 v2, v24

    iget v1, v0, Landroidx/media3/container/ParsableNalUnitBitArray;->e:I

    if-lez v1, :cond_19

    const/16 v18, 0x8

    rsub-int/lit8 v14, v1, 0x8

    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_19
    const/4 v1, 0x0

    invoke-static {v0, v1, v9, v12}, Landroidx/media3/container/NalUnitUtil;->g(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    const/16 v14, 0x10

    move/from16 v19, v1

    new-array v1, v14, [Z

    move-object/from16 v20, v1

    move-object/from16 v24, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    if-ge v1, v14, :cond_1b

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v21

    aput-boolean v21, v20, v1

    if-eqz v21, :cond_1a

    add-int/lit8 v2, v2, 0x1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1b
    if-eqz v2, :cond_1c

    aget-boolean v1, v20, p2

    if-nez v1, :cond_1d

    :cond_1c
    move-object/from16 v2, v24

    goto/16 :goto_5f

    :cond_1d
    new-array v1, v2, [I

    move-object/from16 v22, v1

    const/4 v14, 0x0

    :goto_12
    sub-int v1, v2, v19

    if-ge v14, v1, :cond_1e

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v23

    aput v23, v22, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_1e
    add-int/lit8 v1, v2, 0x1

    new-array v1, v1, [I

    if-eqz v19, :cond_21

    move/from16 v14, p2

    :goto_13
    if-ge v14, v2, :cond_20

    move-object/from16 v23, v1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v14, :cond_1f

    aget v26, v23, v14

    aget v27, v22, v1

    add-int/lit8 v27, v27, 0x1

    add-int v27, v27, v26

    aput v27, v23, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1f
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v23

    goto :goto_13

    :cond_20
    move-object/from16 v23, v1

    aput p1, v23, v2

    :goto_15
    const/4 v1, 0x2

    goto :goto_16

    :cond_21
    move-object/from16 v23, v1

    goto :goto_15

    :goto_16
    new-array v14, v1, [I

    aput v2, v14, p2

    const/16 v17, 0x0

    aput v7, v14, v17

    invoke-static {v11, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    new-array v11, v7, [I

    aput v17, v11, v17

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v14

    move-object/from16 v26, v1

    move/from16 v1, p2

    :goto_17
    if-ge v1, v7, :cond_25

    if-eqz v14, :cond_22

    move/from16 v27, v1

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v28

    aput v28, v11, v27

    goto :goto_18

    :cond_22
    move/from16 v27, v1

    move/from16 v1, p1

    aput v27, v11, v27

    :goto_18
    if-nez v19, :cond_23

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v2, :cond_24

    aget-object v28, v26, v27

    aget v29, v22, v1

    move/from16 v30, v1

    add-int/lit8 v1, v29, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    aput v1, v28, v30

    add-int/lit8 v1, v30, 0x1

    goto :goto_19

    :cond_23
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v2, :cond_24

    aget-object v28, v26, v27

    aget v29, v11, v27

    add-int/lit8 v30, v1, 0x1

    aget v31, v23, v30

    shl-int v31, p2, v31

    add-int/lit8 v31, v31, -0x1

    and-int v29, v29, v31

    aget v31, v23, v1

    shr-int v29, v29, v31

    aput v29, v28, v1

    move/from16 v1, v30

    goto :goto_1a

    :cond_24
    add-int/lit8 v1, v27, 0x1

    const/16 p1, 0x6

    goto :goto_17

    :cond_25
    new-array v1, v10, [I

    move/from16 v2, p2

    move-object/from16 v19, v1

    const/4 v14, 0x0

    :goto_1b
    const/4 v1, -0x1

    if-ge v14, v7, :cond_2c

    aget v22, v11, v14

    aput v1, v19, v22

    move-object/from16 p1, v4

    const/4 v1, 0x0

    const/16 v22, 0x0

    :goto_1c
    const/16 v4, 0x10

    if-ge v1, v4, :cond_28

    aget-boolean v4, v20, v1

    if-eqz v4, :cond_27

    move/from16 v4, p2

    if-ne v1, v4, :cond_26

    aget v4, v11, v14

    aget-object v23, v26, v14

    aget v23, v23, v22

    aput v23, v19, v4

    :cond_26
    add-int/lit8 v22, v22, 0x1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    const/16 p2, 0x1

    goto :goto_1c

    :cond_28
    if-lez v14, :cond_2b

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v14, :cond_2a

    aget v4, v11, v14

    aget v4, v19, v4

    aget v22, v11, v1

    move/from16 v23, v1

    aget v1, v19, v22

    if-ne v4, v1, :cond_29

    goto :goto_1e

    :cond_29
    add-int/lit8 v1, v23, 0x1

    goto :goto_1d

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    :cond_2b
    :goto_1e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, p1

    const/16 p2, 0x1

    goto :goto_1b

    :cond_2c
    move-object/from16 p1, v4

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v14

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2d

    if-nez v14, :cond_2e

    :cond_2d
    move-object/from16 v4, p1

    move-object/from16 v2, v24

    goto/16 :goto_5e

    :cond_2e
    new-array v4, v2, [I

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_2f

    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v22

    aput v22, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2f
    new-array v1, v10, [I

    const/4 v14, 0x0

    :goto_20
    if-ge v14, v7, :cond_30

    move-object/from16 v22, v1

    aget v1, v11, v14

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v14, v22, v1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v22

    goto :goto_20

    :cond_30
    move-object/from16 v22, v1

    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v14, 0x0

    :goto_21
    if-gt v14, v13, :cond_32

    move/from16 v23, v2

    aget v2, v19, v14

    move-object/from16 v27, v4

    const/16 v26, 0x1

    add-int/lit8 v4, v23, -0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ltz v2, :cond_31

    aget v2, v27, v2

    goto :goto_22

    :cond_31
    const/4 v2, -0x1

    :goto_22
    new-instance v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    move-object/from16 v26, v5

    aget v5, v22, v14

    invoke-direct {v4, v5, v2}, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;-><init>(II)V

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, v23

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    goto :goto_21

    :cond_32
    move-object/from16 v26, v5

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v2, v4, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->b:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_33

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_33
    move-object/from16 v4, p1

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v2, v24

    if-gt v5, v13, :cond_35

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v14, v14, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->b:I

    move-object/from16 v24, v2

    const/4 v2, -0x1

    if-eq v14, v2, :cond_34

    goto :goto_24

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_35
    move-object/from16 v24, v2

    const/4 v2, -0x1

    move v5, v2

    :goto_24
    if-ne v5, v2, :cond_36

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_36
    move-object/from16 v2, v24

    const/4 v13, 0x2

    new-array v14, v13, [I

    const/16 v19, 0x1

    aput v7, v14, v19

    const/16 v17, 0x0

    aput v7, v14, v17

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Z

    move-object/from16 p1, v4

    const/4 v2, 0x2

    new-array v4, v2, [I

    aput v7, v4, v19

    aput v7, v4, v17

    invoke-static {v13, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    const/4 v4, 0x1

    :goto_25
    if-ge v4, v7, :cond_38

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v4, :cond_37

    aget-object v20, v14, v4

    aget-object v22, v19, v4

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v23

    aput-boolean v23, v22, v2

    aput-boolean v23, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_37
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v19

    goto :goto_25

    :cond_38
    move-object/from16 v19, v2

    const/4 v2, 0x1

    :goto_27
    if-ge v2, v7, :cond_3c

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v6, :cond_3b

    move/from16 v20, v4

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v2, :cond_3a

    aget-object v22, v19, v2

    aget-boolean v23, v22, v4

    if-eqz v23, :cond_39

    aget-object v23, v19, v4

    aget-boolean v23, v23, v20

    if-eqz v23, :cond_39

    const/16 v23, 0x1

    aput-boolean v23, v22, v20

    goto :goto_2a

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_3a
    :goto_2a
    add-int/lit8 v4, v20, 0x1

    goto :goto_28

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3c
    new-array v2, v10, [I

    const/4 v4, 0x0

    :goto_2b
    if-ge v4, v7, :cond_3e

    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/16 v22, 0x0

    :goto_2c
    if-ge v2, v4, :cond_3d

    aget-object v23, v14, v4

    aget-boolean v23, v23, v2

    add-int v22, v22, v23

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3d
    aget v2, v11, v4

    aput v22, v20, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v20

    goto :goto_2b

    :cond_3e
    move-object/from16 v20, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v2, v7, :cond_40

    aget v22, v11, v2

    aget v22, v20, v22

    if-nez v22, :cond_3f

    add-int/lit8 v4, v4, 0x1

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_40
    const/4 v2, 0x1

    if-le v4, v2, :cond_41

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_41
    move-object/from16 v4, p1

    new-array v2, v7, [I

    new-array v4, v15, [I

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v22

    if-eqz v22, :cond_42

    move-object/from16 v22, v4

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v7, :cond_43

    move/from16 v23, v4

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v27

    aput v27, v2, v23

    add-int/lit8 v4, v23, 0x1

    goto :goto_2e

    :cond_42
    move-object/from16 v22, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v7, v9}, Ljava/util/Arrays;->fill([IIII)V

    :cond_43
    const/4 v4, 0x0

    :goto_2f
    if-ge v4, v15, :cond_45

    move-object/from16 v23, v2

    move/from16 v27, v4

    move-object/from16 v28, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_30
    aget v8, v26, v27

    if-ge v2, v8, :cond_44

    aget-object v8, v25, v27

    aget v8, v8, v2

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v8, v8, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->a:I

    aget v8, v23, v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_44
    add-int/lit8 v4, v4, 0x1

    aput v4, v22, v27

    add-int/lit8 v4, v27, 0x1

    move-object/from16 v2, v23

    move-object/from16 v8, v28

    goto :goto_2f

    :cond_45
    move-object/from16 v28, v8

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v6, :cond_48

    add-int/lit8 v4, v2, 0x1

    move v8, v4

    :goto_32
    if-ge v8, v7, :cond_47

    aget-object v23, v14, v8

    aget-boolean v23, v23, v2

    if-eqz v23, :cond_46

    move/from16 v23, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    goto :goto_33

    :cond_46
    move/from16 v23, v2

    :goto_33
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v23

    goto :goto_32

    :cond_47
    move v2, v4

    goto :goto_31

    :cond_48
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    new-instance v6, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    invoke-virtual {v6, v12}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    if-le v2, v4, :cond_49

    invoke-virtual {v6, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    const/4 v4, 0x2

    :goto_34
    if-ge v4, v2, :cond_49

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v8

    invoke-static {v0, v8, v9, v3}, Landroidx/media3/container/NalUnitUtil;->g(Landroidx/media3/container/ParsableNalUnitBitArray;ZILandroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;)Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevel;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_49
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v4

    add-int/2addr v4, v15

    if-le v4, v15, :cond_4a

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_4a
    move-object/from16 v6, p1

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v9

    new-array v12, v8, [I

    const/16 v23, 0x1

    aput v10, v12, v23

    const/4 v8, 0x0

    aput v4, v12, v8

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[Z

    move/from16 v17, v8

    new-array v8, v4, [I

    new-array v6, v4, [I

    move-object/from16 v23, v6

    move/from16 v6, v17

    :goto_35
    if-ge v6, v15, :cond_4f

    aput v17, v8, v6

    aget v27, v28, v6

    aput v27, v23, v6

    if-nez v9, :cond_4b

    move/from16 v27, v6

    aget-object v6, v12, v27

    move-object/from16 v29, v8

    aget v8, v26, v27

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v11, v17

    const/4 v12, 0x1

    invoke-static {v6, v11, v8, v12}, Ljava/util/Arrays;->fill([ZIIZ)V

    aget v6, v26, v27

    aput v6, v29, v27

    :goto_36
    const/16 v17, 0x0

    goto :goto_39

    :cond_4b
    move/from16 v27, v6

    move-object/from16 v29, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    const/4 v12, 0x1

    if-ne v9, v12, :cond_4e

    aget v6, v28, v27

    const/4 v8, 0x0

    :goto_37
    aget v11, v26, v27

    if-ge v8, v11, :cond_4d

    aget-object v11, v31, v27

    aget-object v12, v25, v27

    aget v12, v12, v8

    if-ne v12, v6, :cond_4c

    const/4 v12, 0x1

    goto :goto_38

    :cond_4c
    const/4 v12, 0x0

    :goto_38
    aput-boolean v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    :cond_4d
    const/4 v12, 0x1

    aput v12, v29, v27

    goto :goto_36

    :cond_4e
    const/16 v17, 0x0

    aget-object v6, v31, v17

    aput-boolean v12, v6, v17

    aput v12, v29, v17

    :goto_39
    add-int/lit8 v6, v27, 0x1

    move-object/from16 v8, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    goto :goto_35

    :cond_4f
    move-object/from16 v29, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    const/4 v12, 0x1

    new-array v6, v10, [I

    const/4 v8, 0x2

    new-array v11, v8, [I

    aput v10, v11, v12

    aput v4, v11, v17

    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    :goto_3a
    if-ge v11, v4, :cond_5d

    if-ne v9, v8, :cond_51

    const/4 v8, 0x0

    :goto_3b
    aget v13, v26, v11

    if-ge v8, v13, :cond_51

    aget-object v13, v31, v11

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v27

    aput-boolean v27, v13, v8

    aget v13, v29, v11

    aget-object v27, v31, v11

    aget-boolean v27, v27, v8

    add-int v13, v13, v27

    aput v13, v29, v11

    if-eqz v27, :cond_50

    aget-object v13, v25, v11

    aget v13, v13, v8

    aput v13, v23, v11

    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_3b

    :cond_51
    if-nez v12, :cond_53

    aget-object v8, v25, v11

    const/16 v17, 0x0

    aget v8, v8, v17

    if-nez v8, :cond_54

    aget-object v8, v31, v11

    aget-boolean v8, v8, v17

    if-eqz v8, :cond_54

    const/4 v8, 0x1

    :goto_3c
    aget v13, v26, v11

    if-ge v8, v13, :cond_54

    aget-object v13, v25, v11

    aget v13, v13, v8

    if-ne v13, v5, :cond_52

    aget-object v13, v31, v11

    aget-boolean v13, v13, v5

    if-eqz v13, :cond_52

    move v12, v11

    :cond_52
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    :cond_53
    const/16 v17, 0x0

    :cond_54
    move/from16 v8, v17

    :goto_3d
    aget v13, v26, v11

    if-ge v8, v13, :cond_5b

    const/4 v13, 0x1

    if-le v2, v13, :cond_59

    aget-object v13, v10, v11

    aget-object v27, v31, v11

    aget-boolean v27, v27, v8

    aput-boolean v27, v13, v8

    move v13, v9

    move-object/from16 v27, v10

    int-to-double v9, v2

    sget-object v28, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v9, v10}, Lcom/google/common/math/DoubleMath;->c(D)I

    move-result v9

    aget-object v10, v27, v11

    aget-boolean v10, v10, v8

    if-nez v10, :cond_56

    aget-object v10, v25, v11

    aget v10, v10, v8

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v10, v10, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->a:I

    move/from16 v28, v2

    move/from16 v2, v17

    :goto_3e
    if-ge v2, v8, :cond_57

    aget-object v32, v25, v11

    move/from16 v33, v2

    aget v2, v32, v33

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;

    iget v2, v2, Landroidx/media3/container/NalUnitUtil$H265LayerInfo;->a:I

    aget-object v32, v19, v10

    aget-boolean v2, v32, v2

    if-eqz v2, :cond_55

    aget-object v2, v27, v11

    const/4 v10, 0x1

    aput-boolean v10, v2, v8

    goto :goto_3f

    :cond_55
    add-int/lit8 v2, v33, 0x1

    goto :goto_3e

    :cond_56
    move/from16 v28, v2

    :cond_57
    :goto_3f
    aget-object v2, v27, v11

    aget-boolean v2, v2, v8

    if-eqz v2, :cond_5a

    if-lez v12, :cond_58

    if-ne v11, v12, :cond_58

    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v2

    aput v2, v6, v8

    goto :goto_40

    :cond_58
    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    goto :goto_40

    :cond_59
    move/from16 v28, v2

    move v13, v9

    move-object/from16 v27, v10

    :cond_5a
    :goto_40
    add-int/lit8 v8, v8, 0x1

    move v9, v13

    move-object/from16 v10, v27

    move/from16 v2, v28

    goto :goto_3d

    :cond_5b
    move/from16 v28, v2

    move v13, v9

    move-object/from16 v27, v10

    aget v2, v29, v11

    const/4 v10, 0x1

    if-ne v2, v10, :cond_5c

    aget v2, v23, v11

    aget v2, v20, v2

    if-lez v2, :cond_5c

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_5c
    add-int/lit8 v11, v11, 0x1

    move v9, v13

    move-object/from16 v10, v27

    move/from16 v2, v28

    const/4 v8, 0x2

    goto/16 :goto_3a

    :cond_5d
    move-object/from16 v27, v10

    const/16 v17, 0x0

    if-nez v12, :cond_5e

    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v2, v24

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_5e
    move-object/from16 v2, v24

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    invoke-static {v8}, Lcom/google/common/collect/ImmutableList;->r(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v9

    new-array v10, v7, [I

    move/from16 v11, v17

    :goto_41
    if-ge v11, v8, :cond_65

    const/16 v12, 0x10

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v13

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v19

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v21

    move-object/from16 p1, v1

    if-eqz v21, :cond_60

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v1

    const/4 v12, 0x3

    if-ne v1, v12, :cond_5f

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_5f
    const/4 v12, 0x4

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v23

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v24

    move/from16 v33, v23

    move/from16 v34, v24

    goto :goto_42

    :cond_60
    move/from16 v1, v17

    move/from16 v33, v1

    move/from16 v34, v33

    :goto_42
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v12

    if-eqz v12, :cond_64

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v12

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v23

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v24

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v25

    move-object/from16 v28, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_62

    const/4 v2, 0x2

    if-ne v1, v2, :cond_61

    goto :goto_43

    :cond_61
    const/4 v2, 0x1

    goto :goto_44

    :cond_62
    :goto_43
    const/4 v2, 0x2

    :goto_44
    add-int v12, v12, v23

    mul-int/2addr v12, v2

    sub-int/2addr v13, v12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    const/4 v2, 0x2

    goto :goto_45

    :cond_63
    const/4 v2, 0x1

    :goto_45
    add-int v24, v24, v25

    mul-int v24, v24, v2

    sub-int v19, v19, v24

    :goto_46
    move/from16 v35, v13

    move/from16 v36, v19

    goto :goto_47

    :cond_64
    move-object/from16 v28, v2

    goto :goto_46

    :goto_47
    new-instance v31, Landroidx/media3/container/NalUnitUtil$H265RepFormat;

    move/from16 v32, v1

    invoke-direct/range {v31 .. v36}, Landroidx/media3/container/NalUnitUtil$H265RepFormat;-><init>(IIIII)V

    move-object/from16 v1, v31

    invoke-virtual {v9, v1}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    goto :goto_41

    :cond_65
    move-object/from16 p1, v1

    move-object/from16 v28, v2

    const/4 v2, 0x1

    if-le v8, v2, :cond_66

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_66

    int-to-double v1, v8

    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v1, v2}, Lcom/google/common/math/DoubleMath;->c(D)I

    move-result v1

    const/4 v2, 0x1

    :goto_48
    if-ge v2, v7, :cond_67

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v5

    aput v5, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_66
    const/4 v1, 0x1

    :goto_49
    if-ge v1, v7, :cond_67

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    :cond_67
    new-instance v5, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v5, v1, v10}, Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;-><init>(Ljava/util/List;[I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    const/4 v1, 0x1

    :goto_4a
    if-ge v1, v7, :cond_69

    aget v2, v30, v1

    aget v2, v20, v2

    if-nez v2, :cond_68

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_69
    const/4 v1, 0x1

    :goto_4b
    if-ge v1, v4, :cond_70

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v2

    move/from16 v8, v17

    :goto_4c
    aget v9, v22, v1

    if-ge v8, v9, :cond_6f

    if-lez v8, :cond_6a

    if-eqz v2, :cond_6a

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v9

    goto :goto_4d

    :cond_6a
    if-nez v8, :cond_6b

    const/4 v9, 0x1

    goto :goto_4d

    :cond_6b
    move/from16 v9, v17

    :goto_4d
    if-eqz v9, :cond_6e

    move/from16 v9, v17

    :goto_4e
    aget v10, v26, v1

    if-ge v9, v10, :cond_6d

    aget-object v10, v27, v1

    aget-boolean v10, v10, v9

    if-eqz v10, :cond_6c

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_6c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    :cond_6d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_6e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4c

    :cond_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_70
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    const/16 v16, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    goto :goto_51

    :cond_71
    const/4 v2, 0x1

    :goto_4f
    if-ge v2, v7, :cond_74

    move/from16 v4, v17

    :goto_50
    if-ge v4, v2, :cond_73

    aget-object v8, v14, v2

    aget-boolean v8, v8, v4

    if-eqz v8, :cond_72

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_74
    :goto_51
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    const/4 v2, 0x1

    :goto_52
    if-gt v2, v1, :cond_75

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    :cond_75
    const/16 v4, 0x8

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_84

    iget v1, v0, Landroidx/media3/container/ParsableNalUnitBitArray;->e:I

    if-lez v1, :cond_76

    rsub-int/lit8 v14, v1, 0x8

    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_76
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    goto :goto_53

    :cond_77
    const/4 v1, 0x1

    :goto_53
    if-eqz v1, :cond_78

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_78
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v2

    if-nez v1, :cond_79

    if-eqz v2, :cond_7f

    :cond_79
    move/from16 v4, v17

    :goto_54
    if-ge v4, v15, :cond_7f

    move/from16 v8, v17

    :goto_55
    aget v9, v22, v4

    if-ge v8, v9, :cond_7e

    if-eqz v1, :cond_7a

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v9

    goto :goto_56

    :cond_7a
    move/from16 v9, v17

    :goto_56
    if-eqz v2, :cond_7b

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v10

    goto :goto_57

    :cond_7b
    move/from16 v10, v17

    :goto_57
    if-eqz v9, :cond_7c

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_7c
    if-eqz v10, :cond_7d

    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_7f
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v1

    if-eqz v1, :cond_80

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    goto :goto_58

    :cond_80
    move v2, v7

    :goto_58
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->r(I)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    new-array v8, v7, [I

    move/from16 v9, v17

    :goto_59
    if-ge v9, v2, :cond_82

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v10

    if-eqz v10, :cond_81

    const/4 v10, 0x1

    :goto_5a
    const/16 v11, 0x8

    goto :goto_5b

    :cond_81
    move/from16 v10, v16

    goto :goto_5a

    :goto_5b
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v13

    invoke-static {v13}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v13

    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v14

    invoke-static {v14}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v14

    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    new-instance v15, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;

    invoke-direct {v15, v13, v10, v14}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfo;-><init>(III)V

    invoke-virtual {v4, v15}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_59

    :cond_82
    if-eqz v1, :cond_83

    const/4 v10, 0x1

    if-le v2, v10, :cond_83

    move/from16 v14, v17

    :goto_5c
    if-ge v14, v7, :cond_83

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v2

    aput v2, v8, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5c

    :cond_83
    new-instance v11, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {v11, v0, v8}, Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;-><init>(Ljava/util/List;[I)V

    goto :goto_5d

    :cond_84
    const/4 v11, 0x0

    :goto_5d
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    new-instance v4, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;

    invoke-direct {v4, v3, v6}, Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;-><init>(Ljava/util/List;[I)V

    move-object/from16 v3, p1

    move-object v6, v11

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :goto_5e
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :goto_5f
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1

    :cond_85
    :goto_60
    new-instance v1, Landroidx/media3/container/NalUnitUtil$H265VpsData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/container/NalUnitUtil$H265VpsData;-><init>(Landroidx/media3/container/NalUnitUtil$H265NalHeader;Ljava/util/List;Landroidx/media3/container/NalUnitUtil$H265ProfileTierLevelsAndIndices;Landroidx/media3/container/NalUnitUtil$H265RepFormatsAndIndices;Landroidx/media3/container/NalUnitUtil$H265VideoSignalInfosAndIndices;)V

    return-object v1
.end method

.method public static k(II[B)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 33

    const/4 v0, 0x1

    add-int/lit8 v1, p0, 0x1

    new-instance v2, Landroidx/media3/container/ParsableNalUnitBitArray;

    move/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct {v2, v4, v1, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v4

    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v5

    invoke-virtual {v2, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v6

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v7

    const/16 v3, 0x56

    const/16 v8, 0x2c

    const/16 v9, 0xf4

    const/16 v10, 0x7a

    const/16 v11, 0x6e

    const/4 v12, 0x3

    const/16 v15, 0x64

    if-eq v4, v15, :cond_1

    if-eq v4, v11, :cond_1

    if-eq v4, v10, :cond_1

    if-eq v4, v9, :cond_1

    if-eq v4, v8, :cond_1

    const/16 v14, 0x53

    if-eq v4, v14, :cond_1

    if-eq v4, v3, :cond_1

    const/16 v14, 0x76

    if-eq v4, v14, :cond_1

    const/16 v14, 0x80

    if-eq v4, v14, :cond_1

    const/16 v14, 0x8a

    if-ne v4, v14, :cond_0

    goto :goto_0

    :cond_0
    move v14, v0

    const/16 p1, 0x10

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto/16 :goto_8

    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v14

    if-ne v14, v12, :cond_2

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v16

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    :goto_1
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v17

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v18

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v19

    if-eqz v19, :cond_8

    if-eq v14, v12, :cond_3

    move v13, v1

    :goto_2
    const/16 p1, 0x10

    goto :goto_3

    :cond_3
    const/16 v19, 0xc

    move/from16 v13, v19

    goto :goto_2

    :goto_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v13, :cond_9

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v19

    if-eqz v19, :cond_7

    const/4 v9, 0x6

    if-ge v1, v9, :cond_4

    move/from16 v9, p1

    goto :goto_5

    :cond_4
    const/16 v9, 0x40

    :goto_5
    const/4 v10, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x8

    :goto_6
    if-ge v10, v9, :cond_7

    if-eqz v20, :cond_5

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    move-result v20

    add-int v11, v20, v21

    add-int/lit16 v11, v11, 0x100

    rem-int/lit16 v11, v11, 0x100

    move/from16 v20, v11

    :cond_5
    if-nez v20, :cond_6

    goto :goto_7

    :cond_6
    move/from16 v21, v20

    :goto_7
    add-int/lit8 v10, v10, 0x1

    const/16 v11, 0x6e

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    const/16 v9, 0xf4

    const/16 v10, 0x7a

    const/16 v11, 0x6e

    goto :goto_4

    :cond_8
    const/16 p1, 0x10

    :cond_9
    move/from16 v13, v18

    :goto_8
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v10

    add-int/lit8 v10, v10, 0x4

    move/from16 v18, v4

    move/from16 v24, v9

    const/16 v3, 0xf4

    :goto_9
    const/16 v19, 0x0

    goto :goto_b

    :cond_a
    if-ne v9, v0, :cond_c

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v10

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->g()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v11

    move/from16 v18, v4

    int-to-long v3, v11

    move/from16 v24, v9

    const/4 v11, 0x0

    :goto_a
    int-to-long v8, v11

    cmp-long v8, v8, v3

    if-gez v8, :cond_b

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_b
    move/from16 v19, v10

    const/16 v3, 0xf4

    const/4 v10, 0x0

    goto :goto_b

    :cond_c
    move/from16 v18, v4

    move/from16 v24, v9

    const/16 v3, 0xf4

    const/4 v10, 0x0

    goto :goto_9

    :goto_b
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v8

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v9

    add-int/2addr v9, v0

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v11

    rsub-int/lit8 v25, v11, 0x2

    mul-int v9, v9, v25

    if-nez v11, :cond_d

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_d
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    mul-int/lit8 v4, v4, 0x10

    mul-int/lit8 v9, v9, 0x10

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v26

    const/16 v27, 0x2

    if-eqz v26, :cond_11

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v26

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v28

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v29

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v30

    if-nez v14, :cond_e

    move/from16 v31, v0

    goto :goto_e

    :cond_e
    if-ne v14, v12, :cond_f

    move/from16 v31, v0

    goto :goto_c

    :cond_f
    move/from16 v31, v27

    :goto_c
    if-ne v14, v0, :cond_10

    move/from16 v14, v27

    goto :goto_d

    :cond_10
    move v14, v0

    :goto_d
    mul-int v25, v25, v14

    :goto_e
    add-int v26, v26, v28

    mul-int v26, v26, v31

    sub-int v4, v4, v26

    add-int v29, v29, v30

    mul-int v29, v29, v25

    sub-int v9, v9, v29

    :cond_11
    move v14, v9

    move v9, v4

    move/from16 v4, v18

    move/from16 v18, v10

    move v10, v14

    const/16 v14, 0x2c

    if-eq v4, v14, :cond_12

    const/16 v14, 0x56

    if-eq v4, v14, :cond_12

    if-eq v4, v15, :cond_12

    const/16 v14, 0x6e

    if-eq v4, v14, :cond_12

    const/16 v14, 0x7a

    if-eq v4, v14, :cond_12

    if-ne v4, v3, :cond_13

    :cond_12
    and-int/lit8 v3, v5, 0x10

    if-eqz v3, :cond_13

    const/4 v14, 0x0

    goto :goto_f

    :cond_13
    move/from16 v14, p1

    :goto_f
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    const/4 v15, -0x1

    const/high16 v20, 0x3f800000    # 1.0f

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v0

    const/16 v3, 0xff

    if-ne v0, v3, :cond_14

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v0

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v3

    if-eqz v0, :cond_16

    if-eqz v3, :cond_16

    int-to-float v0, v0

    int-to-float v3, v3

    div-float v20, v0, v3

    goto :goto_10

    :cond_14
    const/16 v3, 0x11

    if-ge v0, v3, :cond_15

    sget-object v3, Landroidx/media3/container/NalUnitUtil;->b:[F

    aget v20, v3, v0

    goto :goto_10

    :cond_15
    const-string v3, "Unexpected aspect_ratio_idc value: "

    invoke-static {v0, v3}, La;->u(ILjava/lang/String;)V

    :cond_16
    :goto_10
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_17
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_11

    :cond_18
    move/from16 v0, v27

    :goto_11
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v12

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->e(I)I

    move-result v15

    invoke-virtual {v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    invoke-static {v12}, Landroidx/media3/common/ColorInfo;->f(I)I

    move-result v3

    invoke-static {v15}, Landroidx/media3/common/ColorInfo;->g(I)I

    move-result v15

    move/from16 v32, v15

    move v15, v3

    move/from16 v3, v32

    goto :goto_12

    :cond_19
    move v3, v15

    goto :goto_12

    :cond_1a
    move v0, v15

    move v3, v0

    :goto_12
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v12

    if-eqz v12, :cond_1c

    const/16 v12, 0x41

    invoke-virtual {v2, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    :cond_1c
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->l(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    :cond_1d
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v21

    if-eqz v21, :cond_1e

    invoke-static {v2}, Landroidx/media3/container/NalUnitUtil;->l(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    :cond_1e
    if-nez v12, :cond_1f

    if-eqz v21, :cond_20

    :cond_1f
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    :cond_20
    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->d()Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v14

    invoke-virtual {v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    :cond_21
    move/from16 v21, v15

    move v15, v11

    move/from16 v11, v20

    move/from16 v20, v21

    move/from16 v21, v0

    move/from16 v22, v3

    move/from16 v23, v14

    goto :goto_13

    :cond_22
    move/from16 v23, v14

    move/from16 v21, v15

    move/from16 v22, v21

    move v15, v11

    move/from16 v11, v20

    move/from16 v20, v22

    :goto_13
    new-instance v3, Landroidx/media3/container/NalUnitUtil$SpsData;

    move/from16 v14, v16

    move/from16 v12, v17

    move/from16 v17, v24

    move/from16 v16, v1

    invoke-direct/range {v3 .. v23}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFIIZZIIIZIIII)V

    return-object v3
.end method

.method public static l(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->f()I

    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->i()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->j(I)V

    return-void
.end method

.method public static m(I[B)I
    .locals 8

    sget-object v0, Landroidx/media3/container/NalUnitUtil;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-ge v2, p0, :cond_4

    :goto_1
    add-int/lit8 v4, p0, -0x2

    if-ge v2, v4, :cond_2

    :try_start_0
    aget-byte v4, p1, v2

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    if-nez v4, :cond_1

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_2
    if-ge v2, p0, :cond_0

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->d:[I

    array-length v5, v4

    if-gt v5, v3, :cond_3

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Landroidx/media3/container/NalUnitUtil;->d:[I

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_3
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->d:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_0

    :cond_4
    sub-int/2addr p0, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_4
    if-ge v2, v3, :cond_5

    sget-object v6, Landroidx/media3/container/NalUnitUtil;->d:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    invoke-static {p1, v5, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    aput-byte v1, p1, v4

    add-int/lit8 v4, v4, 0x2

    aput-byte v1, p1, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    sub-int v1, p0, v4

    invoke-static {p1, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p0

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
