.class final Lcom/google/android/gms/internal/gtm/zzaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/google/android/gms/internal/gtm/zzix;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzaj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzaf;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzaf;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget v3, v2, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-boolean v0, v2, Lcom/google/android/gms/internal/gtm/zzak;->p:Z

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v3

    iget-object v6, v2, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    iget v7, v3, Lcom/google/android/gms/internal/gtm/zzbn;->c:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/internal/gtm/zzbn;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzam;->b()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "FORBIDDEN_COUNT"

    const-wide/16 v11, 0x0

    invoke-interface {v3, v6, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v3, v6, v11

    if-lez v3, :cond_2

    move v0, v4

    :cond_2
    iput-boolean v0, v2, Lcom/google/android/gms/internal/gtm/zzak;->p:Z

    if-nez v0, :cond_3

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v6, v2, Lcom/google/android/gms/internal/gtm/zzak;->f:Lcom/google/android/gms/internal/gtm/zzja;

    iget-object v7, v2, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/internal/gtm/zzak;->d:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/internal/gtm/zzak;->c:Ljava/lang/String;

    iget-object v12, v2, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    move-object v11, p0

    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/internal/gtm/zzja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzjh;->b:Lcom/google/android/gms/common/api/Status;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzaf;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzai;-><init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzjh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzae;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/gtm/zzae;-><init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzaj;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
