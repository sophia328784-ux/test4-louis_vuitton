.class final Lcom/google/android/gms/internal/gtm/zzcs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzct;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzct;ZLjava/lang/String;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzc:Lcom/google/android/gms/internal/gtm/zzct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzc:Lcom/google/android/gms/internal/gtm/zzct;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzct;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    iget-object v2, v0, Lcom/google/android/gms/internal/gtm/zzcv;->l:Ljava/util/LinkedList;

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zza:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    iput p0, v0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcs;->zzb:Ljava/lang/String;

    const-string v1, "Error loading container:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    :goto_0
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/4 p0, 0x5

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-void
.end method
