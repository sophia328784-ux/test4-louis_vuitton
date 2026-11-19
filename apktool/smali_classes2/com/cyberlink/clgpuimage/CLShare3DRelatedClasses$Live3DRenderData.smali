.class public Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Live3DRenderData"
.end annotation


# instance fields
.field public ambient_color:[F

.field public ambient_texture_id:I

.field public bitmap:Landroid/graphics/Bitmap;

.field public bloom_intensity:F

.field public bloom_scale:F

.field public brdf_lut_height:I

.field public brdf_lut_width:I

.field public custom_texture_id:I

.field public diffuse_color:[F

.field public diffuse_texture_id:I

.field public dissolve:F

.field public earring_matrix_index:I

.field public environment_intensity:F

.field public environment_mode:F

.field public environment_texture_id:I

.field public environment_tile_x:F

.field public environment_tile_y:F

.field public exposure:F

.field public fresnel_intensity:F

.field public gemMeshNormEnvTexture:[I

.field public gemMeshPosEnvTexture:[I

.field public gem_absorption:F

.field public gem_bounces:I

.field public gem_center_x:F

.field public gem_center_y:F

.field public gem_center_z:F

.field public gem_color_x:F

.field public gem_color_y:F

.field public gem_color_z:F

.field public gem_dispersion:F

.field public gem_ior:F

.field public gem_pos_scale_x:F

.field public gem_pos_scale_y:F

.field public gem_pos_scale_z:F

.field public gem_pos_shift_x:F

.field public gem_pos_shift_y:F

.field public gem_pos_shift_z:F

.field public hdr_width:I

.field public hori_orien:F

.field public isGem:Z

.field public isGemMeshEnvValid:Z

.field public isPBR:Z

.field public isSmallGem:Z

.field public is_enable_mirror_hdr:Z

.field public is_lens:Z

.field public is_referenced_small_gem:Z

.field public m_brdf_texture_buffer:[B

.field public mtl_name:Ljava/lang/String;

.field public normal_buffer:Ljava/nio/FloatBuffer;

.field public normal_map_texture_id:I

.field public orm_texture_id:I

.field public referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

.field public small_gem_rotation_mat:[F

.field public specular_color:[F

.field public specular_texture_id:I

.field public tangent_buffer:Ljava/nio/FloatBuffer;

.field public texcoord_buffer:Ljava/nio/FloatBuffer;

.field public transmission_filter:[F

.field public vert_orien:F

.field public vertex_buffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v2, -0x1

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    return-void

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

.method public constructor <init>([F[F[F[FLjava/lang/String;[F[F[FF[FFFFFZLandroid/graphics/Bitmap;ZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V
    .locals 43

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v3, -0x1

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v2, 0x0

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_2
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    :goto_2
    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :cond_3
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->mtl_name:Ljava/lang/String;

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v5, p10

    move/from16 v6, p11

    move/from16 v7, p12

    move/from16 v8, p13

    move/from16 v9, p14

    move/from16 v10, p15

    move-object/from16 v11, p16

    move/from16 v12, p17

    move/from16 v13, p18

    move/from16 v14, p19

    move/from16 v15, p20

    move/from16 v16, p21

    move/from16 v17, p22

    move/from16 v18, p23

    move/from16 v19, p24

    move/from16 v20, p25

    move/from16 v21, p26

    move/from16 v22, p27

    move/from16 v23, p28

    move/from16 v24, p29

    move/from16 v25, p30

    move/from16 v26, p31

    move/from16 v27, p32

    move/from16 v28, p33

    move/from16 v29, p34

    move/from16 v30, p35

    move/from16 v31, p36

    move/from16 v32, p37

    move/from16 v33, p38

    move/from16 v34, p39

    move/from16 v35, p40

    move/from16 v36, p41

    move/from16 v37, p42

    move/from16 v38, p43

    move/from16 v39, p44

    move-object/from16 v40, p45

    move-object/from16 v41, p46

    move/from16 v42, p47

    invoke-virtual/range {v0 .. v42}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFFZLandroid/graphics/Bitmap;ZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

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

.method public constructor <init>([F[F[F[F[F[FF[FFFFF)V
    .locals 11

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v3, -0x1

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v2, 0x0

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move-object v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    iput v10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

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

.method public constructor <init>([F[F[F[F[F[FF[FFFFFI)V
    .locals 10

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v2, -0x1

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v1, 0x0

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v1, 0x1

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    :goto_2
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    goto :goto_3

    :cond_2
    iput-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :goto_3
    invoke-virtual/range {v0 .. v9}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    move/from16 p1, p13

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    return-void

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

.method public constructor <init>([F[F[F[F[F[FF[FFFFFZLandroid/graphics/Bitmap;)V
    .locals 13

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v3, -0x1

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v2, 0x0

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    move/from16 v10, p13

    move-object/from16 v11, p14

    invoke-virtual/range {v0 .. v11}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFFZLandroid/graphics/Bitmap;)V

    iput v12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    return-void

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

.method public constructor <init>([F[F[F[F[F[F[FF[FFFFFIZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V
    .locals 41

    .line 290
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v3, -0x1

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v2, 0x0

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_2
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    :goto_2
    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :cond_3
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p15

    move/from16 v11, p16

    move/from16 v12, p17

    move/from16 v13, p18

    move/from16 v14, p19

    move/from16 v15, p20

    move/from16 v16, p21

    move/from16 v17, p22

    move/from16 v18, p23

    move/from16 v19, p24

    move/from16 v20, p25

    move/from16 v21, p26

    move/from16 v22, p27

    move/from16 v23, p28

    move/from16 v24, p29

    move/from16 v25, p30

    move/from16 v26, p31

    move/from16 v27, p32

    move/from16 v28, p33

    move/from16 v29, p34

    move/from16 v30, p35

    move/from16 v31, p36

    move/from16 v32, p37

    move/from16 v33, p38

    move/from16 v34, p39

    move/from16 v35, p40

    move/from16 v36, p41

    move/from16 v37, p42

    move-object/from16 v38, p43

    move-object/from16 v39, p44

    move/from16 v40, p45

    invoke-virtual/range {v0 .. v40}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFFZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V

    move/from16 v1, p14

    iput v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    return-void

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

.method public constructor <init>([F[F[F[F[F[F[FF[FFFFFZLandroid/graphics/Bitmap;ZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V
    .locals 43

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    const/4 v3, -0x1

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    new-array v2, v2, [F

    fill-array-data v2, :array_3

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    const/4 v2, 0x0

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGemMeshEnvValid:Z

    const/4 v2, 0x1

    new-array v3, v2, [I

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    iput v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hdr_width:I

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->referencing_small_gem:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-boolean v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    iput v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

    if-eqz p1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :goto_0
    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    goto :goto_1

    :cond_1
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :goto_1
    if-eqz p3, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    goto :goto_2

    :cond_2
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    :goto_2
    if-eqz p4, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->b([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    :cond_3
    iput-object v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move-object/from16 v11, p15

    move/from16 v12, p16

    move/from16 v13, p17

    move/from16 v14, p18

    move/from16 v15, p19

    move/from16 v16, p20

    move/from16 v17, p21

    move/from16 v18, p22

    move/from16 v19, p23

    move/from16 v20, p24

    move/from16 v21, p25

    move/from16 v22, p26

    move/from16 v23, p27

    move/from16 v24, p28

    move/from16 v25, p29

    move/from16 v26, p30

    move/from16 v27, p31

    move/from16 v28, p32

    move/from16 v29, p33

    move/from16 v30, p34

    move/from16 v31, p35

    move/from16 v32, p36

    move/from16 v33, p37

    move/from16 v34, p38

    move/from16 v35, p39

    move/from16 v36, p40

    move/from16 v37, p41

    move/from16 v38, p42

    move/from16 v39, p43

    move-object/from16 v40, p44

    move-object/from16 v41, p45

    move/from16 v42, p46

    invoke-virtual/range {v0 .. v42}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFFZLandroid/graphics/Bitmap;ZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->earring_matrix_index:I

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


# virtual methods
.method public ReleaseTextures()V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshNormEnvTexture:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gemMeshPosEnvTexture:[I

    invoke-static {v1, p0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public SetAmbientTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_texture_id:I

    return-void
.end method

.method public SetCustomTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->custom_texture_id:I

    return-void
.end method

.method public SetDiffuseTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    return-void
.end method

.method public SetEnvironmentTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_texture_id:I

    return-void
.end method

.method public SetNormalMapTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_map_texture_id:I

    return-void
.end method

.method public SetOrmTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->orm_texture_id:I

    return-void
.end method

.method public SetRenderParameters([F[F[FF[FFFFF)V
    .locals 3

    .line 178
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    aget v2, p1, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    aget v2, p2, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    aget v2, p3, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    aget v2, p5, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    iput p6, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput p7, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput p8, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput p9, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    return-void
.end method

.method public SetRenderParameters([F[F[FF[FFFFFZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V
    .locals 0

    .line 176
    invoke-virtual/range {p0 .. p9}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->SetRenderParameters([F[F[FF[FFFFF)V

    iput-boolean p10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    iput p11, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    iput p12, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    iput p13, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    iput-boolean p15, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    move/from16 p1, p16

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    move/from16 p1, p17

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    move/from16 p1, p18

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    move/from16 p1, p19

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    move/from16 p1, p20

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    move/from16 p1, p21

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    move/from16 p1, p22

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    move/from16 p1, p23

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    move/from16 p1, p24

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    move/from16 p1, p25

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    move/from16 p1, p26

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_bounces:I

    move/from16 p1, p27

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    move/from16 p1, p28

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    move/from16 p1, p29

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    move/from16 p1, p30

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    move/from16 p1, p31

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    move/from16 p1, p32

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    move/from16 p1, p33

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    move/from16 p1, p34

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    move/from16 p1, p35

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    move/from16 p1, p36

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->brdf_lut_width:I

    move/from16 p1, p37

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->brdf_lut_height:I

    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->m_brdf_texture_buffer:[B

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    const/16 p2, 0x9

    const/4 p3, 0x0

    move-object/from16 p4, p39

    invoke-static {p4, p3, p1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p1, p40

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    return-void
.end method

.method public SetRenderParameters([F[F[FF[FFFFFZLandroid/graphics/Bitmap;)V
    .locals 3

    .line 177
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    aget v2, p1, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    aget v2, p2, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    aget v2, p3, v0

    aput v2, v1, v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    aget v2, p5, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    iput p6, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput p7, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput p8, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput p9, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    iput-boolean p10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object p11, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public SetRenderParameters([F[F[FF[FFFFFZLandroid/graphics/Bitmap;ZFFFZZFFFFFFFFFFIFFFFFFZFFII[B[FZ)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->ambient_color:[F

    aget v3, p1, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_color:[F

    aget v3, p2, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_color:[F

    aget v3, p3, v1

    aput v3, v2, v1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->transmission_filter:[F

    aget v3, p5, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->dissolve:F

    iput p6, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_mode:F

    iput p7, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_intensity:F

    iput p8, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_x:F

    iput p9, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->environment_tile_y:F

    iput-boolean p10, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_lens:Z

    iput-object p11, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bitmap:Landroid/graphics/Bitmap;

    move/from16 p1, p12

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isPBR:Z

    move/from16 p1, p13

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->exposure:F

    move/from16 p1, p14

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->hori_orien:F

    move/from16 p1, p15

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vert_orien:F

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_enable_mirror_hdr:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isGem:Z

    move/from16 p1, p18

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_x:F

    move/from16 p1, p19

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_y:F

    move/from16 p1, p20

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_center_z:F

    move/from16 p1, p21

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_x:F

    move/from16 p1, p22

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_y:F

    move/from16 p1, p23

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_scale_z:F

    move/from16 p1, p24

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_x:F

    move/from16 p1, p25

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_y:F

    move/from16 p1, p26

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_pos_shift_z:F

    move/from16 p1, p27

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_absorption:F

    move/from16 p1, p28

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_bounces:I

    move/from16 p1, p29

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_x:F

    move/from16 p1, p30

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_y:F

    move/from16 p1, p31

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_color_z:F

    move/from16 p1, p32

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_dispersion:F

    move/from16 p1, p33

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->gem_ior:F

    move/from16 p1, p34

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->fresnel_intensity:F

    move/from16 p1, p35

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->isSmallGem:Z

    move/from16 p1, p36

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_scale:F

    move/from16 p1, p37

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->bloom_intensity:F

    move/from16 p1, p38

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->brdf_lut_width:I

    move/from16 p1, p39

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->brdf_lut_height:I

    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->m_brdf_texture_buffer:[B

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->small_gem_rotation_mat:[F

    const/16 p2, 0x9

    move-object/from16 p3, p41

    invoke-static {p3, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 p1, p42

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->is_referenced_small_gem:Z

    return-void
.end method

.method public SetSpecularTextureID(I)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->specular_texture_id:I

    return-void
.end method

.method public UpdateBrdf(II[B)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->brdf_lut_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->brdf_lut_height:I

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->m_brdf_texture_buffer:[B

    return-void
.end method

.method public UpdateCoordinates([F[F[F)V
    .locals 4

    .line 177
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    array-length v2, p2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    array-length v2, p3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2
    if-lez v1, :cond_9

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-eq v3, v2, :cond_4

    :cond_3
    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :cond_4
    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-eq p1, v2, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :cond_6
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2, v0, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    shl-int/lit8 p1, v1, 0x1

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-nez p2, :cond_7

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    :cond_7
    if-eqz p3, :cond_8

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p3, v0, p1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    return-void

    :cond_9
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public UpdateCoordinates([F[F[F[F)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    array-length v2, p2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    array-length v2, p3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_2
    if-lez v1, :cond_b

    mul-int/lit8 v2, v1, 0x3

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-eq v3, v2, :cond_4

    :cond_3
    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    :cond_4
    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, p1, v0, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-eq p1, v2, :cond_6

    :cond_5
    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    :cond_6
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2, v0, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    shl-int/lit8 p1, v1, 0x1

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-nez p2, :cond_7

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    :cond_7
    if-eqz p3, :cond_8

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p3, v0, p1}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_8
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    if-eq p1, v2, :cond_a

    :cond_9
    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    :cond_a
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p4, v0, v2}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_b
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->tangent_buffer:Ljava/nio/FloatBuffer;

    return-void
.end method
