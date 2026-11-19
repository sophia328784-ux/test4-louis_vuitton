.class public Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LiveFaceContourMetadata"
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

.field public pose_parameters:[F

.field public rotation:I

.field public texcoord_array:[F

.field public vertex_array:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_valid:Z

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->num_triangles:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->vertex_array:[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_texcoord_changed:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->camera_matrix:[F

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pnp_matrix:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_pnp_matrix:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pose_parameters:[F

    return-void
.end method


# virtual methods
.method public AllocArray(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->num_triangles:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->num_triangles:I

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->vertex_array:[F

    mul-int/lit8 v0, p1, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    mul-int/lit8 p1, p1, 0x6

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->num_triangles:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->vertex_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    return-void
.end method

.method public Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;)V
    .locals 4

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_valid:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_valid:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->AllocArray(I)V

    return-void

    :cond_0
    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->rotation:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->rotation:I

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_flip:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_flip:Z

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->num_triangles:I

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->AllocArray(I)V

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->num_triangles:I

    if-lez v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->vertex_array:[F

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->vertex_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_texcoord_changed:Z

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_texcoord_changed:Z

    iget-boolean v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->is_texcoord_changed:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->texcoord_array:[F

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->camera_matrix:[F

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pnp_matrix:[F

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->normal_pnp_matrix:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pose_parameters:[F

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFaceContourFilter$LiveFaceContourMetadata;->pose_parameters:[F

    const/4 v0, 0x6

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
