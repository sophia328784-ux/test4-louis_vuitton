.class public Lcom/google/android/filament/gltfio/UbershaderProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/filament/gltfio/MaterialProvider;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/android/filament/VertexBuffer$VertexAttribute;->values()[Lcom/google/android/filament/VertexBuffer$VertexAttribute;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/filament/Engine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/filament/Engine;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/UbershaderProvider;->nCreateUbershaderProvider(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/UbershaderProvider;->a:J

    return-void
.end method

.method private static native nCreateUbershaderProvider(J)J
.end method

.method private static native nDestroyMaterials(J)V
.end method

.method private static native nDestroyUbershaderProvider(J)V
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/UbershaderProvider;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/UbershaderProvider;->nDestroyUbershaderProvider(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/filament/gltfio/UbershaderProvider;->a:J

    return-void
.end method

.method public final b()V
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/UbershaderProvider;->a:J

    invoke-static {v0, v1}, Lcom/google/android/filament/gltfio/UbershaderProvider;->nDestroyMaterials(J)V

    return-void
.end method

.method public getNativeObject()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/filament/gltfio/UbershaderProvider;->a:J

    return-wide v0
.end method
