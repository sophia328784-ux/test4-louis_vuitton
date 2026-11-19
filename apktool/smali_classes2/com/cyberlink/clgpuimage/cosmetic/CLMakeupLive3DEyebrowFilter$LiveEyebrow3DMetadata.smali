.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEyebrow3DMetadata"
.end annotation


# instance fields
.field public analyzing_frame_height:I

.field public analyzing_frame_width:I

.field public camera_matrix:[F

.field public eyebrow_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

.field public intensity:I

.field public is_flip:Z

.field public is_texcoord_changed:Z

.field public is_valid:Z

.field public left_brow_color:[I

.field public left_lower_parabola_inter_factors:[F

.field public left_lower_parabola_side_coords:[F

.field public left_lower_transform_factors:[F

.field public left_right_brow_thickness:[F

.field public left_skin_color_luma:[F

.field public left_upper_parabola_inter_factors:[F

.field public left_upper_parabola_side_coords:[F

.field public left_upper_transform_factors:[F

.field public normal_array:[F

.field public normal_pnp_matrix:[F

.field public num_triangles:I

.field public pnp_matrix:[F

.field public right_brow_color:[I

.field public right_lower_parabola_inter_factors:[F

.field public right_lower_parabola_side_coords:[F

.field public right_lower_transform_factors:[F

.field public right_skin_color_luma:[F

.field public right_upper_parabola_inter_factors:[F

.field public right_upper_parabola_side_coords:[F

.field public right_upper_transform_factors:[F

.field public rotation:I

.field public texcoord_array:[F

.field public vertex_array:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_valid:Z

    const/16 v1, 0x5a

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->rotation:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_flip:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_texcoord_changed:Z

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->camera_matrix:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->pnp_matrix:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_pnp_matrix:[F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->intensity:I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->EYEBROW_ORIGINAL_MODE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->eyebrow_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_brow_color:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_brow_color:[I

    const/4 v0, 0x6

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_skin_color_luma:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_skin_color_luma:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_transform_factors:[F

    const/4 v1, 0x4

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_side_coords:[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_inter_factors:[F

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_transform_factors:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_side_coords:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_inter_factors:[F

    new-array v3, v0, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_transform_factors:[F

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_side_coords:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_inter_factors:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_transform_factors:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_side_coords:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_inter_factors:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_right_brow_thickness:[F

    return-void
.end method


# virtual methods
.method public AllocArray(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->num_triangles:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;)V
    .locals 6

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->AllocArray(I)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->num_triangles:I

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->AllocArray(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->num_triangles:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->intensity:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->intensity:I

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->eyebrow_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->eyebrow_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_brow_color:[I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_brow_color:[I

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_brow_color:[I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_brow_color:[I

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_skin_color_luma:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_skin_color_luma:[F

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_skin_color_luma:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_skin_color_luma:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_side_coords:[F

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_inter_factors:[F

    const/4 v5, 0x2

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_side_coords:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_side_coords:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_transform_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_transform_factors:[F

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_side_coords:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_side_coords:[F

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_inter_factors:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_inter_factors:[F

    invoke-static {v0, v1, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_right_brow_thickness:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_right_brow_thickness:[F

    invoke-static {p1, v1, p0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
