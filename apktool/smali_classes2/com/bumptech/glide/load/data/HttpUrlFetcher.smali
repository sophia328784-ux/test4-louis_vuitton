.class public Lcom/bumptech/glide/load/data/HttpUrlFetcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/data/HttpUrlFetcher$HttpUrlConnectionFactory;,
        Lcom/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/bumptech/glide/load/model/GlideUrl;

.field public final c:I

.field public d:Ljava/net/HttpURLConnection;

.field public e:Ljava/io/InputStream;

.field public volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/GlideUrl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->b:Lcom/bumptech/glide/load/model/GlideUrl;

    iput p2, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    const-class p0, Ljava/io/InputStream;

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final c(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;
    .locals 7

    const-string v0, "HttpUrlFetcher"

    const/4 v1, 0x5

    const/4 v2, -0x1

    if-ge p2, v1, :cond_c

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/bumptech/glide/load/HttpException;

    const-string v1, "In re-direct loop"

    invoke-direct {p3, v1, v2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p3
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    iget p3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->c:I

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v3, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 p3, 0x1

    invoke-virtual {v3, p3}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iput-object v3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x3

    :try_start_2
    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->e:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    iget-boolean v3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->f:Z

    if-eqz v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    iget-object v3, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    :try_start_3
    invoke-static {v3}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move v3, v2

    :goto_2
    div-int/lit8 v4, v3, 0x64

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    iget-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    :try_start_4
    sget-object p2, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_4
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->c(Ljava/net/URLConnection;)I

    move-result p2

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p3

    int-to-long v3, p2

    new-instance p2, Lcom/bumptech/glide/util/ContentLengthInputStream;

    invoke-direct {p2, p3, v3, v4}, Lcom/bumptech/glide/util/ContentLengthInputStream;-><init>(Ljava/io/InputStream;J)V

    iput-object p2, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->e:Ljava/io/InputStream;

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    :cond_5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->D(Ljava/net/HttpURLConnection;)V

    :cond_6
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    :cond_7
    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->e:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    iget-object p0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->e:Ljava/io/InputStream;

    return-object p0

    :goto_4
    new-instance p2, Lcom/bumptech/glide/load/HttpException;

    :try_start_5
    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_5
    const-string p1, "Failed to obtain InputStream"

    invoke-direct {p2, p1, v2, p0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :cond_8
    if-ne v4, v1, :cond_a

    iget-object v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-static {v1, v0}, Lcom/dynatrace/android/callback/Callback;->e(Ljava/lang/String;Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :try_start_6
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->b()V

    add-int/2addr p2, p3

    invoke-virtual {p0, v1, p2, p1, p4}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->c(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0

    :catch_4
    move-exception p0

    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Bad redirect url: "

    invoke-static {p2, v0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v3, p0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :cond_9
    new-instance p0, Lcom/bumptech/glide/load/HttpException;

    const-string p1, "Received empty or null redirect url"

    invoke-direct {p0, p1, v3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_a
    if-ne v3, v2, :cond_b

    new-instance p0, Lcom/bumptech/glide/load/HttpException;

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/HttpException;-><init>(I)V

    throw p0

    :cond_b
    :try_start_7
    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    iget-object p0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->l(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v3}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    move-exception p0

    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "Failed to get a response message"

    invoke-direct {p1, p2, v3, p0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :catch_6
    move-exception p1

    new-instance p2, Lcom/bumptech/glide/load/HttpException;

    iget-object p0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->d:Ljava/net/HttpURLConnection;

    :try_start_8
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_6
    const-string p0, "Failed to connect or obtain data"

    invoke-direct {p2, p0, v2, p1}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2

    :catch_8
    move-exception p0

    new-instance p1, Lcom/bumptech/glide/load/HttpException;

    const-string p2, "URL.openConnection threw"

    invoke-direct {p1, p2, v1, p0}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p1

    :cond_c
    new-instance p0, Lcom/bumptech/glide/load/HttpException;

    const-string p1, "Too many (> 5) redirects!"

    invoke-direct {p0, p1, v2}, Lcom/bumptech/glide/load/HttpException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->f:Z

    return-void
.end method

.method public final d()Lcom/bumptech/glide/load/DataSource;
    .locals 0

    sget-object p0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object p0
.end method

.method public final e(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 5

    iget-object p1, p0, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->b:Lcom/bumptech/glide/load/model/GlideUrl;

    const-string v0, "HttpUrlFetcher"

    sget v1, Lcom/bumptech/glide/util/LogTime;->a:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/GlideUrl;->d()Ljava/net/URL;

    move-result-object v2

    iget-object p1, p1, Lcom/bumptech/glide/load/model/GlideUrl;->b:Lcom/bumptech/glide/load/model/Headers;

    invoke-interface {p1}, Lcom/bumptech/glide/load/model/Headers;->a()Ljava/util/Map;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, p1}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;->c(Ljava/net/URL;ILjava/net/URL;Ljava/util/Map;)Ljava/io/InputStream;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x3

    :try_start_1
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->c(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_0
    return-void

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    :cond_1
    throw p0
.end method
