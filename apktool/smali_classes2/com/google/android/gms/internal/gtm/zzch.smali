.class final Lcom/google/android/gms/internal/gtm/zzch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Landroid/os/Bundle;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:J

.field final synthetic zze:Ljava/lang/String;

.field final synthetic zzf:Lcom/google/android/gms/internal/gtm/zzci;

.field private zzg:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzci;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzch;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzb:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzc:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzd:J

    iput-object p7, p0, Lcom/google/android/gms/internal/gtm/zzch;->zze:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzf:Lcom/google/android/gms/internal/gtm/zzci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzg:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzf:Lcom/google/android/gms/internal/gtm/zzci;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzci;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzcv;->k:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzch;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzb:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzc:Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzd:J

    iget-object p0, v0, Lcom/google/android/gms/internal/gtm/zzcv;->c:Lcom/google/android/gms/internal/gtm/zzde;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzde;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzde;->f:Lcom/google/android/gms/internal/gtm/zzbe;

    const/4 v9, 0x1

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/gtm/zzbe;->S(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p0, 0x5

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x4

    const/4 v3, 0x2

    if-ne v1, v2, :cond_2

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzch;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzc:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzb:Landroid/os/Bundle;

    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :try_start_1
    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzcv;->b:Lcom/google/android/gms/tagmanager/zzq;

    iget-wide v8, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzd:J

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/tagmanager/zzq;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzf:Lcom/google/android/gms/internal/gtm/zzci;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzci;->a:Lcom/google/android/gms/internal/gtm/zzcv;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/gtm/zzan;->b(Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/gtm/zzcv;->a:Landroid/content/Context;

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "Unexpected state:"

    invoke-static {v1, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/gtm/zzan;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzg:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzb:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/gtm/zzch;->zzg:Z

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcv;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_5
    const-string p0, "Invalid state - not expecting to see a deferredevent during container loading."

    invoke-static {v2, p0}, Lcom/google/android/gms/internal/gtm/zzan;->c(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
