.class public Lcom/google/android/filament/android/UiHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;,
        Lcom/google/android/filament/android/UiHelper$RendererCallback;,
        Lcom/google/android/filament/android/UiHelper$RenderSurface;,
        Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;,
        Lcom/google/android/filament/android/UiHelper$TextureViewHandler;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

.field public c:Z

.field public d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

.field public final e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;->CHECK:Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;

    invoke-direct {p0, v0}, Lcom/google/android/filament/android/UiHelper;-><init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/android/UiHelper$ContextErrorPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/filament/android/UiHelper;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/SurfaceView;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/filament/android/UiHelper$RenderSurface;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->c()V

    :cond_2
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper;->a:Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/filament/android/UiHelper;->e:Z

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/android/UiHelper$SurfaceViewHandler;-><init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    return-void
.end method

.method public final b(Landroid/view/TextureView;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->a:Ljava/lang/Object;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/filament/android/UiHelper$RenderSurface;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->c()V

    :cond_2
    iput-object p1, p0, Lcom/google/android/filament/android/UiHelper;->a:Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/android/filament/android/UiHelper;->e:Z

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    new-instance v0, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/filament/android/UiHelper$TextureViewHandler;-><init>(Lcom/google/android/filament/android/UiHelper;Landroid/view/TextureView;)V

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->b:Lcom/google/android/filament/android/UiHelper$RendererCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/filament/android/UiHelper$RendererCallback;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/filament/android/UiHelper;->c:Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/filament/android/UiHelper$RenderSurface;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/filament/android/UiHelper;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->a:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/filament/android/UiHelper;->d:Lcom/google/android/filament/android/UiHelper$RenderSurface;

    return-void
.end method
