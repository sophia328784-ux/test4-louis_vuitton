.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFaceDistortionMetadata"
.end annotation


# instance fields
.field public boundary_factors:[F

.field public gpu_float_factors:[F

.field public hori_offsets:[F

.field public hori_trans_factors:[F

.field public is_flip:Z

.field public is_valid:Z

.field public rotation:I

.field public transform_factors:[F

.field public view_frame_height:I

.field public view_frame_width:I

.field public warp_value_factor:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->is_valid:Z

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->gpu_float_factors:[F

    const/16 v0, 0x1e

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->transform_factors:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_trans_factors:[F

    const/4 v0, 0x6

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_offsets:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->boundary_factors:[F

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->is_valid:Z

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->view_frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->view_frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->view_frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->view_frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->warp_value_factor:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->warp_value_factor:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->gpu_float_factors:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->gpu_float_factors:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->transform_factors:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->transform_factors:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_trans_factors:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_trans_factors:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_offsets:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->hori_offsets:[F

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-ge v0, v2, :cond_5

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->boundary_factors:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceDistortionFilter$LiveFaceDistortionMetadata;->boundary_factors:[F

    aget v3, v3, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method
