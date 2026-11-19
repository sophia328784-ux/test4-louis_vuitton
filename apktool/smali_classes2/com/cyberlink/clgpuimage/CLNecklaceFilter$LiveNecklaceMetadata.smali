.class public Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLNecklaceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveNecklaceMetadata"
.end annotation


# instance fields
.field public is_flip:Z

.field public is_valid:Z

.field public luma_info:[F

.field mask_inference_height:I

.field mask_inference_width:I

.field public mask_trans_ax:F

.field public mask_trans_ay:F

.field public mask_trans_bx:F

.field public mask_trans_by:F

.field public neck_left_point:[F

.field public neck_right_point:[F

.field public necklace_shift:[F

.field public normal_pnp_matrices:[F

.field public pnp_matrices:[F

.field public projection_matrix:[F

.field rotation:I

.field public visible_mask:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->is_valid:Z

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->pnp_matrices:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->projection_matrix:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->normal_pnp_matrices:[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->necklace_shift:[F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->visible_mask:[B

    const/16 v2, 0x2a

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->luma_info:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->neck_left_point:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->neck_right_point:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_height:I

    return-void
.end method


# virtual methods
.method public AllocateVisibleMask(II)V
    .locals 0

    mul-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->visible_mask:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;)V
    .locals 6

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->is_flip:Z

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->pnp_matrices:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->pnp_matrices:[F

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->projection_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->projection_matrix:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->normal_pnp_matrices:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->normal_pnp_matrices:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->necklace_shift:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->necklace_shift:[F

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_width:I

    iget v1, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_height:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_height:I

    mul-int/2addr v0, v1

    shl-int/2addr v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->visible_mask:[B

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->visible_mask:[B

    if-eqz v1, :cond_1

    iget v4, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_width:I

    iget v5, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_inference_height:I

    mul-int/2addr v4, v5

    shl-int/2addr v4, v3

    invoke-static {v1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->luma_info:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->luma_info:[F

    const/16 v4, 0x2a

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->neck_left_point:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->neck_left_point:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->neck_right_point:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->neck_right_point:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_ax:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_ax:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_ay:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_ay:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_bx:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_bx:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_by:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;->mask_trans_by:F

    return-void
.end method
