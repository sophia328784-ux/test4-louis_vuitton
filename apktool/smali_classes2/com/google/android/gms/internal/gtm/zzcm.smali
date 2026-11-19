.class final Lcom/google/android/gms/internal/gtm/zzcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzcn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcm;->zza:Lcom/google/android/gms/internal/gtm/zzcn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcm;->zza:Lcom/google/android/gms/internal/gtm/zzcn;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcn;->zza:Lcom/google/android/gms/internal/gtm/zzcv;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->l:Ljava/util/LinkedList;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->d:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
