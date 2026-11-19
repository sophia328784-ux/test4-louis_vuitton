.class public Lcom/google/android/filament/gltfio/Animator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method private static native nApplyAnimation(JIF)V
.end method

.method private static native nGetAnimationCount(J)I
.end method

.method private static native nGetAnimationDuration(JI)F
.end method

.method private static native nUpdateBoneMatrices(J)V
.end method


# virtual methods
.method public final a(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->d()J

    move-result-wide v1

    invoke-static {v1, v2, v0, p1}, Lcom/google/android/filament/gltfio/Animator;->nApplyAnimation(JIF)V

    return-void
.end method

.method public final b()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/Animator;->nGetAnimationCount(J)I

    move-result p0

    return p0
.end method

.method public final c()F
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->d()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/Animator;->nGetAnimationDuration(JI)F

    move-result p0

    return p0
.end method

.method public final d()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/Animator;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Using Animator on destroyed asset"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/gltfio/Animator;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/Animator;->nUpdateBoneMatrices(J)V

    return-void
.end method
