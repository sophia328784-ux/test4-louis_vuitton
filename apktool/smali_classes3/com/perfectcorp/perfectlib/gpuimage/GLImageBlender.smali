.class public Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$DeveloperModeLabel;,
        Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/gpuimage/a;

.field public final b:Ljava/nio/FloatBuffer;

.field public final c:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    sget-object v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;-><init>([F)V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    .line 56
    sget-object v0, Lcom/cyberlink/clgpuimage/Rotation;->NORMAL:Lcom/cyberlink/clgpuimage/Rotation;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/cyberlink/clgpuimage/util/TextureRotationUtil;->b(Lcom/cyberlink/clgpuimage/Rotation;ZZ)[F

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;-><init>([F[F)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/gpuimage/a;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/gpuimage/a;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a:Lcom/perfectcorp/perfectlib/gpuimage/a;

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    array-length p1, p2

    shl-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0x8

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->c:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a:Lcom/perfectcorp/perfectlib/gpuimage/a;

    iget v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    sget v2, Lcom/perfectcorp/common/debug/opengl/a;->a:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/perfectcorp/perfectlib/gpuimage/a;->b:I

    return-void
.end method

.method public final b(Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;)V
    .locals 9

    const-string v0, "GLImageBlender"

    invoke-static {v0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a:Lcom/perfectcorp/perfectlib/gpuimage/a;

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/gpuimage/a;->a()V

    iget v1, v1, Lcom/perfectcorp/perfectlib/gpuimage/a;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget v2, Lcom/perfectcorp/common/debug/opengl/a;->a:I

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v2

    const-string v3, "glIsEnabled"

    invoke-static {v3}, Lcom/perfectcorp/common/debug/opengl/a;->a(Ljava/lang/String;)V

    const v3, 0x80c9

    invoke-static {v3}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->b(I)I

    move-result v3

    const v4, 0x80c8

    invoke-static {v4}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->b(I)I

    move-result v4

    const v5, 0x80cb

    invoke-static {v5}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->b(I)I

    move-result v5

    const v6, 0x80ca

    invoke-static {v6}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->b(I)I

    move-result v6

    const/4 v7, 0x1

    const/16 v8, 0x303

    invoke-static {v7, v7, v8, v7, v8}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->d(ZIIII)V

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->b:Ljava/nio/FloatBuffer;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->c:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v1, v7, p0}, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender$Renderer;->c(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    invoke-static {v0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    invoke-static {v2, v3, v4, v5, v6}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->d(ZIIII)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "GLImageBlender"

    invoke-static {v0}, Lcom/perfectcorp/common/opengl/GLMoreUtils;->c(Ljava/lang/String;)Z

    const/4 v0, -0x1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/gpuimage/GLImageBlender;->a:Lcom/perfectcorp/perfectlib/gpuimage/a;

    iput v0, p0, Lcom/perfectcorp/perfectlib/gpuimage/a;->b:I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/gpuimage/a;->a()V

    return-void
.end method
