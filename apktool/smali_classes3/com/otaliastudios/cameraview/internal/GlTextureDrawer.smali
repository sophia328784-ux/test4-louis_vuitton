.class public Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/otaliastudios/opengl/texture/GlTexture;

.field public final b:[F

.field public c:Lcom/otaliastudios/cameraview/filter/Filter;

.field public d:Lcom/otaliastudios/cameraview/filter/Filter;

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GlTextureDrawer"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/otaliastudios/opengl/texture/GlTexture;

    const v1, 0x84c0

    const v2, 0x8d65

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>(Lcom/otaliastudios/opengl/texture/GlTexture;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 29
    new-instance v0, Lcom/otaliastudios/opengl/texture/GlTexture;

    const v1, 0x8d65

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v2, 0x84c0

    invoke-direct {v0, v2, v1, p1}, Lcom/otaliastudios/opengl/texture/GlTexture;-><init>(IILjava/lang/Integer;)V

    invoke-direct {p0, v0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>(Lcom/otaliastudios/opengl/texture/GlTexture;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/texture/GlTexture;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/otaliastudios/opengl/core/Egloo;->a:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    new-instance v0, Lcom/otaliastudios/cameraview/filter/NoFilter;

    invoke-direct {v0}, Lcom/otaliastudios/cameraview/filter/NoFilter;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->d:Lcom/otaliastudios/cameraview/filter/Filter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a:Lcom/otaliastudios/opengl/texture/GlTexture;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->d:Lcom/otaliastudios/cameraview/filter/Filter;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b()V

    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->d:Lcom/otaliastudios/cameraview/filter/Filter;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->d:Lcom/otaliastudios/cameraview/filter/Filter;

    :cond_0
    iget p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {p1}, Lcom/otaliastudios/cameraview/filter/Filter;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {p2}, Lcom/otaliastudios/cameraview/filter/Filter;->d()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/otaliastudios/opengl/program/GlProgram;->e:Lcom/otaliastudios/opengl/program/GlProgram$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/otaliastudios/opengl/program/GlShader;

    sget v1, Lcom/otaliastudios/opengl/internal/GlKt;->p:I

    invoke-direct {v0, v1, p1}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    new-instance p1, Lcom/otaliastudios/opengl/program/GlShader;

    sget v1, Lcom/otaliastudios/opengl/internal/GlKt;->q:I

    invoke-direct {p1, v1, p2}, Lcom/otaliastudios/opengl/program/GlShader;-><init>(ILjava/lang/String;)V

    filled-new-array {v0, p1}, [Lcom/otaliastudios/opengl/program/GlShader;

    move-result-object p1

    invoke-static {p1}, Lcom/otaliastudios/opengl/program/GlProgram$Companion;->a([Lcom/otaliastudios/opengl/program/GlShader;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    iget-object p2, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {p2, p1}, Lcom/otaliastudios/cameraview/filter/Filter;->g(I)V

    const-string p1, "program creation"

    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    :cond_1
    iget p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "glUseProgram(handle)"

    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a:Lcom/otaliastudios/opengl/texture/GlTexture;

    iget p2, p1, Lcom/otaliastudios/opengl/texture/GlTexture;->a:I

    iget v0, p1, Lcom/otaliastudios/opengl/texture/GlTexture;->b:I

    sget-object v1, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p1, p1, Lcom/otaliastudios/opengl/texture/GlTexture;->g:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "bind"

    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->b:[F

    invoke-interface {p1, p0}, Lcom/otaliastudios/cameraview/filter/Filter;->f([F)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    sget p1, Lcom/otaliastudios/opengl/internal/GlKt;->e:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const-string p1, "unbind"

    invoke-static {p1}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p0, "glUseProgram(0)"

    invoke-static {p0}, Lcom/otaliastudios/opengl/core/Egloo;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->c:Lcom/otaliastudios/cameraview/filter/Filter;

    invoke-interface {v0}, Lcom/otaliastudios/cameraview/filter/Filter;->onDestroy()V

    iget v0, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v1, p0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->e:I

    return-void
.end method
