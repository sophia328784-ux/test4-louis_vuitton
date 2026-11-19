.class final Lcom/google/android/gms/internal/gtm/zzcl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzcv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcl;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzcl;->zzb:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcl;->zzc:Lcom/google/android/gms/internal/gtm/zzcv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcl;->zza:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzcl;->zzc:Lcom/google/android/gms/internal/gtm/zzcv;

    iget v3, v2, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object p0, v2, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    const-string v0, "Unexpected state - container loading already initiated."

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzan;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iput v1, v2, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcl;->zzb:Ljava/lang/String;

    iget-object v1, v2, Lcom/google/android/gms/internal/gtm/zzcv;->c:Lcom/google/android/gms/internal/gtm/zzde;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzct;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/gtm/zzct;-><init>(Lcom/google/android/gms/internal/gtm/zzcv;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzde;->a()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzde;->f:Lcom/google/android/gms/internal/gtm/zzbe;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, v2, v3}, Lcom/google/android/gms/internal/gtm/zzbe;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzbb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x5

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :try_start_1
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/gtm/zzct;->I1(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v3, v0, v4}, Lcom/google/android/gms/internal/gtm/zzct;->I1(Ljava/lang/String;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->b()V

    return-void
.end method
