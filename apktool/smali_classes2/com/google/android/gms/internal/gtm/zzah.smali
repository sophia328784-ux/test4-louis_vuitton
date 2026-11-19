.class final Lcom/google/android/gms/internal/gtm/zzah;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzah;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzah;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Z)V

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v1

    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/gms/internal/gtm/zzbn;->c:I

    if-ne v5, v3, :cond_1

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzbn;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzak;->f:Lcom/google/android/gms/internal/gtm/zzja;

    iget-object v5, v0, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/internal/gtm/zzak;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/internal/gtm/zzak;->c:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    move-object v9, p0

    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gms/internal/gtm/zzja;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzjh;->b:Lcom/google/android/gms/common/api/Status;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzah;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->b:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzai;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzai;-><init>(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzjh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzak;->k:Lcom/google/android/gms/internal/gtm/zzam;

    const-wide/32 v0, 0x927c0

    const-wide/32 v2, 0x5265c00

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzam;->a(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzak;->a(Lcom/google/android/gms/internal/gtm/zzak;J)V

    return-void
.end method
