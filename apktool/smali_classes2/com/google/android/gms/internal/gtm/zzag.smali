.class final Lcom/google/android/gms/internal/gtm/zzag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzak;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzar;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzar;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Evaluating tags for event "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzak;->l:Lcom/google/android/gms/internal/gtm/zzbt;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbt;->b(Lcom/google/android/gms/internal/gtm/zzar;)V

    return-void

    :cond_0
    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzar;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzak;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-void

    :cond_1
    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzar;

    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-boolean v3, v1, Lcom/google/android/gms/internal/gtm/zzar;->f:Z

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzak;->i:Lcom/google/android/gms/tagmanager/zzq;

    const-string v5, "app"

    iget-object v6, v1, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/gtm/zzar;->a:Landroid/os/Bundle;

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzar;->c:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/tagmanager/zzq;->J(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzak;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/gtm/zzan;->b(Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzar;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzar;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Discarded non-passthrough event "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_3
    return-void
.end method
