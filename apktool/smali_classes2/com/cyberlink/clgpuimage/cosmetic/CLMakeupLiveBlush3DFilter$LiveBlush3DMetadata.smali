.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveBlush3DMetadata"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public face_3d_xyz:[F

.field public is_flip:Z

.field public is_texcoord_changed:Z

.field public is_valid:Z

.field public m_satin_texture_buffer:[B

.field public m_shimmer_texture_buffer:[B

.field public normal_pnp_matrix:[F

.field public normal_vectors:[F

.field public num_triangles:I

.field public pnp_matrix:[F

.field public pose_parameters:[F

.field public rotation:I

.field public satin_texture_height:I

.field public satin_texture_width:I

.field public shimmer_density:F

.field public shimmer_texture_height:I

.field public shimmer_texture_width:I

.field public texcoords:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->rotation:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_flip:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->num_triangles:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_texcoord_changed:Z

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pnp_matrix:[F

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->camera_matrix:[F

    const/16 v1, 0x10

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_pnp_matrix:[F

    const/4 v1, 0x6

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pose_parameters:[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    const/16 v1, 0x910

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    const/16 v2, 0x870

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_density:F

    return-void
.end method


# virtual methods
.method public AllocArray(IIIII)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->num_triangles:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    :cond_1
    :goto_0
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    if-ne p1, p2, :cond_2

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    if-eq p1, p3, :cond_3

    :cond_2
    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    :cond_3
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    if-ne p1, p4, :cond_4

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    if-eq p1, p5, :cond_5

    :cond_4
    iput p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iput p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    :cond_5
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    mul-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;)V
    .locals 13

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_valid:Z

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->AllocArray(IIIII)V

    return-void

    :cond_0
    move-object v1, p0

    iget p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->rotation:I

    iput p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->rotation:I

    iget-boolean p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_flip:Z

    iput-boolean p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_flip:Z

    iget v8, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->num_triangles:I

    iget v9, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iget v10, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    move v11, v9

    move v12, v10

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->AllocArray(IIIII)V

    iget p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->num_triangles:I

    const/4 v0, 0x0

    if-lez p0, :cond_1

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    if-eqz p0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_texcoord_changed:Z

    iput-boolean p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_texcoord_changed:Z

    iget-boolean p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_texcoord_changed:Z

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->camera_matrix:[F

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pnp_matrix:[F

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_pnp_matrix:[F

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pose_parameters:[F

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pose_parameters:[F

    const/4 v3, 0x6

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    if-eqz p0, :cond_4

    iget-object p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    if-eqz p0, :cond_2

    iget p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    if-ne p0, v2, :cond_2

    iget p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    if-eq p0, v2, :cond_3

    :cond_2
    iget p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    iput p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_height:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    mul-int/2addr p0, v2

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    :cond_3
    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_satin_texture_buffer:[B

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    if-eqz p0, :cond_7

    iget-object p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    if-eqz p0, :cond_5

    iget p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    if-ne p0, v2, :cond_5

    iget p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->satin_texture_width:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    if-eq p0, v2, :cond_6

    :cond_5
    iget p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iput p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_height:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    iput v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_texture_width:I

    mul-int/2addr p0, v2

    new-array p0, p0, [B

    iput-object p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    :cond_6
    iget-object p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    iget-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->m_shimmer_texture_buffer:[B

    array-length v3, p0

    invoke-static {p0, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_density:F

    iput p0, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->shimmer_density:F

    :cond_7
    return-void
.end method
