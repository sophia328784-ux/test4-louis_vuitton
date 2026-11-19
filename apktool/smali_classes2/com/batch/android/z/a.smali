.class public Lcom/batch/android/z/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/z/a$c;,
        Lcom/batch/android/z/a$b;,
        Lcom/batch/android/z/a$a;,
        Lcom/batch/android/z/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/batch/android/z/a$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "AsyncImageDownloadTask"


# instance fields
.field private final a:Lcom/batch/android/u0/c;

.field private b:Lcom/batch/android/f0/d;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/batch/android/z/a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/batch/android/z/a$c;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-static {}, Lcom/batch/android/t0/b;->a()Lcom/batch/android/u0/c;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/z/a;->a:Lcom/batch/android/u0/c;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batch/android/z/a;->b:Lcom/batch/android/f0/d;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/batch/android/z/a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Lcom/batch/android/z/a$d;
    .locals 9

    const-string v0, ")"

    const-string v1, "Unexpected error while downloading"

    const-string v2, "Server returned an invalid status code ("

    const/4 v3, 0x0

    if-eqz p1, :cond_d

    const/4 v4, 0x0

    aget-object v5, p1, v4

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Downloading image for URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AsyncImageDownloadTask"

    invoke-static {v6, v5}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/net/URL;

    aget-object v7, p1, v4

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_17

    :try_start_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    instance-of v7, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v8, Lcom/batch/android/e/j0;

    invoke-direct {v8}, Lcom/batch/android/e/j0;-><init>()V

    invoke-virtual {v7, v8}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v3

    :goto_0
    move-object v3, v5

    goto/16 :goto_6

    :catch_0
    move-exception p1

    move-object v0, v3

    goto/16 :goto_2

    :catch_1
    move-exception p1

    move-object v0, v3

    goto/16 :goto_3

    :catch_2
    move-exception p1

    move-object v0, v3

    goto/16 :goto_4

    :cond_1
    :goto_1
    const/16 v7, 0x4e20

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v7, 0x7530

    invoke-virtual {v5, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v7, "GET"

    invoke-virtual {v5, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->b(Ljava/net/URLConnection;)V

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v7

    const/16 v8, 0xc8

    if-lt v7, v8, :cond_6

    const/16 v8, 0x12c

    if-ge v7, v8, :cond_6

    invoke-static {v5}, Lcom/dynatrace/android/callback/Callback;->h(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v2, Lcom/batch/android/e/n;

    const/4 v7, 0x6

    invoke-direct {v2, v0, v7}, Lcom/batch/android/e/n;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v2}, Lcom/batch/android/e/n;->a()[I

    move-result-object v7

    invoke-static {v7}, Lcom/batch/android/e0/g;->a([I)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Lcom/batch/android/z/a$b;

    aget-object p1, p1, v4

    invoke-static {v2}, Lcom/batch/android/e/b;->a(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v7, p1, v2}, Lcom/batch/android/z/a$b;-><init>(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_2
    return-object v7

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_2

    :catch_6
    move-exception p1

    goto/16 :goto_3

    :catch_7
    move-exception p1

    goto/16 :goto_4

    :cond_3
    :try_start_6
    new-instance v7, Lcom/batch/android/z/a$a;

    aget-object p1, p1, v4

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v7, p1, v2}, Lcom/batch/android/z/a$a;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :catch_8
    if-eqz v0, :cond_4

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :catch_9
    :cond_4
    return-object v7

    :catch_a
    move-exception p1

    :try_start_9
    const-string v2, "Out of memory while creating the bitmap"

    invoke-static {v6, v2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :catch_b
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :catch_c
    :cond_5
    return-object v3

    :cond_6
    :try_start_c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for URL ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v4

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    iput-object p1, p0, Lcom/batch/android/z/a;->b:Lcom/batch/android/f0/d;
    :try_end_c
    .catch Ljavax/net/ssl/SSLException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-object v3

    :catchall_2
    move-exception p0

    move-object v0, v3

    goto :goto_6

    :catch_e
    move-exception p1

    move-object v0, v3

    move-object v5, v0

    goto :goto_2

    :catch_f
    move-exception p1

    move-object v0, v3

    move-object v5, v0

    goto :goto_3

    :catch_10
    move-exception p1

    move-object v0, v3

    move-object v5, v0

    goto :goto_4

    :goto_2
    :try_start_e
    invoke-static {v6, v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    iput-object p1, p0, Lcom/batch/android/z/a;->b:Lcom/batch/android/f0/d;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v5, :cond_7

    :try_start_f
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_11

    :catch_11
    :cond_7
    if-eqz v0, :cond_a

    goto :goto_5

    :goto_3
    :try_start_10
    invoke-static {v6, v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/batch/android/f0/d;->f:Lcom/batch/android/f0/d;

    iput-object p1, p0, Lcom/batch/android/z/a;->b:Lcom/batch/android/f0/d;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v5, :cond_8

    :try_start_11
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    :catch_12
    :cond_8
    if-eqz v0, :cond_a

    goto :goto_5

    :goto_4
    :try_start_12
    invoke-static {v6, v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p1, Lcom/batch/android/f0/d;->d:Lcom/batch/android/f0/d;

    iput-object p1, p0, Lcom/batch/android/z/a;->b:Lcom/batch/android/f0/d;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v5, :cond_9

    :try_start_13
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :cond_9
    if-eqz v0, :cond_a

    :goto_5
    :try_start_14
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :cond_a
    return-object v3

    :goto_6
    if-eqz v3, :cond_b

    :try_start_15
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :cond_b
    if-eqz v0, :cond_c

    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :cond_c
    throw p0

    :catch_17
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while reading the image URL ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    return-object v3
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/batch/android/z/a;->doInBackground([Ljava/lang/String;)Lcom/batch/android/z/a$d;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/batch/android/z/a$d;)V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/z/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z/a$c;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/batch/android/z/a$b;

    iget-object p0, p0, Lcom/batch/android/z/a;->a:Lcom/batch/android/u0/c;

    if-eqz v1, :cond_0

    const-string v1, "gif"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/u0/c;

    invoke-virtual {p0}, Lcom/batch/android/u0/c;->m()V

    goto :goto_0

    :cond_0
    const-string v1, "image"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/batch/android/u0/b;->a([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/u0/c;

    invoke-virtual {p0}, Lcom/batch/android/u0/c;->m()V

    :goto_0
    invoke-interface {v0, p1}, Lcom/batch/android/z/a$c;->b(Lcom/batch/android/z/a$d;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/batch/android/z/a;->a:Lcom/batch/android/u0/c;

    invoke-virtual {p1}, Lcom/batch/android/u0/c;->m()V

    sget-object p1, Lcom/batch/android/t0/b;->e:Lcom/batch/android/u0/a;

    invoke-virtual {p1}, Lcom/batch/android/u0/a;->l()V

    iget-object p0, p0, Lcom/batch/android/z/a;->b:Lcom/batch/android/f0/d;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/batch/android/f0/d;->c:Lcom/batch/android/f0/d;

    :goto_1
    invoke-interface {v0, p0}, Lcom/batch/android/z/a$c;->b(Lcom/batch/android/f0/d;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/batch/android/z/a;->a:Lcom/batch/android/u0/c;

    invoke-virtual {p1}, Lcom/batch/android/u0/c;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/batch/android/z/a;->a:Lcom/batch/android/u0/c;

    invoke-virtual {p0}, Lcom/batch/android/u0/c;->m()V

    :cond_4
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/batch/android/z/a$d;

    invoke-virtual {p0, p1}, Lcom/batch/android/z/a;->onPostExecute(Lcom/batch/android/z/a$d;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/z/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batch/android/z/a$c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/batch/android/z/a$c;->c()V

    iget-object p0, p0, Lcom/batch/android/z/a;->a:Lcom/batch/android/u0/c;

    invoke-virtual {p0}, Lcom/batch/android/u0/c;->n()V

    :cond_0
    return-void
.end method
