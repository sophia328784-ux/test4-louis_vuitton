.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveConcealerMetadata"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public color_spot_intensity:I

.field public color_under_eye_intensity:I

.field public concealer_color:[I

.field concealer_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

.field public coverage_intensity:I

.field public frame_height:I

.field public frame_width:I

.field public is_front_camera:Z

.field public is_have_eyeglass:Z

.field public is_have_mask:Z

.field public is_texcoord_changed:Z

.field public is_valid:Z

.field public left_eye_right:Landroid/graphics/PointF;

.field public normal_array:[F

.field public normal_pnp_matrix:[F

.field public num_triangles:I

.field public pitch_degree:F

.field public pnp_matrix:[F

.field public pose_parameters:[F

.field public right_eye_left:Landroid/graphics/PointF;

.field public roll_degree:F

.field public rotation:I

.field template_data:[B

.field public template_height:I

.field public template_stride:I

.field public template_width:I

.field public texcoord_array:[F

.field public vertex_array:[F

.field public yaw_degree:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->rotation:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_front_camera:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->vertex_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_texcoord_changed:Z

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->camera_matrix:[F

    const/16 v2, 0xc

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pnp_matrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_pnp_matrix:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_data:[B

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_stride:I

    const/4 v1, 0x6

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pose_parameters:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->coverage_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_spot_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_under_eye_intensity:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_color:[I

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_eyeglass:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_mask:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->roll_degree:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pitch_degree:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->yaw_degree:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->left_eye_right:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->right_eye_left:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public AllocArray(III)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->num_triangles:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    :cond_1
    :goto_0
    mul-int p1, p2, p3

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_data:[B

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_width:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_height:I

    shl-int/lit8 p1, p2, 0x2

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_stride:I

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->AllocArray(III)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_front_camera:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_front_camera:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->num_triangles:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_width:I

    iget v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_height:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->AllocArray(III)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->num_triangles:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->vertex_array:[F

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_data:[B

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_data:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pose_parameters:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pose_parameters:[F

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->coverage_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->coverage_intensity:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_spot_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_spot_intensity:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_under_eye_intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_under_eye_intensity:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_color:[I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_color:[I

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_eyeglass:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_eyeglass:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_mask:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_mask:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->roll_degree:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->roll_degree:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pitch_degree:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pitch_degree:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->yaw_degree:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->yaw_degree:F

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->left_eye_right:Landroid/graphics/PointF;

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->left_eye_right:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->right_eye_left:Landroid/graphics/PointF;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->right_eye_left:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method
