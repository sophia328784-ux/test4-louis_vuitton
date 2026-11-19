.class final Lcom/google/android/gms/internal/gtm/zzcg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzaq;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/gtm/zzcf;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Lcom/google/android/gms/common/util/DefaultClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzcf;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcg;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzcg;->c:Lcom/google/android/gms/internal/gtm/zzcf;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcg;->d:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcg;->e:Ljava/util/HashMap;

    sget-object p1, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcg;->f:Lcom/google/android/gms/common/util/DefaultClock;

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "GoogleTagManager/5.06 (Linux; U; Android "

    const-string v3, "; "

    invoke-static {v2, p1, v3, v0, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " Build/"

    const-string v2, ")"

    invoke-static {p1, p2, v0, v1, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "GET"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x28

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    :goto_0
    if-ge v6, v3, :cond_13

    move-object/from16 v8, p1

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzat;

    iget-object v0, v9, Lcom/google/android/gms/internal/gtm/zzat;->c:Ljava/lang/String;

    iget-wide v10, v9, Lcom/google/android/gms/internal/gtm/zzat;->a:J

    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    const/4 v13, 0x0

    :goto_1
    iget-object v14, v1, Lcom/google/android/gms/internal/gtm/zzcg;->f:Lcom/google/android/gms/common/util/DefaultClock;

    iget-object v15, v1, Lcom/google/android/gms/internal/gtm/zzcg;->e:Ljava/util/HashMap;

    iget-object v4, v1, Lcom/google/android/gms/internal/gtm/zzcg;->d:Ljava/util/HashMap;

    iget-object v12, v1, Lcom/google/android/gms/internal/gtm/zzcg;->c:Lcom/google/android/gms/internal/gtm/zzcf;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    add-long v18, v18, v16

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    cmp-long v0, v18, v16

    if-lez v0, :cond_0

    check-cast v12, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/gtm/zzbi;->b(Lcom/google/android/gms/internal/gtm/zzat;)V

    move/from16 v17, v3

    goto :goto_2

    :cond_0
    iget-object v0, v9, Lcom/google/android/gms/internal/gtm/zzat;->d:Ljava/lang/String;

    iget-object v5, v9, Lcom/google/android/gms/internal/gtm/zzat;->e:Ljava/util/HashMap;

    move/from16 v17, v3

    iget-object v3, v9, Lcom/google/android/gms/internal/gtm/zzat;->f:Ljava/lang/String;

    const/16 v18, 0x5

    if-nez v13, :cond_1

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    check-cast v12, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/gtm/zzbi;->a(Lcom/google/android/gms/internal/gtm/zzat;)V

    :goto_2
    move/from16 v19, v6

    const/4 v6, 0x1

    goto/16 :goto_1b

    :cond_1
    :try_start_1
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    move-object/from16 v20, v5

    move-object/from16 v5, v19

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v7, :cond_3

    :try_start_2
    iget-object v7, v1, Lcom/google/android/gms/internal/gtm/zzcg;->b:Landroid/content/Context;

    sget v19, Lcom/google/android/gms/internal/gtm/zzbh;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v19, v6

    :try_start_3
    const-string v6, "com.google.analytics.RADIO_POWERED"

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.google.android.gms.internal.gtm.zzbh"

    move-wide/from16 v21, v10

    const/4 v10, 0x1

    invoke-virtual {v8, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x22

    if-ge v6, v10, :cond_2

    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    const/4 v10, 0x0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_4
    const/4 v10, 0x0

    goto :goto_5

    :cond_2
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v6

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x0

    :try_start_4
    invoke-virtual {v7, v8, v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v19, v6

    goto :goto_4

    :goto_5
    const/4 v6, 0x1

    const/4 v7, 0x1

    goto/16 :goto_17

    :cond_3
    move/from16 v19, v6

    move-wide/from16 v21, v10

    goto :goto_3

    :goto_6
    :try_start_5
    const-string v6, "User-Agent"

    iget-object v7, v1, Lcom/google/android/gms/internal/gtm/zzcg;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_e

    :cond_4
    if-nez v0, :cond_5

    const-string v0, "Hit %d retrieved from the store has null HTTP method."

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/gtm/zzbi;->a(Lcom/google/android/gms/internal/gtm/zzat;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_8
    :try_start_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v6, 0x1

    :goto_9
    const/4 v7, 0x0

    goto/16 :goto_1b

    :catch_1
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_14

    :cond_5
    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v7, "PUT"

    const-string v8, "POST"

    const-string v11, "HEAD"

    if-nez v6, :cond_6

    :try_start_8
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/gtm/zzbi;->a(Lcom/google/android/gms/internal/gtm/zzat;)V

    goto :goto_8

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    sparse-switch v6, :sswitch_data_0

    goto :goto_b

    :sswitch_0
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_a

    :sswitch_1
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_c

    :sswitch_2
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_a
    :try_start_9
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v3, :cond_7

    const/4 v6, 0x1

    :try_start_a
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    goto :goto_e

    :cond_7
    :goto_b
    const/4 v6, 0x1

    goto :goto_d

    :sswitch_3
    const/4 v6, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_c
    if-eqz v3, :cond_8

    :try_start_b
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_8
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_9
    :goto_d
    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    const/16 v7, 0xc8

    if-lt v0, v7, :cond_b

    const/16 v7, 0x12c

    if-lt v0, v7, :cond_a

    goto :goto_f

    :cond_a
    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbi;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzbi;->a:Lcom/google/android/gms/internal/gtm/zzbk;

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gtm/zzbk;->d([Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_12

    :catchall_5
    move-exception v0

    move-object v10, v7

    :goto_e
    const/4 v7, 0x0

    goto :goto_17

    :cond_b
    :goto_f
    :try_start_d
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :goto_10
    :try_start_f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    goto :goto_10

    :cond_c
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto :goto_11

    :catchall_6
    move-exception v0

    goto :goto_16

    :catchall_7
    move-exception v0

    goto :goto_15

    :cond_d
    move-object v3, v10

    :goto_11
    if-eqz v3, :cond_e

    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_e
    move-object v0, v12

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/gtm/zzbi;->b(Lcom/google/android/gms/internal/gtm/zzat;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    move-object v7, v10

    :goto_12
    if-eqz v7, :cond_f

    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_14

    :cond_f
    :goto_13
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_9

    :goto_14
    const/4 v7, 0x0

    goto :goto_19

    :goto_15
    move-object v3, v10

    :goto_16
    if-eqz v3, :cond_10

    :try_start_12
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_10
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :goto_17
    if-eqz v10, :cond_11

    :try_start_13
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_18

    :catch_3
    move-exception v0

    goto :goto_19

    :cond_11
    :goto_18
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    :catch_4
    move-exception v0

    move/from16 v19, v6

    const/4 v6, 0x1

    :goto_19
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    check-cast v12, Lcom/google/android/gms/internal/gtm/zzbi;

    invoke-virtual {v12, v9}, Lcom/google/android/gms/internal/gtm/zzbi;->b(Lcom/google/android/gms/internal/gtm/zzat;)V

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v8

    const-wide/32 v10, 0x927c0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_1a

    :cond_12
    const-wide/16 v8, 0x1388

    :goto_1a
    invoke-virtual {v13}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :goto_1b
    add-int/lit8 v0, v19, 0x1

    move v6, v0

    move/from16 v3, v17

    goto/16 :goto_0

    :cond_13
    return-void

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_3
        0x136ef -> :sswitch_2
        0x21c5e0 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch
.end method
