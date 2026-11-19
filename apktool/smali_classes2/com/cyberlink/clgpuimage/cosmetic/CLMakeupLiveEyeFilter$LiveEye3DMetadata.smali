.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEye3DMetadata"
.end annotation


# static fields
.field public static brdf_lut_height:I

.field public static brdf_lut_width:I

.field public static m_brdf_texture_buffer:[B


# instance fields
.field public camera_matrix:[F

.field public is_flip:Z

.field public is_texcoord_changed:Z

.field public is_valid:Z

.field public normal_array:[F

.field normal_array_size:I

.field public normal_pnp_matrix:[F

.field public num_triangles:I

.field public pnp_matrix:[F

.field public rotation:I

.field public tangent_array:[F

.field tangent_array_size:I

.field public texcoord_array:[F

.field texcoord_array_size:I

.field public vertex_array:[F

.field vertex_array_size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_texcoord_changed:Z

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->camera_matrix:[F

    const/16 v2, 0xc

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->pnp_matrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_pnp_matrix:[F

    sput v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_width:I

    sput v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_height:I

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->m_brdf_texture_buffer:[B

    return-void
.end method


# virtual methods
.method public AllocArray(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->num_triangles:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    mul-int/lit8 v0, p1, 0x9

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array_size:I

    mul-int/lit8 v0, p1, 0x6

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array_size:I

    mul-int/lit8 v0, p1, 0x9

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array:[F

    mul-int/lit8 v0, p1, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    mul-int/lit8 p1, p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->num_triangles:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array_size:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array_size:I

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    return-void
.end method

.method public AllocateBrdfLutBuffer(II)V
    .locals 0

    sget p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_width:I

    if-ne p0, p1, :cond_1

    sget p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_height:I

    if-eq p0, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    sput p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_width:I

    sput p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_height:I

    mul-int/2addr p1, p2

    shl-int/lit8 p0, p1, 0x2

    new-array p0, p0, [B

    sput-object p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->m_brdf_texture_buffer:[B

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->AllocArray(I)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->num_triangles:I

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->AllocArray(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->num_triangles:I

    if-lez v0, :cond_2

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    if-eqz v0, :cond_2

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array:[F

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_array_size:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array_size:I

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    :cond_2
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_pnp_matrix:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->normal_pnp_matrix:[F

    const/16 v0, 0x10

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_width:I

    if-lez p0, :cond_3

    sget p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->brdf_lut_height:I

    if-lez p0, :cond_3

    sget-object p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->m_brdf_texture_buffer:[B

    array-length p1, p0

    invoke-static {p0, v1, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-void
.end method

.method public SetTangentArray()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    if-lez v1, :cond_2

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array_size:I

    if-lez v2, :cond_2

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    if-eq v1, v2, :cond_0

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array_size:I

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array_size:I

    if-ge v2, v4, :cond_2

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->vertex_array:[F

    aget v5, v4, v2

    add-int/lit8 v6, v2, 0x1

    aget v7, v4, v6

    add-int/lit8 v8, v2, 0x2

    aget v9, v4, v8

    const/4 v10, 0x3

    new-array v11, v10, [F

    aput v5, v11, v1

    const/4 v5, 0x1

    aput v7, v11, v5

    const/4 v7, 0x2

    aput v9, v11, v7

    add-int/lit8 v9, v2, 0x3

    aget v12, v4, v9

    add-int/lit8 v13, v2, 0x4

    aget v14, v4, v13

    add-int/lit8 v15, v2, 0x5

    aget v16, v4, v15

    move/from16 v17, v1

    new-array v1, v10, [F

    aput v12, v1, v17

    aput v14, v1, v5

    aput v16, v1, v7

    add-int/lit8 v12, v2, 0x6

    aget v14, v4, v12

    add-int/lit8 v16, v2, 0x7

    aget v18, v4, v16

    add-int/lit8 v19, v2, 0x8

    aget v4, v4, v19

    move/from16 v20, v5

    new-array v5, v10, [F

    aput v14, v5, v17

    aput v18, v5, v20

    aput v4, v5, v7

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->texcoord_array:[F

    aget v14, v4, v3

    add-int/lit8 v18, v3, 0x1

    aget v18, v4, v18

    new-array v10, v7, [F

    aput v14, v10, v17

    aput v18, v10, v20

    add-int/lit8 v14, v3, 0x2

    aget v14, v4, v14

    add-int/lit8 v18, v3, 0x3

    aget v18, v4, v18

    move-object/from16 v22, v1

    new-array v1, v7, [F

    aput v14, v1, v17

    aput v18, v1, v20

    add-int/lit8 v14, v3, 0x4

    aget v14, v4, v14

    add-int/lit8 v18, v3, 0x5

    aget v4, v4, v18

    move-object/from16 v18, v1

    new-array v1, v7, [F

    aput v14, v1, v17

    aput v4, v1, v20

    const/4 v4, 0x3

    new-array v14, v4, [F

    aget v21, v22, v17

    aget v23, v11, v17

    sub-float v21, v21, v23

    aget v24, v22, v20

    aget v25, v11, v20

    sub-float v24, v24, v25

    aget v22, v22, v7

    aget v11, v11, v7

    sub-float v22, v22, v11

    move/from16 v26, v7

    new-array v7, v4, [F

    aput v21, v7, v17

    aput v24, v7, v20

    aput v22, v7, v26

    aget v21, v5, v17

    sub-float v21, v21, v23

    aget v22, v5, v20

    sub-float v22, v22, v25

    aget v5, v5, v26

    sub-float/2addr v5, v11

    new-array v4, v4, [F

    aput v21, v4, v17

    aput v22, v4, v20

    aput v5, v4, v26

    aget v5, v18, v17

    aget v11, v10, v17

    sub-float/2addr v5, v11

    aget v18, v18, v20

    aget v10, v10, v20

    sub-float v18, v18, v10

    move-object/from16 v21, v1

    move/from16 v22, v2

    move/from16 v1, v26

    new-array v2, v1, [F

    aput v5, v2, v17

    aput v18, v2, v20

    aget v5, v21, v17

    sub-float/2addr v5, v11

    aget v11, v21, v20

    sub-float/2addr v11, v10

    new-array v10, v1, [F

    aput v5, v10, v17

    aput v11, v10, v20

    aget v1, v2, v17

    aget v5, v10, v20

    mul-float/2addr v1, v5

    aget v11, v10, v17

    move/from16 v18, v1

    aget v1, v2, v20

    mul-float/2addr v11, v1

    sub-float v11, v18, v11

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v11, v18, v11

    aget v21, v7, v17

    move-object/from16 v23, v2

    mul-float v2, v5, v21

    move/from16 v21, v3

    aget v3, v4, v17

    invoke-static {v1, v3, v2, v11}, Lpq0;->a(FFFF)F

    move-result v2

    aput v2, v14, v17

    aget v3, v7, v20

    mul-float/2addr v5, v3

    aget v3, v4, v20

    invoke-static {v1, v3, v5, v11}, Lpq0;->a(FFFF)F

    move-result v1

    aput v1, v14, v20

    aget v3, v10, v20

    const/16 v26, 0x2

    aget v5, v7, v26

    mul-float/2addr v3, v5

    aget v5, v23, v20

    aget v4, v4, v26

    invoke-static {v5, v4, v3, v11}, Lpq0;->a(FFFF)F

    move-result v3

    aput v3, v14, v26

    mul-float/2addr v2, v2

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    mul-float/2addr v3, v3

    add-float/2addr v3, v1

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v18, v1

    :goto_1
    aget v1, v14, v17

    div-float v1, v1, v18

    aput v1, v14, v17

    aget v2, v14, v20

    div-float v2, v2, v18

    aput v2, v14, v20

    const/16 v26, 0x2

    aget v2, v14, v26

    div-float v2, v2, v18

    aput v2, v14, v26

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveEyeFilter$LiveEye3DMetadata;->tangent_array:[F

    aput v1, v2, v22

    aget v1, v14, v20

    aput v1, v2, v6

    aget v1, v14, v26

    aput v1, v2, v8

    aget v1, v14, v17

    aput v1, v2, v9

    aget v1, v14, v20

    aput v1, v2, v13

    aget v1, v14, v26

    aput v1, v2, v15

    aget v1, v14, v17

    aput v1, v2, v12

    aget v1, v14, v20

    aput v1, v2, v16

    aget v1, v14, v26

    aput v1, v2, v19

    add-int/lit8 v2, v22, 0x9

    add-int/lit8 v3, v21, 0x6

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_2
    return-void
.end method
