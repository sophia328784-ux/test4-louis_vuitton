.class final Lcom/google/android/gms/internal/gtm/zzcq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/net/Uri;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcv;Landroid/net/Uri;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcq;->zza:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcq;->zzb:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcq;->zza:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Preview requested to uri "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcq;->zzb:Lcom/google/android/gms/internal/gtm/zzcv;

    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzcv;->h:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v2, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    if-ne v4, v1, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, v2, Lcom/google/android/gms/internal/gtm/zzcv;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzcv;->c()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const/4 v4, 0x5

    if-nez p0, :cond_1

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    monitor-exit v3

    return-void

    :cond_1
    iget-object v5, v2, Lcom/google/android/gms/internal/gtm/zzcv;->f:Lcom/google/android/gms/internal/gtm/zzbn;

    invoke-virtual {v5, v0, p0}, Lcom/google/android/gms/internal/gtm/zzbn;->b(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    monitor-exit v3

    return-void

    :cond_2
    iget-boolean p0, v2, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    if-nez p0, :cond_3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    monitor-exit v3

    return-void

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object p0, v2, Lcom/google/android/gms/internal/gtm/zzcv;->c:Lcom/google/android/gms/internal/gtm/zzde;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzde;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzde;->f:Lcom/google/android/gms/internal/gtm/zzbe;

    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzbe;->c()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x0

    :try_start_2
    iput-boolean p0, v2, Lcom/google/android/gms/internal/gtm/zzcv;->m:Z

    const/4 p0, 0x1

    iput p0, v2, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzcv;->b()V

    return-void

    :catch_0
    :try_start_3
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_4
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    monitor-exit v3

    return-void

    :goto_0
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
