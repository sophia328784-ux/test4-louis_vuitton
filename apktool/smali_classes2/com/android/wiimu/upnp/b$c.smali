.class Lcom/android/wiimu/upnp/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/wiimu/upnp/IWiimuActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wiimu/upnp/b;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/wiimu/upnp/b;


# direct methods
.method public constructor <init>(Lcom/android/wiimu/upnp/b;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/util/Map;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "VerUpdateFlag"

    const-string v3, "BatteryPercent"

    const-string v4, "BatteryFlag"

    const-string v5, "InternetAccess"

    const-string v6, "PlayMedium"

    const-string v7, "TrackSource"

    const-string v8, "SlaveList"

    const-string v9, "CurrentChannel"

    const-string v10, "SubNum"

    const-string v11, "TimeStamp"

    const-string v12, "CurrentVolume"

    const-string v13, "LoopMode"

    const-string v14, "RelTime"

    const-string v15, "TrackURI"

    move-object/from16 v16, v2

    const-string v2, "TrackMetaData"

    move-object/from16 v17, v3

    const-string v3, "TrackDuration"

    move-object/from16 v18, v4

    const-string v4, "CurrentTransportState"

    move-object/from16 v19, v5

    iget-object v5, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v5}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_2

    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v5

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_3
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_4
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v5

    :goto_1
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    move-object v4, v5

    :goto_2
    invoke-interface {v1, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_7
    move-object v12, v5

    :goto_3
    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "0"

    if-eqz v13, :cond_8

    :try_start_2
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_8
    move-object v11, v14

    :goto_4
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x2

    if-ge v10, v13, :cond_a

    iget-object v10, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v10}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v10

    iget-object v13, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v13}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v13

    iget-object v13, v13, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v10, v13}, Lcom/android/wiimu/upnp/c;->a(Ljava/lang/String;)Lcom/android/wiimu/upnp/b;

    move-result-object v10

    if-nez v10, :cond_9

    new-instance v10, Lcom/android/wiimu/upnp/b;

    iget-object v13, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v13}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/android/wiimu/upnp/b;-><init>(Lb/c;)V

    invoke-static {}, Lcom/android/wiimu/upnp/c;->c()Lcom/android/wiimu/upnp/c;

    move-result-object v13

    iget-object v15, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v15}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v15

    iget-object v15, v15, Lb/c;->b:Ljava/lang/String;

    invoke-virtual {v13, v15, v10}, Lcom/android/wiimu/upnp/c;->a(Ljava/lang/String;Lcom/android/wiimu/upnp/b;)V

    :cond_9
    invoke-virtual {v10}, Lcom/android/wiimu/upnp/b;->g()V

    iget-object v10, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v10}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v10

    iget-object v10, v10, Lb/c;->f:Lb/d;

    iput-object v14, v10, Lb/d;->b:Ljava/lang/String;

    :cond_a
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_c
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_d
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_e
    move-object/from16 v6, v19

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "1"

    if-eqz v7, :cond_f

    :try_start_3
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    move-object/from16 v7, v18

    goto :goto_6

    :cond_f
    move-object v6, v8

    goto :goto_5

    :goto_6
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    move-object/from16 v9, v17

    goto :goto_8

    :cond_10
    move-object v7, v14

    goto :goto_7

    :goto_8
    invoke-interface {v1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_9
    move-object/from16 v10, v16

    goto :goto_a

    :cond_11
    move-object v9, v14

    goto :goto_9

    :goto_a
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_12
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    iget-object v8, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    if-eqz v1, :cond_13

    :try_start_4
    invoke-static {v8}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v1

    iget-object v1, v1, Lb/c;->f:Lb/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_b

    :cond_13
    invoke-static {v8}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v1

    iget-object v1, v1, Lb/c;->f:Lb/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_b
    iget-object v1, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v1}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v1

    iget-object v1, v1, Lb/c;->f:Lb/d;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-object v0, v0, Lcom/android/wiimu/upnp/b$c;->a:Lcom/android/wiimu/upnp/b;

    invoke-static {v0}, Lcom/android/wiimu/upnp/b;->c(Lcom/android/wiimu/upnp/b;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x2328

    cmp-long v6, v13, v15

    if-lez v6, :cond_14

    invoke-static {v0}, Lcom/android/wiimu/upnp/b;->b(Lcom/android/wiimu/upnp/b;)Lb/c;

    move-result-object v0

    iget-object v0, v0, Lb/c;->e:Lb/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v11}, Lb/d;->a(ILjava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v2}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    invoke-static {v3}, Lorg/teleal/cling/model/ModelUtil;->a(Ljava/lang/String;)J

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
