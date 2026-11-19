.class final Lcom/google/android/gms/common/api/internal/zzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/common/api/internal/zzc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzc;Lcom/google/android/gms/common/api/internal/LifecycleCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzc:Lcom/google/android/gms/common/api/internal/zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzc:Lcom/google/android/gms/common/api/internal/zzc;

    iget v1, v0, Lcom/google/android/gms/common/api/internal/zzc;->b:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zzc;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzb;->zzb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->b(Landroid/os/Bundle;)V

    :cond_1
    iget v1, v0, Lcom/google/android/gms/common/api/internal/zzc;->b:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaab;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/common/api/internal/zap;->c:Z

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaab;->e()V

    :cond_2
    iget v1, v0, Lcom/google/android/gms/common/api/internal/zzc;->b:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    check-cast v1, Lcom/google/android/gms/common/api/internal/zaab;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zaab;->e()V

    :cond_3
    iget v1, v0, Lcom/google/android/gms/common/api/internal/zzc;->b:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c()V

    :cond_4
    iget v0, v0, Lcom/google/android/gms/common/api/internal/zzc;->b:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzb;->zza:Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    return-void
.end method
