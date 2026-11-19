.class final Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;
    }
.end annotation


# static fields
.field public static final i:[F

.field public static final j:[F

.field public static final k:[F


# instance fields
.field public a:I

.field public b:Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer$MeshData;

.field public c:Landroidx/media3/common/util/GlProgram;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->i:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->j:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->k:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static b(Landroidx/media3/exoplayer/video/spherical/Projection;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->a:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->b:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iget-object v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->a:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->a:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->a:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    array-length v0, p0

    if-ne v0, v3, :cond_0

    aget-object p0, p0, v2

    iget p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;->a:I

    if-nez p0, :cond_0

    return v3

    :cond_0
    return v2
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    new-instance v0, Landroidx/media3/common/util/GlProgram;

    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->c:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uMvpMatrix"

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->a:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->d:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->c:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uTexMatrix"

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->a:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->e:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->c:Landroidx/media3/common/util/GlProgram;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->f:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->c:Landroidx/media3/common/util/GlProgram;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/GlProgram;->b(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->g:I

    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->c:Landroidx/media3/common/util/GlProgram;

    const-string v1, "uTexture"

    iget v0, v0, Landroidx/media3/common/util/GlProgram;->a:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/video/spherical/ProjectionRenderer;->h:I
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed to initialize the program"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
