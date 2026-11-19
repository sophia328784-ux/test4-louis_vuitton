.class public final Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/filament/android/UiHelper$RendererCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/ar/filament/Filament;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1",
        "Lcom/google/android/filament/android/UiHelper$RendererCallback;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/ar/filament/Filament;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/filament/Filament;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Surface;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->j:Lcom/google/android/filament/SwapChain;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->u(Lcom/google/android/filament/SwapChain;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/filament/Engine;->j(Landroid/view/Surface;)Lcom/google/android/filament/SwapChain;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->j:Lcom/google/android/filament/SwapChain;

    iget-object p1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->k:Lcom/google/android/filament/android/DisplayHelper;

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->d:Lcom/google/android/filament/Renderer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->a:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/filament/android/DisplayHelper;->a(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V

    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->g:Lcom/google/android/filament/View;

    new-instance v0, Lcom/google/android/filament/Viewport;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Lcom/google/android/filament/Viewport;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/google/android/filament/View;->j(Lcom/google/android/filament/Viewport;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament$uiHelper$1$1;->a:Lcom/vuitton/android/presentation/ar/filament/Filament;

    iget-object v0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->c:Lcom/google/android/filament/Engine;

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->k:Lcom/google/android/filament/android/DisplayHelper;

    invoke-virtual {v1}, Lcom/google/android/filament/android/DisplayHelper;->b()V

    iget-object v1, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->j:Lcom/google/android/filament/SwapChain;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Engine;->u(Lcom/google/android/filament/SwapChain;)V

    invoke-virtual {v0}, Lcom/google/android/filament/Engine;->y()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vuitton/android/presentation/ar/filament/Filament;->j:Lcom/google/android/filament/SwapChain;

    :cond_0
    return-void
.end method
