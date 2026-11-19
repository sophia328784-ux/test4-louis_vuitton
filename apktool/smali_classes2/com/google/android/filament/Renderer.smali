.class public Lcom/google/android/filament/Renderer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Renderer$DisplayInfo;,
        Lcom/google/android/filament/Renderer$ClearOptions;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/Renderer$DisplayInfo;


# direct methods
.method private static native nBeginFrame(JJJ)Z
.end method

.method private static native nEndFrame(J)V
.end method

.method private static native nRender(JJ)V
.end method

.method private static native nSetClearOptions(JFFFFZZ)V
.end method

.method private static native nSetDisplayInfo(JF)V
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/SwapChain;J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->c()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/filament/SwapChain;->b:J

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-eqz p0, :cond_0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/Renderer;->nBeginFrame(JJJ)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "Calling method on destroyed SwapChain"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/Renderer;->nEndFrame(J)V

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Renderer;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed Renderer"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d(Lcom/google/android/filament/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->c()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/View;->a()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/Renderer;->nRender(JJ)V

    return-void
.end method

.method public final e(Lcom/google/android/filament/Renderer$ClearOptions;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->c()J

    move-result-wide v0

    iget-object p0, p1, Lcom/google/android/filament/Renderer$ClearOptions;->a:[F

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    iget-boolean v6, p1, Lcom/google/android/filament/Renderer$ClearOptions;->b:Z

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/google/android/filament/Renderer;->nSetClearOptions(JFFFFZZ)V

    return-void
.end method

.method public final f(Lcom/google/android/filament/Renderer$DisplayInfo;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/filament/Renderer;->b:Lcom/google/android/filament/Renderer$DisplayInfo;

    invoke-virtual {p0}, Lcom/google/android/filament/Renderer;->c()J

    move-result-wide v0

    iget p0, p1, Lcom/google/android/filament/Renderer$DisplayInfo;->a:F

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/Renderer;->nSetDisplayInfo(JF)V

    return-void
.end method
