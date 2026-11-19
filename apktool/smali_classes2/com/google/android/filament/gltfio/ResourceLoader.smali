.class public Lcom/google/android/filament/gltfio/ResourceLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateResourceLoader(JZ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateStbProvider(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->b:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateKtx2Provider(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->c:J

    const-string p1, "image/jpeg"

    invoke-static {v2, v3, p1, v4, v5}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    const-string p1, "image/png"

    invoke-static {v2, v3, p1, v4, v5}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    const-string p1, "image/ktx2"

    invoke-static {v2, v3, p1, v6, v7}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    invoke-static {}, Lcom/google/android/filament/gltfio/ResourceLoader;->nIsWebpSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateWebpProvider(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->d:J

    const-string p0, "image/webp"

    invoke-static {v2, v3, p0, v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->d:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;Z)V
    .locals 7

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    .line 66
    invoke-static {v0, v1, p2}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateResourceLoader(JZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    .line 67
    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateStbProvider(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->b:J

    .line 68
    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateKtx2Provider(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->c:J

    .line 69
    const-string v6, "image/jpeg"

    invoke-static {p1, p2, v6, v2, v3}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    .line 70
    const-string v6, "image/png"

    invoke-static {p1, p2, v6, v2, v3}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    .line 71
    const-string v2, "image/ktx2"

    invoke-static {p1, p2, v2, v4, v5}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    .line 72
    invoke-static {}, Lcom/google/android/filament/gltfio/ResourceLoader;->nIsWebpSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nCreateWebpProvider(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->d:J

    .line 74
    const-string p0, "image/webp"

    invoke-static {p1, p2, p0, v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddTextureProvider(JLjava/lang/String;J)V

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    .line 75
    iput-wide p1, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->d:J

    return-void
.end method

.method private static native nAddResourceData(JLjava/lang/String;Ljava/nio/Buffer;I)V
.end method

.method private static native nAddTextureProvider(JLjava/lang/String;J)V
.end method

.method private static native nAsyncBeginLoad(JJ)Z
.end method

.method private static native nAsyncCancelLoad(J)V
.end method

.method private static native nAsyncUpdateLoad(J)V
.end method

.method private static native nCreateKtx2Provider(J)J
.end method

.method private static native nCreateResourceLoader(JZ)J
.end method

.method private static native nCreateStbProvider(J)J
.end method

.method private static native nCreateWebpProvider(J)J
.end method

.method private static native nDestroyResourceLoader(J)V
.end method

.method private static native nDestroyTextureProvider(J)V
.end method

.method private static native nEvictResourceData(J)V
.end method

.method private static native nIsWebpSupported()Z
.end method

.method private static native nLoadResources(JJ)V
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/nio/Buffer;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    invoke-static {v0, v1, p1, p2, p0}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAddResourceData(JLjava/lang/String;Ljava/nio/Buffer;I)V

    return-void
.end method

.method public final b(Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    iget-wide p0, p1, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAsyncBeginLoad(JJ)Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAsyncCancelLoad(J)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nAsyncUpdateLoad(J)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nDestroyResourceLoader(J)V

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->b:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nDestroyTextureProvider(J)V

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->c:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nDestroyTextureProvider(J)V

    invoke-static {}, Lcom/google/android/filament/gltfio/ResourceLoader;->nIsWebpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->d:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nDestroyTextureProvider(J)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nEvictResourceData(J)V

    return-void
.end method

.method public final g(Lcom/google/android/filament/gltfio/FilamentAsset;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/ResourceLoader;->a:J

    iget-wide p0, p1, Lcom/google/android/filament/gltfio/FilamentAsset;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/android/filament/gltfio/ResourceLoader;->nLoadResources(JJ)V

    return-void
.end method
