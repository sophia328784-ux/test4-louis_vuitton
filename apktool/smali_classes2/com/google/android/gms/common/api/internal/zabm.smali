.class final Lcom/google/android/gms/common/api/internal/zabm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zab:Lcom/google/android/gms/common/api/internal/zabn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zabn;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/api/internal/zabn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/api/internal/zabn;

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zabn;->f:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/zabn;->a:Lcom/google/android/gms/common/api/Api$Client;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->k:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/zabn;->b:Lcom/google/android/gms/common/api/internal/ApiKey;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/zabk;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v3}, Lcom/google/android/gms/common/ConnectionResult;->W1()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/android/gms/common/api/internal/zabn;->e:Z

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->g()Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$Client;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/google/android/gms/common/api/Api$Client;->i(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabm;->zab:Lcom/google/android/gms/common/api/internal/zabn;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabn;->a:Lcom/google/android/gms/common/api/Api$Client;

    const-string v0, "Failed to get service from broker."

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/Api$Client;->a(Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v1, p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void

    :cond_1
    iget-boolean p0, v0, Lcom/google/android/gms/common/api/internal/zabn;->e:Z

    if-eqz p0, :cond_2

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zabn;->c:Lcom/google/android/gms/common/internal/IAccountAccessor;

    if-eqz p0, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zabn;->d:Ljava/util/Set;

    invoke-interface {v2, p0, v0}, Lcom/google/android/gms/common/api/Api$Client;->i(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabm;->zaa:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v1, p0, v4}, Lcom/google/android/gms/common/api/internal/zabk;->m(Lcom/google/android/gms/common/ConnectionResult;Ljava/lang/RuntimeException;)V

    return-void
.end method
