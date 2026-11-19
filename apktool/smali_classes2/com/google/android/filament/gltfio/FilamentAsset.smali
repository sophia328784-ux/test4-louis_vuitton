.class public Lcom/google/android/filament/gltfio/FilamentAsset;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/gltfio/FilamentInstance;


# direct methods
.method private static native nGetEntities(J[I)V
.end method

.method private static native nGetEntityCount(J)I
.end method

.method private static native nGetFirstEntityByName(JLjava/lang/String;)I
.end method

.method private static native nGetInstance(J)J
.end method

.method private static native nGetLightEntities(J[I)V
.end method

.method private static native nGetLightEntityCount(J)I
.end method

.method private static native nGetResourceUriCount(J)I
.end method

.method private static native nGetResourceUris(J[Ljava/lang/String;)V
.end method

.method private static native nGetRoot(J)I
.end method

.method private static native nPopRenderables(J[I)I
.end method

.method private static native nReleaseSourceData(J)V
.end method


# virtual methods
.method public final a()[I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntityCount(J)I

    move-result v0

    new-array v0, v0, [I

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetEntities(J[I)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetFirstEntityByName(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final c()Lcom/google/android/filament/gltfio/FilamentInstance;
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->b:Lcom/google/android/filament/gltfio/FilamentInstance;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetInstance(J)J

    move-result-wide v0

    new-instance v2, Lcom/google/android/filament/gltfio/FilamentInstance;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-wide v0, v2, Lcom/google/android/filament/gltfio/FilamentInstance;->a:J

    const/4 v0, 0x0

    iput-object v0, v2, Lcom/google/android/filament/gltfio/FilamentInstance;->b:Lcom/google/android/filament/gltfio/Animator;

    iput-object v2, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->b:Lcom/google/android/filament/gltfio/FilamentInstance;

    return-object v2
.end method

.method public final d()[I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetLightEntityCount(J)I

    move-result v0

    new-array v0, v0, [I

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetLightEntities(J[I)V

    return-object v0
.end method

.method public final e()[Ljava/lang/String;
    .locals 3

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetResourceUriCount(J)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetResourceUris(J[Ljava/lang/String;)V

    return-object v0
.end method

.method public final f()I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nGetRoot(J)I

    move-result p0

    return p0
.end method

.method public final g([I)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nPopRenderables(J[I)I

    move-result p0

    return p0
.end method

.method public final h()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/FilamentAsset;->nReleaseSourceData(J)V

    return-void
.end method
