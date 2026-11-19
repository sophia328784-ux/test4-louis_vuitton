.class final synthetic Lcom/google/android/gms/measurement/internal/zzjb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjd;

.field private final synthetic zzb:Landroid/os/Bundle;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Lcom/google/android/gms/measurement/internal/zzjd;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zza:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v12, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzb:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzc:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzjb;->zzd:Lcom/google/android/gms/measurement/internal/zzr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    if-eqz v1, :cond_0

    iget-object p0, v13, Lcom/google/android/gms/measurement/internal/zzpg;->c:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzos;->h()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzaw;->X()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "delete from default_event_params where app_id=?"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v1, "Error clearing default event params"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzpg;->c:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    iget-object v14, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzos;->h()V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbc;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-string v3, ""

    const-string v5, "dep"

    const-wide/16 v6, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/measurement/internal/zzbc;-><init>(Lcom/google/android/gms/measurement/internal/zzic;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLandroid/os/Bundle;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzol;->b:Lcom/google/android/gms/measurement/internal/zzpg;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzpg;->g:Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/measurement/internal/zzpk;->G(Lcom/google/android/gms/measurement/internal/zzbc;)Lcom/google/android/gms/internal/measurement/zzhs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzacb;->i()[B

    move-result-object v1

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Saving default event parameters, appId, data size"

    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parameters"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaw;->X()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v5, "default_event_params"

    const/4 v6, 0x5

    invoke-virtual {v0, v5, v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v3, "Failed to insert default event parameters (got -1). appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Error storing default event parameters. appId"

    invoke-virtual {v2, v5, v3, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v2, v13, Lcom/google/android/gms/measurement/internal/zzpg;->c:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/zzr;->E:J

    :try_start_2
    const-string p0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name not like \'!_%\' escape \'!\' limit 1;"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    const-wide/16 v7, 0x0

    invoke-virtual {v2, p0, v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->D(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long p0, v9, v7

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "select count(*) from raw_events where app_id=? and timestamp >= ? and name like \'!_%\' escape \'!\' limit 1;"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p0, v0, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaw;->D(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    cmp-long p0, v2, v7

    if-lez p0, :cond_3

    iget-object p0, v13, Lcom/google/android/gms/measurement/internal/zzpg;->c:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v4, v0, v1, v12}, Lcom/google/android/gms/measurement/internal/zzaw;->z(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p0, v0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v1, "Error checking backfill conditions"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
