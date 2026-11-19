.class final Lcom/google/android/gms/internal/gtm/zzbk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzay;


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzbj;

.field public volatile b:Lcom/google/android/gms/internal/gtm/zzcg;

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/String;

.field public e:J

.field public final f:Lcom/google/android/gms/common/util/DefaultClock;

.field public final g:I

.field public final h:Lcom/google/android/gms/internal/gtm/zzby;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzby;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbk;->c:Landroid/content/Context;

    const-string v0, "gtm_urls.db"

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->h:Lcom/google/android/gms/internal/gtm/zzby;

    sget-object p1, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->f:Lcom/google/android/gms/common/util/DefaultClock;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbj;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/internal/gtm/zzbj;-><init>(Lcom/google/android/gms/internal/gtm/zzbk;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->a:Lcom/google/android/gms/internal/gtm/zzbj;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcg;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzbi;-><init>(Lcom/google/android/gms/internal/gtm/zzbk;)V

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzcg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzcf;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->b:Lcom/google/android/gms/internal/gtm/zzcg;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->e:J

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->g:I

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzbk;->h:Lcom/google/android/gms/internal/gtm/zzby;

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzbk;->f:Lcom/google/android/gms/common/util/DefaultClock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/google/android/gms/internal/gtm/zzbk;->e:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "gtm_hits"

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    iput-wide v4, v1, Lcom/google/android/gms/internal/gtm/zzbk;->e:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide v10, -0x9a7ec800L

    add-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "HIT_TIME < ?"

    invoke-virtual {v0, v9, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->c()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v7

    :goto_0
    iget-object v4, v3, Lcom/google/android/gms/internal/gtm/zzby;->a:Lcom/google/android/gms/internal/gtm/zzce;

    iget-boolean v5, v4, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/internal/gtm/zzce;->b(ZZ)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->c()I

    move-result v0

    iget v4, v1, Lcom/google/android/gms/internal/gtm/zzbk;->g:I

    sub-int/2addr v0, v4

    add-int/2addr v0, v6

    const/4 v4, 0x5

    const/4 v5, 0x0

    if-lez v0, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_5

    :cond_3
    :try_start_0
    const-string v11, "gtm_hits"

    const-string v12, "hit_id"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    const-string v17, "hit_id ASC"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_3
    move-object v5, v10

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v10, v5

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbk;->d([Ljava/lang/String;)V

    goto :goto_7

    :goto_6
    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    :goto_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    goto/16 :goto_a

    :cond_9
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "hit_time"

    invoke-virtual {v6, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "hit_url"

    move-object/from16 v11, p3

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "hit_first_send_time"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p4, :cond_a

    const-string v10, "GET"

    goto :goto_8

    :cond_a
    move-object/from16 v10, p4

    :goto_8
    const-string v12, "hit_method"

    invoke-virtual {v6, v12, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "hit_unique_id"

    move-object/from16 v12, p5

    invoke-virtual {v6, v10, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_b

    move-object v2, v5

    goto :goto_9

    :cond_b
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    const-string v10, "hit_headers"

    invoke-virtual {v6, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hit_body"

    move-object/from16 v10, p7

    invoke-virtual {v6, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    invoke-virtual {v0, v9, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, v3, Lcom/google/android/gms/internal/gtm/zzby;->a:Lcom/google/android/gms/internal/gtm/zzce;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    invoke-virtual {v0, v7, v2}, Lcom/google/android/gms/internal/gtm/zzce;->b(ZZ)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error storing hit: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_a

    :catch_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Hit has already been sent: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :goto_a
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzbn;->c:I

    if-ne v0, v8, :cond_c

    invoke-static {v8}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->b()V

    :cond_c
    return-void
.end method

.method public final b()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzbk;->b:Lcom/google/android/gms/internal/gtm/zzcg;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzcg;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move/from16 v18, v2

    goto/16 :goto_14

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v13, "hit_first_send_time"

    const-string v14, "hit_id"

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    move v15, v5

    move v2, v6

    const/16 v19, 0x5

    goto/16 :goto_10

    :cond_2
    move v7, v5

    :try_start_0
    const-string v5, "gtm_hits"

    const-string v0, "hit_time"

    filled-new-array {v14, v0, v13}, [Ljava/lang/String;

    move-result-object v0

    const-string v11, "hit_id ASC"

    const/16 v17, 0x28

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v8, v7

    const/4 v7, 0x0

    move v9, v8

    const/4 v8, 0x0

    move v10, v9

    const/4 v9, 0x0

    move/from16 v18, v10

    const/4 v10, 0x0

    move v2, v6

    move/from16 v15, v18

    const/16 v19, 0x5

    move-object v6, v0

    :try_start_1
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzat;

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    const/4 v3, 0x2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(JJ)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    goto/16 :goto_d

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    move-object v3, v6

    goto/16 :goto_c

    :cond_4
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object v3, v5

    :try_start_4
    const-string v5, "gtm_hits"

    const-string v0, "hit_url"

    const-string v7, "hit_method"

    const-string v8, "hit_headers"

    const-string v9, "hit_body"

    filled-new-array {v14, v0, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ASC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v17, v3

    move-object v3, v6

    move-object v6, v0

    :try_start_5
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_b

    move v4, v15

    :cond_5
    move-object v0, v5

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Landroid/database/AbstractCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzat;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    iput-object v6, v0, Lcom/google/android/gms/internal/gtm/zzat;->c:Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_7
    :goto_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzat;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/google/android/gms/internal/gtm/zzat;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzat;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/google/android/gms/internal/gtm/zzat;->f:Ljava/lang/String;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x3

    :try_start_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v8, v15

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_9

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_8
    move-object/from16 v7, v16

    :cond_9
    :try_start_8
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzat;

    iput-object v7, v0, Lcom/google/android/gms/internal/gtm/zzat;->e:Ljava/util/HashMap;

    goto :goto_4

    :goto_3
    const-string v6, "Failed to read headers for hitId %d: %s"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/gtm/zzat;

    iget-wide v7, v7, Lcom/google/android/gms/internal/gtm/zzat;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    goto :goto_5

    :cond_a
    const-string v0, "HitString for hitId %d too large. Hit will be deleted."

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzat;

    iget-wide v6, v6, Lcom/google/android/gms/internal/gtm/zzat;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v0, :cond_5

    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    move-object v3, v6

    goto :goto_7

    :goto_6
    move-object/from16 v5, v17

    goto :goto_b

    :goto_7
    move-object/from16 v5, v17

    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v15

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzat;

    iget-object v7, v6, Lcom/google/android/gms/internal/gtm/zzat;->c:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v4, :cond_c

    goto :goto_a

    :cond_c
    move v4, v2

    :cond_d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_9

    :cond_e
    :goto_a
    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f
    move-object v3, v0

    goto :goto_10

    :goto_b
    if-eqz v5, :cond_10

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :goto_c
    move-object/from16 v5, v17

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_c

    :goto_d
    move-object/from16 v16, v17

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    goto/16 :goto_13

    :catch_6
    move-exception v0

    goto :goto_e

    :catch_7
    move-exception v0

    move v2, v6

    move v15, v7

    const/16 v19, 0x5

    :goto_e
    move-object/from16 v5, v16

    :goto_f
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v5, :cond_11

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_11
    :goto_10
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzbk;->h:Lcom/google/android/gms/internal/gtm/zzby;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzby;->a:Lcom/google/android/gms/internal/gtm/zzce;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzce;->b(ZZ)V

    return-void

    :cond_12
    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzbk;->b:Lcom/google/android/gms/internal/gtm/zzcg;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzcg;->a(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz v4, :cond_16

    :try_start_b
    const-string v5, "gtm_hits"

    filled-new-array {v14, v13}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "hit_first_send_time=0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :catchall_5
    move-exception v0

    goto :goto_12

    :catch_8
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-nez v16, :cond_14

    move v5, v15

    :goto_11
    if-lez v5, :cond_16

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzce;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzce;->a()V

    return-void

    :cond_14
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    return-void

    :goto_12
    if-eqz v16, :cond_15

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v0

    :cond_16
    return-void

    :catchall_6
    move-exception v0

    move-object/from16 v16, v5

    :goto_13
    if-eqz v16, :cond_17

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_17
    throw v0

    :goto_14
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return-void
.end method

.method public final c()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SELECT COUNT(*) from gtm_hits"

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0

    :cond_3
    return v0
.end method

.method public final d([Ljava/lang/String;)V
    .locals 5

    const-string v0, "gtm_hits"

    if-eqz p1, :cond_2

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ","

    const-string v4, "?"

    invoke-static {v1, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "HIT_ID in ("

    const-string v4, ")"

    invoke-static {v3, v1, v4}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbk;->h:Lcom/google/android/gms/internal/gtm/zzby;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbk;->c()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzby;->a:Lcom/google/android/gms/internal/gtm/zzce;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/gtm/zzce;->g:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/gtm/zzce;->b(ZZ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Error deleting hits: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const/4 p0, 0x5

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->a:Lcom/google/android/gms/internal/gtm/zzbj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbj;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbk;->c:Landroid/content/Context;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 p0, 0x2

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    const/4 p0, 0x0

    return-object p0
.end method
