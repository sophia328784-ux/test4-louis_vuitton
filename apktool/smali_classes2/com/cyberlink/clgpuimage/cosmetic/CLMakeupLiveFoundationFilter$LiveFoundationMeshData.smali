.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFoundationMeshData"
.end annotation


# instance fields
.field public camera_matrix:[F

.field public is_flip:Z

.field public is_texcoord_changed:Z

.field public is_valid:Z

.field public normal_array:[F

.field public normal_pnp_matrix:[F

.field public num_triangles:I

.field public pnp_matrix:[F

.field public rotation:I

.field template_data:[B

.field public template_height:I

.field public template_width:I

.field public texcoord_array:[F

.field public vertex_array:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->num_triangles:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->vertex_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_array:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->texcoord_array:[F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_texcoord_changed:Z

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->camera_matrix:[F

    const/16 v2, 0xc

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->pnp_matrix:[F

    const/16 v2, 0x10

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_pnp_matrix:[F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_data:[B

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_width:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_height:I

    return-void
.end method


# virtual methods
.method public AllocArray(III)V
    .locals 1

    if-lez p1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->num_triangles:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_array:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->texcoord_array:[F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->texcoord_array:[F

    :cond_1
    :goto_0
    mul-int p1, p2, p3

    shl-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_data:[B

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_width:I

    iput p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_height:I

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1, v1, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->AllocArray(III)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->num_triangles:I

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_width:I

    iget v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_height:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->AllocArray(III)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->num_triangles:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->vertex_array:[F

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->texcoord_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->texcoord_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_data:[B

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationMeshData;->template_data:[B

    array-length v0, p1

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
