.class public abstract Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->b:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->c:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->d:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    return v0
.end method

.method public static b(Lcom/cyberlink/clgpuimage/Rotation;ZZ)[F
    .locals 17

    sget-object v0, Lcom/cyberlink/clgpuimage/util/a;->a:[I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a:[F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->d:[F

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->c:[F

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->b:[F

    :goto_0
    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz p1, :cond_3

    new-array v10, v4, [F

    aget v11, v0, v9

    invoke-static {v11}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v11

    aput v11, v10, v9

    aget v11, v0, v3

    aput v11, v10, v3

    aget v11, v0, v2

    invoke-static {v11}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v11

    aput v11, v10, v2

    aget v11, v0, v1

    aput v11, v10, v1

    aget v11, v0, v8

    invoke-static {v11}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v11

    aput v11, v10, v8

    aget v11, v0, v7

    aput v11, v10, v7

    aget v11, v0, v6

    invoke-static {v11}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v11

    aput v11, v10, v6

    aget v0, v0, v5

    aput v0, v10, v5

    move-object v0, v10

    :cond_3
    if-eqz p2, :cond_4

    aget v10, v0, v9

    aget v11, v0, v3

    invoke-static {v11}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v11

    aget v12, v0, v2

    aget v13, v0, v1

    invoke-static {v13}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v13

    aget v14, v0, v8

    aget v15, v0, v7

    invoke-static {v15}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v15

    aget v16, v0, v6

    aget v0, v0, v5

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->a(F)F

    move-result v0

    new-array v4, v4, [F

    aput v10, v4, v9

    aput v11, v4, v3

    aput v12, v4, v2

    aput v13, v4, v1

    aput v14, v4, v8

    aput v15, v4, v7

    aput v16, v4, v6

    aput v0, v4, v5

    return-object v4

    :cond_4
    return-object v0
.end method
