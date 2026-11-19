.class public Lcom/google/android/filament/android/DisplayHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/hardware/display/DisplayManager;

.field public c:Landroid/view/Display;

.field public d:Lcom/google/android/filament/Renderer;

.field public e:Landroid/hardware/display/DisplayManager$DisplayListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->a:Landroid/os/Handler;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->b:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/filament/android/DisplayHelper;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/google/android/filament/android/DisplayHelper;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Renderer;Landroid/view/Display;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->d:Lcom/google/android/filament/Renderer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->c:Landroid/view/Display;

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->d:Lcom/google/android/filament/Renderer;

    iput-object p2, p0, Lcom/google/android/filament/android/DisplayHelper;->c:Landroid/view/Display;

    new-instance p1, Lcom/google/android/filament/android/DisplayHelper$1;

    invoke-direct {p1, p0, p2}, Lcom/google/android/filament/android/DisplayHelper$1;-><init>(Lcom/google/android/filament/android/DisplayHelper;Landroid/view/Display;)V

    iput-object p1, p0, Lcom/google/android/filament/android/DisplayHelper;->e:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object p2, p0, Lcom/google/android/filament/android/DisplayHelper;->b:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->a:Landroid/os/Handler;

    invoke-virtual {p2, p1, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/android/filament/android/DisplayHelper$2;

    invoke-direct {p1, p0}, Lcom/google/android/filament/android/DisplayHelper$2;-><init>(Lcom/google/android/filament/android/DisplayHelper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/filament/android/DisplayHelper;->c()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->e:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/filament/android/DisplayHelper;->b:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->e:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->c:Landroid/view/Display;

    iput-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->d:Lcom/google/android/filament/Renderer;

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/filament/android/DisplayHelper;->d:Lcom/google/android/filament/Renderer;

    iget-object p0, p0, Lcom/google/android/filament/android/DisplayHelper;->c:Landroid/view/Display;

    iget-object v1, v0, Lcom/google/android/filament/Renderer;->b:Lcom/google/android/filament/Renderer$DisplayInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/filament/Renderer$DisplayInfo;

    invoke-direct {v1}, Lcom/google/android/filament/Renderer$DisplayInfo;-><init>()V

    iput-object v1, v0, Lcom/google/android/filament/Renderer;->b:Lcom/google/android/filament/Renderer$DisplayInfo;

    :cond_0
    iget-object v1, v0, Lcom/google/android/filament/Renderer;->b:Lcom/google/android/filament/Renderer$DisplayInfo;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/android/filament/Renderer$DisplayInfo;

    invoke-direct {v1}, Lcom/google/android/filament/Renderer$DisplayInfo;-><init>()V

    :cond_1
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    iput p0, v1, Lcom/google/android/filament/Renderer$DisplayInfo;->a:F

    invoke-virtual {v0, v1}, Lcom/google/android/filament/Renderer;->f(Lcom/google/android/filament/Renderer$DisplayInfo;)V

    return-void
.end method

.method public final finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/filament/android/DisplayHelper;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
