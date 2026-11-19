.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveEarringMetadata"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public component_count:I

.field public is_flip:Z

.field public is_valid:Z

.field public left_earbottom_y:F

.field public matrix_counts:[I

.field public normal_pnp_matrices:[[[F

.field public occluder_camera_matrix:[F

.field public occluder_normal_pnp_matrix:[F

.field public occluder_pnp_matrix:[F

.field public occluder_triangle_count:I

.field public p_occluder_normals:[F

.field public p_occluder_vertices:[F

.field public pnp_matrices:[[[F

.field public right_earbottom_y:F

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    const/4 v2, 0x2

    const/16 v3, 0xc

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0x65

    aput v5, v1, v4

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v1, v6

    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->pnp_matrices:[[[F

    new-array v0, v0, [I

    const/16 v1, 0x10

    aput v1, v0, v2

    aput v5, v0, v4

    aput v7, v0, v6

    invoke-static {v8, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->normal_pnp_matrices:[[[F

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->matrix_counts:[I

    iput-boolean v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->is_valid:Z

    const/16 v0, 0x9

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->camera_matrix:[F

    iput v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->component_count:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_camera_matrix:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_pnp_matrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_normal_pnp_matrix:[F

    iput v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_triangle_count:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->left_earbottom_y:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->right_earbottom_y:F

    return-void
.end method


# virtual methods
.method public AllocArray(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_triangle_count:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_triangle_count:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    mul-int/lit8 p1, p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_triangle_count:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;)V
    .locals 8

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->is_valid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->is_flip:Z

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->camera_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->camera_matrix:[F

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->component_count:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->component_count:I

    move v0, v2

    :goto_0
    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->component_count:I

    const/16 v4, 0x10

    const/16 v5, 0xc

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_1
    const/16 v6, 0x65

    if-ge v1, v6, :cond_1

    iget-object v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->pnp_matrices:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->pnp_matrices:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    invoke-static {v6, v2, v7, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->normal_pnp_matrices:[[[F

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->normal_pnp_matrices:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v1

    invoke-static {v6, v2, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->matrix_counts:[I

    iget-object v7, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->matrix_counts:[I

    aget v7, v7, v0

    aput v7, v6, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_camera_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_camera_matrix:[F

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_pnp_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_pnp_matrix:[F

    invoke-static {v0, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_normal_pnp_matrix:[F

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_normal_pnp_matrix:[F

    invoke-static {v0, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_triangle_count:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->occluder_triangle_count:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_vertices:[F

    array-length v4, v1

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->p_occluder_normals:[F

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->left_earbottom_y:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->left_earbottom_y:F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->right_earbottom_y:F

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter$LiveEarringMetadata;->right_earbottom_y:F

    return-void
.end method
