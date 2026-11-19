.class final Lcom/google/android/gms/internal/gtm/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzcf;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/gtm/zzbk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbi;->a:Lcom/google/android/gms/internal/gtm/zzbk;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/gtm/zzat;)V
    .locals 2

    iget-wide v0, p1, Lcom/google/android/gms/internal/gtm/zzat;->a:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->a:Lcom/google/android/gms/internal/gtm/zzbk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbk;->d([Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/gtm/zzat;)V
    .locals 7

    iget-wide v0, p1, Lcom/google/android/gms/internal/gtm/zzat;->b:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/gtm/zzat;->a:J

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbi;->a:Lcom/google/android/gms/internal/gtm/zzbk;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzbk;->f:Lcom/google/android/gms/common/util/DefaultClock;

    if-nez p1, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "hit_first_send_time"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_0
    const-string v0, "gtm_hits"

    const-string v1, "hit_id=?"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbk;->d([Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide/32 v5, 0xdbba00

    add-long/2addr v0, v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-gez p1, :cond_2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbk;->d([Ljava/lang/String;)V

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method
