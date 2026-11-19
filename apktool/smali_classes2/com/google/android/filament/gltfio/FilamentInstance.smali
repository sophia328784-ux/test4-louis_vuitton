.class public Lcom/google/android/filament/gltfio/FilamentInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/gltfio/Animator;


# direct methods
.method private static native nGetAnimator(J)J
.end method


# virtual methods
.method public final a()Lcom/google/android/filament/gltfio/Animator;
    .locals 3

    iget-object v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->b:Lcom/google/android/filament/gltfio/Animator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/filament/gltfio/Animator;

    iget-wide v1, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->a:J

    invoke-static {v1, v2}, Lcom/google/android/filament/gltfio/FilamentInstance;->nGetAnimator(J)J

    move-result-wide v1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, v0, Lcom/google/android/filament/gltfio/Animator;->a:J

    iput-object v0, p0, Lcom/google/android/filament/gltfio/FilamentInstance;->b:Lcom/google/android/filament/gltfio/Animator;

    return-object v0
.end method
