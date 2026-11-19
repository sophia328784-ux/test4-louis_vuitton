.class public Lcom/otaliastudios/opengl/surface/EglNativeSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/surface/EglNativeSurface;",
        "",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "eglCore",
        "Lcom/otaliastudios/opengl/internal/EglSurface;",
        "eglSurface",
        "<init>",
        "(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V",
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
.field public final a:Lcom/otaliastudios/opengl/core/EglCore;

.field public b:Lcom/otaliastudios/opengl/internal/EglSurface;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/opengl/core/EglCore;Lcom/otaliastudios/opengl/internal/EglSurface;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->a:Lcom/otaliastudios/opengl/core/EglCore;

    iput-object p2, p0, Lcom/otaliastudios/opengl/surface/EglNativeSurface;->b:Lcom/otaliastudios/opengl/internal/EglSurface;

    return-void
.end method
