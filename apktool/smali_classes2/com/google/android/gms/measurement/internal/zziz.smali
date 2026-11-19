.class final synthetic Lcom/google/android/gms/measurement/internal/zziz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjd;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzoo;

.field private final synthetic zzd:Lcom/google/android/gms/measurement/internal/zzgh;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzjd;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;Lcom/google/android/gms/measurement/internal/zzgh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Lcom/google/android/gms/measurement/internal/zzjd;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzoo;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zziz;->zzd:Lcom/google/android/gms/measurement/internal/zzgh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zziz;->zza:Lcom/google/android/gms/measurement/internal/zzjd;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zziz;->zzb:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zziz;->zzc:Lcom/google/android/gms/measurement/internal/zzoo;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zziz;->zzd:Lcom/google/android/gms/measurement/internal/zzgh;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzjd;->a:Lcom/google/android/gms/measurement/internal/zzpg;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->W()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->c()Lcom/google/android/gms/measurement/internal/zzhz;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->m0()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzpg;->c:Lcom/google/android/gms/measurement/internal/zzaw;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzfy;->B:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lcom/google/android/gms/measurement/internal/zzaw;->l(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzoo;I)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/zzpj;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzpj;->c:Ljava/lang/String;

    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzpj;->h:J

    iget-wide v10, v5, Lcom/google/android/gms/measurement/internal/zzpj;->a:J

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzpg;->s(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->b()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzpj;->c:Ljava/lang/String;

    const-string v9, "[sgtm] batch skipped due to destination in backoff. appId, rowId, url"

    invoke-virtual {v7, v9, v2, v8, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v7, v5, Lcom/google/android/gms/measurement/internal/zzpj;->i:I

    if-gtz v7, :cond_1

    goto :goto_1

    :cond_1
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->z:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v12, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v7, v12, :cond_2

    goto/16 :goto_4

    :cond_2
    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->x:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v12, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-int/lit8 v7, v7, -0x1

    const-wide/16 v14, 0x1

    shl-long/2addr v14, v7

    mul-long/2addr v12, v14

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzfy;->y:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->e()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    add-long/2addr v12, v8

    cmp-long v7, v14, v12

    if-ltz v7, :cond_6

    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzpj;->d:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-wide v13, v5, Lcom/google/android/gms/measurement/internal/zzpj;->a:J

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzpj;->b:Lcom/google/android/gms/internal/measurement/zzib;

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/zzpj;->c:Ljava/lang/String;

    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/zzpj;->e:Lcom/google/android/gms/measurement/internal/zzls;

    iget-wide v11, v5, Lcom/google/android/gms/measurement/internal/zzpj;->g:J

    move-wide/from16 v19, v11

    new-instance v12, Lcom/google/android/gms/measurement/internal/zzom;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzacb;->i()[B

    move-result-object v15

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzls;->d0()I

    move-result v18

    const-string v21, ""

    move-object/from16 v17, v7

    move-object/from16 v16, v9

    invoke-direct/range {v12 .. v21}, Lcom/google/android/gms/measurement/internal/zzom;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzib;->H()Lcom/google/android/gms/internal/measurement/zzhz;

    move-result-object v5

    iget-object v7, v12, Lcom/google/android/gms/measurement/internal/zzom;->c:[B

    invoke-static {v5, v7}, Lcom/google/android/gms/measurement/internal/zzpk;->R(Lcom/google/android/gms/internal/measurement/zzadp;[B)Lcom/google/android/gms/internal/measurement/zzafb;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzhz;

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzib;->B()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v5, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/measurement/zzib;->C(I)Lcom/google/android/gms/internal/measurement/zzid;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzadu;->r()Lcom/google/android/gms/internal/measurement/zzadp;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzic;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->e()Lcom/google/android/gms/common/util/Clock;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v11, v8, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v11, v9, v10}, Lcom/google/android/gms/internal/measurement/zzid;->q0(J)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzadp;->l()V

    iget-object v9, v5, Lcom/google/android/gms/internal/measurement/zzadp;->c:Lcom/google/android/gms/internal/measurement/zzadu;

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzid;

    invoke-virtual {v9, v7, v8}, Lcom/google/android/gms/internal/measurement/zzib;->J(ILcom/google/android/gms/internal/measurement/zzid;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzacb;->i()[B

    move-result-object v7

    iput-object v7, v12, Lcom/google/android/gms/measurement/internal/zzom;->c:[B

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->b()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgu;->q()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzpg;->g:Lcom/google/android/gms/measurement/internal/zzpk;

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzpg;->U(Lcom/google/android/gms/measurement/internal/zzos;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzadp;->v()Lcom/google/android/gms/internal/measurement/zzadu;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzib;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/zzpk;->H(Lcom/google/android/gms/internal/measurement/zzib;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lcom/google/android/gms/measurement/internal/zzom;->h:Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzaeh; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->b()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v7, "Failed to parse queued batch. appId"

    invoke-virtual {v5, v2, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->b()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "[sgtm] batch skipped waiting for next retry. appId, rowId, lastUploadMillis"

    invoke-virtual {v5, v9, v2, v7, v8}, Lcom/google/android/gms/measurement/internal/zzgs;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzoq;

    invoke-direct {v3, v4}, Lcom/google/android/gms/measurement/internal/zzoq;-><init>(Ljava/util/ArrayList;)V

    :try_start_1
    invoke-interface {v0, v3}, Lcom/google/android/gms/measurement/internal/zzgh;->g2(Lcom/google/android/gms/measurement/internal/zzoq;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->b()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v4, "[sgtm] Sending queued upload batches to client. appId, count"

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzoq;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzpg;->b()Lcom/google/android/gms/measurement/internal/zzgu;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v3, "[sgtm] Failed to return upload batches for app"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_5
    return-void
.end method
