.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$f;
.super Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


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

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    return-void

    nop

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
