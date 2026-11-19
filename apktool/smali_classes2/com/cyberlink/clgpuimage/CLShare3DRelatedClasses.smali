.class public abstract Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DModel;,
        Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$LiveObject3DMaterialData;,
        Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DHDRTextureData;,
        Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;,
        Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;
    }
.end annotation


# direct methods
.method public static a(I)Ljava/nio/FloatBuffer;
    .locals 0

    shl-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static b([F)Ljava/nio/FloatBuffer;
    .locals 1

    array-length v0, p0

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->a(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static c(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lct0;->c()V

    return-void
.end method

.method public static d(ZIIII)V
    .locals 1

    const/16 v0, 0xbe2

    if-eqz p0, :cond_0

    sget p0, Lcom/perfectcorp/common/debug/opengl/a;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const-string p0, "glEnable"

    invoke-static {p0}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p0, Lcom/perfectcorp/common/debug/opengl/a;->a:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const-string p0, "glDisable"

    invoke-static {p0}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    const-string p0, "glBlendFuncSeparate"

    invoke-static {p0}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    return-void
.end method
