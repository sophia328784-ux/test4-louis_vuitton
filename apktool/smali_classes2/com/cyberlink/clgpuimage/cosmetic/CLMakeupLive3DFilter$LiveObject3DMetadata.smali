.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveObject3DMetadata"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public is_flip:Z

.field public is_valid:Z

.field left_ear_mid:Landroid/graphics/PointF;

.field left_ear_top:Landroid/graphics/PointF;

.field left_eye:Landroid/graphics/PointF;

.field public normal_pnp_matrices:[F

.field public pnp_matrices:[F

.field public pose_parameters:[F

.field right_ear_mid:Landroid/graphics/PointF;

.field right_ear_top:Landroid/graphics/PointF;

.field right_eye:Landroid/graphics/PointF;

.field public rotation:I

.field yaw_degree:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->is_valid:Z

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->pose_parameters:[F

    const/16 v0, 0x24

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->pnp_matrices:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->camera_matrix:[F

    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->normal_pnp_matrices:[F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_ear_top:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_ear_mid:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_eye:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_ear_top:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_ear_mid:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_eye:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->is_flip:Z

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->pose_parameters:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->pose_parameters:[F

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->pnp_matrices:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->pnp_matrices:[F

    const/16 v2, 0x24

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->camera_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->camera_matrix:[F

    const/16 v2, 0x9

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->normal_pnp_matrices:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->normal_pnp_matrices:[F

    const/16 v2, 0x30

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_ear_top:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_ear_top:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_ear_mid:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_ear_mid:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_eye:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->left_eye:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_ear_top:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_ear_top:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_ear_mid:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_ear_mid:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_eye:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->right_eye:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->yaw_degree:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveObject3DMetadata;->yaw_degree:F

    return-void
.end method
