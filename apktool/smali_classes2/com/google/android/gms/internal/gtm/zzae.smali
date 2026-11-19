.class final Lcom/google/android/gms/internal/gtm/zzae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzaj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    const/4 v0, 0x3

    iput v0, v1, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzar;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/gtm/zzar;->f:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v5, v1, Lcom/google/android/gms/internal/gtm/zzak;->i:Lcom/google/android/gms/tagmanager/zzq;

    const-string v6, "app"

    iget-object v7, v0, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/gtm/zzar;->a:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzar;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-interface/range {v5 .. v10}, Lcom/google/android/gms/tagmanager/zzq;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget-object v3, v3, Lcom/google/android/gms/internal/gtm/zzak;->a:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gtm/zzan;->b(Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method
