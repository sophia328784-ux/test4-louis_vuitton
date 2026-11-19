.class public Lcom/otaliastudios/opengl/surface/EglWindowSurface;
.super Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B#\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0008\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/surface/EglWindowSurface;",
        "Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "eglCore",
        "Landroid/view/Surface;",
        "surface",
        "",
        "releaseSurface",
        "<init>",
        "(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V",
        "Landroid/graphics/SurfaceTexture;",
        "surfaceTexture",
        "(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public c:Landroid/view/Surface;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;->a(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;)V
    .locals 6

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/otaliastudios/opengl/core/EglNativeCore;->a(Ljava/lang/Object;)Lcom/otaliastudios/opengl/internal/EglSurface;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/otaliastudios/opengl/surface/EglNativeWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V

    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->c:Landroid/view/Surface;

    iput-boolean p3, p0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V

    return-void
.end method
