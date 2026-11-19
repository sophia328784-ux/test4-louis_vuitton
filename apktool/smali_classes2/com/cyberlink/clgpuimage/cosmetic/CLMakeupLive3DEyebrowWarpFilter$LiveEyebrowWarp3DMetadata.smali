.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEyebrowWarp3DMetadata"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public camera_matrix_pose_scale:[F

.field public curvature:I

.field public definition:I

.field public frontal_subsample_warp_table_height:I

.field public frontal_subsample_warp_table_width:I

.field public frontal_warp_table_height:I

.field public frontal_warp_table_width:I

.field public is_flip:Z

.field public is_valid:Z

.field public left_brow_lower_clear_strength:F

.field public left_lower_parabola_inter_factors:[F

.field public left_lower_parabola_side_coords:[F

.field public left_lower_transform_factors:[F

.field public left_right_brow_thickness:[F

.field public left_upper_parabola_inter_factors:[F

.field public left_upper_parabola_side_coords:[F

.field public left_upper_transform_factors:[F

.field public max_step_amount:I

.field public normal_array:[F

.field public normal_pnp_matrix:[F

.field public num_triangles:I

.field public pnp_matrix:[F

.field public right_brow_lower_clear_strength:F

.field public right_lower_parabola_inter_factors:[F

.field public right_lower_parabola_side_coords:[F

.field public right_lower_transform_factors:[F

.field public right_upper_parabola_inter_factors:[F

.field public right_upper_parabola_side_coords:[F

.field public right_upper_transform_factors:[F

.field public rotation:I

.field public rotation_degree:[F

.field public sample_vector:[F

.field public sample_vector_horizontal:[F

.field public smooth_left_right_bound:[F

.field public src_brow_thickness_factor:F

.field public texcoord_array:[F

.field public vertex_array:[F

.field public warp_transform_factors:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_valid:Z

    const/16 v1, 0x5a

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_flip:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->vertex_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->pnp_matrix:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_pnp_matrix:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->definition:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->curvature:I

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector_horizontal:[F

    const/4 v2, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation_degree:[F

    const/4 v2, 0x6

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_transform_factors:[F

    const/4 v3, 0x4

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_side_coords:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_inter_factors:[F

    new-array v4, v2, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_transform_factors:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_side_coords:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_inter_factors:[F

    new-array v4, v2, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_transform_factors:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_side_coords:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_inter_factors:[F

    new-array v4, v2, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_transform_factors:[F

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_side_coords:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_inter_factors:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_right_brow_thickness:[F

    const/4 v3, 0x0

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->src_brow_thickness_factor:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_brow_lower_clear_strength:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_brow_lower_clear_strength:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_height:I

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix_pose_scale:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->max_step_amount:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->warp_transform_factors:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->smooth_left_right_bound:[F

    return-void
.end method


# virtual methods
.method public AllocArray(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->num_triangles:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;)V
    .locals 6

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->AllocArray(I)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->num_triangles:I

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->AllocArray(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->num_triangles:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->vertex_array:[F

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->definition:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->definition:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->curvature:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->curvature:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector:[F

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector_horizontal:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector_horizontal:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation_degree:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation_degree:[F

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_transform_factors:[F

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_side_coords:[F

    const/4 v5, 0x4

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_side_coords:[F

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_side_coords:[F

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_side_coords:[F

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_right_brow_thickness:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_right_brow_thickness:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->src_brow_thickness_factor:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->src_brow_thickness_factor:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_brow_lower_clear_strength:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_brow_lower_clear_strength:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_brow_lower_clear_strength:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_brow_lower_clear_strength:F

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_height:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix_pose_scale:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix_pose_scale:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_width:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_height:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_height:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->max_step_amount:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->max_step_amount:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->warp_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->warp_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->smooth_left_right_bound:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->smooth_left_right_bound:[F

    invoke-static {p1, v1, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
