.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;
.super Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final b:[B

.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:F

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:F

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:F


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v0, 0x3

    new-array v5, v0, [F

    fill-array-data v5, :array_0

    new-array v6, v0, [F

    fill-array-data v6, :array_1

    new-array v7, v0, [F

    fill-array-data v7, :array_2

    new-array v9, v0, [F

    fill-array-data v9, :array_3

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    const/16 p0, 0x100

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->b:[B

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a(IIIIIIIIIIIIIIIIIII)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v4, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v5, p8

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move/from16 v6, p14

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/16 v7, 0x32

    if-gt v2, v7, :cond_0

    mul-int/2addr v4, v2

    div-int/2addr v4, v7

    :goto_0
    mul-int/2addr v6, v2

    div-int/2addr v6, v7

    goto :goto_2

    :cond_0
    if-ge v4, v7, :cond_1

    mul-int/2addr v4, v2

    div-int/2addr v4, v7

    goto :goto_1

    :cond_1
    rsub-int/lit8 v4, v4, 0x64

    rsub-int/lit8 v8, v2, 0x64

    mul-int/2addr v8, v4

    div-int/2addr v8, v7

    rsub-int/lit8 v4, v8, 0x64

    :goto_1
    if-ge v6, v7, :cond_2

    goto :goto_0

    :cond_2
    rsub-int/lit8 v6, v6, 0x64

    rsub-int/lit8 v2, v2, 0x64

    mul-int/2addr v2, v6

    div-int/2addr v2, v7

    rsub-int/lit8 v6, v2, 0x64

    :goto_2
    const/16 v2, 0x100

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->b:[B

    if-nez v4, :cond_4

    move v7, v1

    :goto_3
    if-ge v7, v2, :cond_3

    aput-byte v1, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    move/from16 v1, p2

    goto/16 :goto_6

    :cond_4
    int-to-float v7, v4

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    const v9, 0x3b03126f    # 0.002f

    mul-float/2addr v7, v9

    const/high16 v9, 0x43340000    # 180.0f

    add-float v10, v7, v9

    div-float/2addr v10, v8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3fe69696a0000000L    # 0.7058823704719543

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v10, v12

    :goto_4
    const/16 v14, 0xb4

    if-ge v1, v14, :cond_5

    int-to-float v14, v1

    div-float v15, v14, v8

    move/from16 p1, v8

    move/from16 p3, v9

    float-to-double v8, v15

    move/from16 p8, v11

    const-wide v15, 0x406fe00000000000L    # 255.0

    float-to-double v11, v10

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v15

    double-to-float v8, v8

    rsub-int v9, v1, 0xb4

    int-to-float v9, v9

    div-float v9, v9, p3

    mul-float v11, v14, v9

    sub-float v9, p8, v9

    mul-float/2addr v9, v8

    add-float/2addr v9, v11

    sub-float/2addr v9, v14

    float-to-int v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v8, p1

    move/from16 v9, p3

    move/from16 v11, p8

    goto :goto_4

    :cond_5
    move/from16 p1, v8

    move/from16 p8, v11

    const-wide v15, 0x406fe00000000000L    # 255.0

    :goto_5
    if-ge v14, v2, :cond_3

    int-to-float v1, v14

    div-float v8, v1, p1

    float-to-double v8, v8

    float-to-double v11, v10

    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v8, v15

    double-to-float v8, v8

    add-int/lit16 v9, v14, -0xb4

    int-to-float v9, v9

    const/high16 v11, 0x42960000    # 75.0f

    div-float/2addr v9, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v9, v11

    sub-float v11, p8, v9

    add-float v9, v1, v7

    mul-float/2addr v9, v11

    sub-float v11, p8, v11

    mul-float/2addr v11, v8

    add-float/2addr v11, v9

    sub-float/2addr v11, v1

    float-to-int v1, v11

    int-to-byte v1, v1

    aput-byte v1, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :goto_6
    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->a:I

    int-to-float v1, v4

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->c:F

    move/from16 v1, p4

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->d:I

    move/from16 v1, p5

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->e:I

    move/from16 v1, p6

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->f:F

    int-to-float v1, v5

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->h:F

    move/from16 v3, p7

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->g:I

    move/from16 v3, p9

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->i:I

    move/from16 v3, p10

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->j:I

    move/from16 v3, p11

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->k:I

    move/from16 v3, p12

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->l:I

    move/from16 v3, p13

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->m:I

    int-to-float v3, v6

    mul-float/2addr v3, v2

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->n:F

    move/from16 v2, p15

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->o:I

    move/from16 v2, p16

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->p:I

    move/from16 v2, p17

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->q:I

    move/from16 v2, p18

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->r:I

    move/from16 v2, p19

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->s:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$a;->t:F

    return-void
.end method
