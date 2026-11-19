.class final Lcom/perfectcorp/uma/countly/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/perfectcorp/uma/countly/p;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/perfectcorp/uma/countly/b;

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/perfectcorp/uma/countly/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/perfectcorp/uma/countly/p;Lcom/perfectcorp/uma/countly/b;Lcom/perfectcorp/uma/countly/d$b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/uma/countly/a;->a:Lcom/perfectcorp/uma/countly/p;

    iput-object p3, p0, Lcom/perfectcorp/uma/countly/a;->c:Lcom/perfectcorp/uma/countly/b;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/perfectcorp/uma/countly/a;->d:Ljava/lang/ref/WeakReference;

    iput-boolean p5, p0, Lcom/perfectcorp/uma/countly/a;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/a;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v0}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "_VALUE"

    const-string v2, "CountlyDatabase"

    const/4 v3, 0x0

    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v7

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/m;->b:Lcom/perfectcorp/uma/countly/m$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "CONNECTION_TABLE"

    const-string v12, "_ID ASC"

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_2

    :try_start_1
    const-string v0, "[getFirstConnection] Failed to query: cursor is null"

    invoke-static {v2, v0}, Lcom/perfectcorp/uma/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v3

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v3, v4

    goto/16 :goto_12

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "[getFirstConnection] Failure of cursor.moveToFirst()."

    :goto_2
    invoke-static {v2, v0}, Lcom/perfectcorp/uma/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_4

    const-string v0, "[getFirstConnection] cursor.getColumnIndex() returned negative number"

    goto :goto_2

    :cond_4
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    move-object v4, v3

    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "[getFirstConnection] Exception: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/perfectcorp/uma/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_1

    goto :goto_1

    :goto_4
    if-eqz v0, :cond_17

    const-string v1, "&device_id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const-string v1, "&device_id="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/uma/countly/a;->c:Lcom/perfectcorp/uma/countly/b;

    iget-object v1, v1, Lcom/perfectcorp/uma/countly/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v1, "app_key="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_6
    move-object v1, v0

    goto :goto_7

    :cond_6
    const-string v1, "&app_key="

    invoke-static {v0, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/perfectcorp/uma/countly/a;->c:Lcom/perfectcorp/uma/countly/b;

    iget-object v1, v1, Lcom/perfectcorp/uma/countly/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_7
    const/4 v2, 0x5

    :try_start_4
    iget-boolean v0, p0, Lcom/perfectcorp/uma/countly/a;->e:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/perfectcorp/uma/countly/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/i?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    invoke-static {v6}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    instance-of v0, v6, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/perfectcorp/uma/countly/u$b;->b:Lcom/perfectcorp/uma/countly/u$b;

    if-eqz v0, :cond_7

    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v7, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v7, v3

    goto/16 :goto_10

    :cond_7
    :goto_8
    sget v0, Lcom/perfectcorp/uma/countly/u$a;->b:I

    if-nez v0, :cond_8

    new-instance v0, Lcom/perfectcorp/uma/countly/u$a;

    move-object v7, v6

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v0, v7}, Lcom/perfectcorp/uma/countly/u$a;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_8
    const/16 v0, 0x7530

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v6, v5}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v6, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v6, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/perfectcorp/uma/countly/a;->c:Lcom/perfectcorp/uma/countly/b;

    iget-object v0, v0, Lcom/perfectcorp/uma/countly/b;->e:Lcom/perfectcorp/uma/internal/b;

    invoke-interface {v0, v1, v6}, Lcom/perfectcorp/uma/internal/b;->a(Ljava/lang/String;Ljava/net/URLConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v6}, Lcom/dynatrace/android/callback/Callback;->b(Ljava/net/URLConnection;)V

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-static {v6}, Lcom/dynatrace/android/callback/Callback;->h(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_9
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_9

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_9

    :catchall_3
    move-exception v0

    :goto_a
    move-object v3, v6

    goto/16 :goto_10

    :cond_9
    instance-of v3, v6, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_b

    move-object v3, v6

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v3

    const/16 v8, 0xc8

    if-lt v3, v8, :cond_a

    const/16 v8, 0x12c

    if-ge v3, v8, :cond_a

    move v8, v4

    goto :goto_b

    :cond_a
    move v8, v5

    :goto_b
    if-nez v8, :cond_c

    const-string v9, "CountlyProcessor"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "HTTP error response code was "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from submitting event data: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v10, v2, v9, v3}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_b
    move v8, v5

    :cond_c
    :goto_c
    if-eqz v8, :cond_d

    new-instance v3, Lorg/json/JSONObject;

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "success"

    const-string v9, "result"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string v3, "CountlyProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Response from Countly server did not report success, it was: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "UTF-8"

    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v9, v2, v3, v0}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_d
    move-object v3, v7

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v7, v3

    goto :goto_a

    :cond_e
    move-object v6, v3

    move v8, v4

    :goto_d
    if-eqz v8, :cond_13

    :try_start_7
    const-string v0, "CountlyProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ok ->"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/perfectcorp/uma/b$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/perfectcorp/uma/countly/a;->a:Lcom/perfectcorp/uma/countly/p;

    monitor-enter v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v7}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    iget-object v0, v0, Lcom/perfectcorp/uma/countly/m;->b:Lcom/perfectcorp/uma/countly/m$a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v8, "DELETE FROM CONNECTION_TABLE WHERE _ID IN (SELECT _ID FROM CONNECTION_TABLE ORDER BY _ID ASC LIMIT 1)"

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_e

    :catch_2
    move v4, v5

    :goto_e
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-nez v4, :cond_10

    if-eqz v3, :cond_f

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :catch_3
    :cond_f
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_17

    :goto_f
    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_11

    :cond_10
    :try_start_c
    iget-object v0, p0, Lcom/perfectcorp/uma/countly/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/uma/countly/d$b;

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/perfectcorp/uma/countly/a;->a:Lcom/perfectcorp/uma/countly/p;

    invoke-virtual {v4}, Lcom/perfectcorp/uma/countly/p;->a()Lcom/perfectcorp/uma/countly/m;

    move-result-object v4

    const-string v5, "CONNECTION_TABLE"

    invoke-virtual {v4, v5}, Lcom/perfectcorp/uma/countly/m;->e(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v0, v1, v4}, Lcom/perfectcorp/uma/countly/d$b;->a(Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :cond_11
    if-eqz v3, :cond_12

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :catch_4
    :cond_12
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    check-cast v6, Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_13
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :catch_5
    instance-of v0, v6, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_17

    goto :goto_f

    :goto_10
    :try_start_11
    const-string v4, "CountlyProcessor"

    const-string v5, "Failed to send data to server"

    new-instance v6, Lcom/perfectcorp/uma/internal/a;

    invoke-direct {v6, v0}, Lcom/perfectcorp/uma/internal/a;-><init>(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v5, v2, v4, v0}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I

    const-string v0, "CountlyProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to send data to server eventData: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/perfectcorp/uma/b$d;->a:Lcom/perfectcorp/uma/m;

    invoke-interface {v4, v2, v0, v1}, Lcom/perfectcorp/uma/m;->a(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v7, :cond_14

    :try_start_12
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    :catch_6
    :cond_14
    instance-of v0, v3, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_17

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_11

    :catchall_6
    move-exception v0

    move-object p0, v0

    if-eqz v7, :cond_15

    :try_start_13
    invoke-virtual {v7}, Ljava/io/BufferedInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    :catch_7
    :cond_15
    instance-of v0, v3, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_16

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    throw p0

    :cond_17
    :goto_11
    iget-object p0, p0, Lcom/perfectcorp/uma/countly/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/uma/countly/d$b;

    if-eqz p0, :cond_18

    invoke-interface {p0}, Lcom/perfectcorp/uma/countly/d$b;->a()V

    :cond_18
    return-void

    :goto_12
    if-eqz v3, :cond_19

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_19
    throw p0
.end method
