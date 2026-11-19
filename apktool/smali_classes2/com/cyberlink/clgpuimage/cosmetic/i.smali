.class public final Lcom/cyberlink/clgpuimage/cosmetic/i;
.super Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/i$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/i$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/i$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/i$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/i$b;->b:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/i$c;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/i$c;->b:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final R()V
    .locals 0

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/i;->d0()V

    return-void
.end method

.method public final T(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;)V
    .locals 5

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->N(I[F[F[F)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->O0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->y0:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->P0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->z0:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->Q0:I

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->A0:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    move-object v0, p1

    check-cast v0, Lcom/cyberlink/clgpuimage/cosmetic/i$a;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "roi_start_x"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "roi_start_y"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "texture_height"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v4, "texture_width"

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->a0:I

    const-string v1, "blush3DTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->b0(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;)V

    return-void
.end method

.method public final d0()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->d0()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "frame_buffer_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    const-string v1, "frame_buffer_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget p0, p0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public final k0(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;)V
    .locals 5

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->h0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_valid:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->i0:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    iget v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->rotation:I

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->j0:I

    iget-boolean v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_flip:Z

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->k0:Z

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->l0:[F

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->camera_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m0:[F

    const/16 v3, 0x9

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_pnp_matrix:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->n0:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->p0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v1, :cond_1

    array-length v2, v1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-lez v2, :cond_3

    aget-object v1, v1, v4

    if-eqz v1, :cond_3

    iget-boolean v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->is_texcoord_changed:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->texcoords:[F

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->face_3d_xyz:[F

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveBlush3DFilter$LiveBlush3DMetadata;->normal_vectors:[F

    invoke-virtual {v1, v3, p1, v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->C0:Z

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->B0:Ljava/nio/FloatBuffer;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->Q()V

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
