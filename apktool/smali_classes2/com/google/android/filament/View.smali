.class public Lcom/google/android/filament/View;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/View$BlendMode;,
        Lcom/google/android/filament/View$AntiAliasing;,
        Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;,
        Lcom/google/android/filament/View$Dithering;,
        Lcom/google/android/filament/View$AmbientOcclusion;,
        Lcom/google/android/filament/View$BloomOptions;,
        Lcom/google/android/filament/View$InternalOnPickCallback;,
        Lcom/google/android/filament/View$OnPickCallback;,
        Lcom/google/android/filament/View$PickingQueryResult;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/Viewport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/View$AntiAliasing;->values()[Lcom/google/android/filament/View$AntiAliasing;

    invoke-static {}, Lcom/google/android/filament/View$Dithering;->values()[Lcom/google/android/filament/View$Dithering;

    invoke-static {}, Lcom/google/android/filament/View$AmbientOcclusion;->values()[Lcom/google/android/filament/View$AmbientOcclusion;

    return-void
.end method

.method private static native nPick(JIILjava/lang/Object;Lcom/google/android/filament/View$InternalOnPickCallback;)V
.end method

.method private static native nSetAntiAliasing(JI)V
.end method

.method private static native nSetBlendMode(JI)V
.end method

.method private static native nSetBloomOptions(JJFFIIIZZFZZFIFFFFF)V
.end method

.method private static native nSetCamera(JJ)V
.end method

.method private static native nSetColorGrading(JJ)V
.end method

.method private static native nSetMultiSampleAntiAliasingOptions(JZIZ)V
.end method

.method private static native nSetScene(JJ)V
.end method

.method private static native nSetViewport(JIIII)V
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/View;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed View"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final b(IILjava/util/concurrent/ExecutorService;Ly81;)V
    .locals 6

    new-instance v5, Lcom/google/android/filament/View$InternalOnPickCallback;

    invoke-direct {v5, p4}, Lcom/google/android/filament/View$InternalOnPickCallback;-><init>(Lcom/google/android/filament/View$OnPickCallback;)V

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nPick(JIILjava/lang/Object;Lcom/google/android/filament/View$InternalOnPickCallback;)V

    return-void
.end method

.method public final c(Lcom/google/android/filament/View$AntiAliasing;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetAntiAliasing(JI)V

    return-void
.end method

.method public final d(Lcom/google/android/filament/View$BlendMode;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/google/android/filament/View;->nSetBlendMode(JI)V

    return-void
.end method

.method public final e(Lcom/google/android/filament/View$BloomOptions;)V
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v1

    iget v5, v0, Lcom/google/android/filament/View$BloomOptions;->a:F

    iget-object v3, v0, Lcom/google/android/filament/View$BloomOptions;->b:Lcom/google/android/filament/View$BloomOptions$BlendMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    iget-boolean v9, v0, Lcom/google/android/filament/View$BloomOptions;->c:Z

    iget-boolean v10, v0, Lcom/google/android/filament/View$BloomOptions;->d:Z

    iget v11, v0, Lcom/google/android/filament/View$BloomOptions;->e:F

    iget v3, v0, Lcom/google/android/filament/View$BloomOptions;->f:F

    iget v0, v0, Lcom/google/android/filament/View$BloomOptions;->g:F

    move/from16 v20, v0

    move-wide v0, v1

    move/from16 v19, v3

    const-wide/16 v2, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    const/16 v6, 0x180

    const/4 v7, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x1

    const v14, 0x3ba3d70a    # 0.005f

    const/4 v15, 0x4

    const v16, 0x3f19999a    # 0.6f

    const/high16 v17, 0x41200000    # 10.0f

    const v18, 0x3dcccccd    # 0.1f

    invoke-static/range {v0 .. v20}, Lcom/google/android/filament/View;->nSetBloomOptions(JJFFIIIZZFZZFIFFFFF)V

    return-void
.end method

.method public final f(Lcom/google/android/filament/Camera;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Camera;->a()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetCamera(JJ)V

    return-void
.end method

.method public final g(Lcom/google/android/filament/ColorGrading;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    iget-wide p0, p1, Lcom/google/android/filament/ColorGrading;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetColorGrading(JJ)V

    return-void

    :cond_0
    const-string p0, "Calling method on destroyed ColorGrading"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    iget-boolean p0, p1, Lcom/google/android/filament/View$MultiSampleAntiAliasingOptions;->a:Z

    const/4 p1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, p1, v2}, Lcom/google/android/filament/View;->nSetMultiSampleAntiAliasingOptions(JZIZ)V

    return-void
.end method

.method public final i(Lcom/google/android/filament/Scene;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/View;->nSetScene(JJ)V

    return-void
.end method

.method public final j(Lcom/google/android/filament/Viewport;)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/filament/View;->b:Lcom/google/android/filament/Viewport;

    invoke-virtual {p0}, Lcom/google/android/filament/View;->a()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/filament/View;->b:Lcom/google/android/filament/Viewport;

    iget v2, p0, Lcom/google/android/filament/Viewport;->a:I

    iget v3, p0, Lcom/google/android/filament/Viewport;->b:I

    iget v4, p0, Lcom/google/android/filament/Viewport;->c:I

    iget v5, p0, Lcom/google/android/filament/Viewport;->d:I

    invoke-static/range {v0 .. v5}, Lcom/google/android/filament/View;->nSetViewport(JIIII)V

    return-void
.end method
