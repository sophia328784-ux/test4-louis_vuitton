.class public Lcom/google/android/filament/gltfio/AssetLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Lcom/google/android/filament/gltfio/MaterialProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;Lcom/google/android/filament/gltfio/MaterialProvider;Lcom/google/android/filament/EntityManager;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/google/android/filament/EntityManager;->getNativeObject()J

    move-result-wide v2

    invoke-static {v0, v1, p2, v2, v3}, Lcom/google/android/filament/gltfio/AssetLoader;->nCreateAssetLoader(JLjava/lang/Object;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->a:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/google/android/filament/gltfio/AssetLoader;->b:Lcom/google/android/filament/gltfio/MaterialProvider;

    return-void

    :cond_0
    const-string p0, "Unable to parse glTF asset."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static native nCreateAsset(JLjava/nio/Buffer;I)J
.end method

.method private static native nCreateAssetLoader(JLjava/lang/Object;J)J
.end method

.method private static native nDestroyAsset(JJ)V
.end method

.method private static native nDestroyAssetLoader(J)V
.end method


# virtual methods
.method public final a(Ljava/nio/Buffer;)Lcom/google/android/filament/gltfio/FilamentAsset;
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->a:J

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/android/filament/gltfio/AssetLoader;->nCreateAsset(JLjava/nio/Buffer;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/filament/gltfio/FilamentAsset;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide p0, v0, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/AssetLoader;->nDestroyAssetLoader(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->a:J

    return-void
.end method

.method public final c(Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/AssetLoader;->a:J

    iget-wide v2, p1, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/gltfio/AssetLoader;->nDestroyAsset(JJ)V

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/google/android/filament/gltfio/FilamentAsset;->b:Lcom/google/android/filament/gltfio/FilamentInstance;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    return-void
.end method
