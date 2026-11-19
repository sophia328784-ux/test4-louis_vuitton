.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFaceArtMetadata"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public is_blend_data_valid:Z

.field public is_flip:Z

.field public is_layer2_texcoord_changed:Z

.field public is_layer2_valid:Z

.field public is_texcoord_changed:Z

.field public is_valid:Z

.field public left_ear_hori_line:[F

.field public left_ear_location_factors:[F

.field public left_ear_vert_line:[F

.field public normal_array:[F

.field public normal_pnp_matrix:[F

.field public num_triangles:I

.field public pnp_matrix:[F

.field public right_ear_hori_line:[F

.field public right_ear_location_factors:[F

.field public right_ear_vert_line:[F

.field public rotation:I

.field public texcoord_array:[F

.field public vertex_array:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->vertex_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_texcoord_changed:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_texcoord_changed:Z

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->camera_matrix:[F

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->pnp_matrix:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_pnp_matrix:[F

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_blend_data_valid:Z

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_hori_line:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_vert_line:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_location_factors:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_hori_line:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_vert_line:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_location_factors:[F

    return-void
.end method


# virtual methods
.method public AllocArray(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->num_triangles:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_valid:Z

    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_valid:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_valid:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->AllocArray(I)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->num_triangles:I

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->AllocArray(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->num_triangles:I

    if-lez v0, :cond_2

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->vertex_array:[F

    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_texcoord_changed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_layer2_texcoord_changed:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->camera_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->pnp_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_pnp_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_blend_data_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->is_blend_data_valid:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_hori_line:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_hori_line:[F

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_vert_line:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_vert_line:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_location_factors:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->left_ear_location_factors:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_hori_line:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_hori_line:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_vert_line:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_vert_line:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_location_factors:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceArtFilter$LiveFaceArtMetadata;->right_ear_location_factors:[F

    invoke-static {p1, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method
