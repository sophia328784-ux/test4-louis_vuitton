.class final Lcom/google/android/gms/internal/gtm/zzcx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzar;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzcz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcz;Lcom/google/android/gms/internal/gtm/zzar;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zza:Lcom/google/android/gms/internal/gtm/zzar;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzb:Lcom/google/android/gms/internal/gtm/zzcz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zzb:Lcom/google/android/gms/internal/gtm/zzcz;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzcz;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcz;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzak;

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcx;->zza:Lcom/google/android/gms/internal/gtm/zzar;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzag;

    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zzag;-><init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzar;)V

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzak;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
