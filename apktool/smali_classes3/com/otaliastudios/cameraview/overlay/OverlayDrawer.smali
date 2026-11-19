.class public Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/otaliastudios/cameraview/CameraLogger;


# instance fields
.field public final a:Lcom/otaliastudios/cameraview/overlay/Overlay;

.field public b:Landroid/graphics/SurfaceTexture;

.field public c:Landroid/view/Surface;

.field public d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

.field public e:Lcom/otaliastudios/cameraview/internal/Issue514Workaround;

.field public final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OverlayDrawer"

    invoke-static {v0}, Lcom/otaliastudios/cameraview/CameraLogger;->a(Ljava/lang/String;)Lcom/otaliastudios/cameraview/CameraLogger;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->g:Lcom/otaliastudios/cameraview/CameraLogger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/cameraview/overlay/Overlay;Lcom/otaliastudios/cameraview/size/Size;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->f:Ljava/lang/Object;

    iput-object p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->a:Lcom/otaliastudios/cameraview/overlay/Overlay;

    new-instance p1, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    invoke-direct {p1}, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object v0, v0, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a:Lcom/otaliastudios/opengl/texture/GlTexture;

    iget v0, v0, Lcom/otaliastudios/opengl/texture/GlTexture;->g:I

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->b:Landroid/graphics/SurfaceTexture;

    iget v0, p2, Lcom/otaliastudios/cameraview/size/Size;->b:I

    iget p2, p2, Lcom/otaliastudios/cameraview/size/Size;->c:I

    invoke-virtual {p1, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance p1, Landroid/view/Surface;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->b:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->c:Landroid/view/Surface;

    new-instance p1, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;

    iget-object p2, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->d:Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;

    iget-object p2, p2, Lcom/otaliastudios/cameraview/internal/GlTextureDrawer;->a:Lcom/otaliastudios/opengl/texture/GlTexture;

    iget p2, p2, Lcom/otaliastudios/opengl/texture/GlTexture;->g:I

    invoke-direct {p1, p2}, Lcom/otaliastudios/cameraview/internal/Issue514Workaround;-><init>(I)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/overlay/OverlayDrawer;->e:Lcom/otaliastudios/cameraview/internal/Issue514Workaround;

    return-void
.end method
