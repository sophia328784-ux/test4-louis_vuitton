.class public final Lcom/perfectcorp/common/network/RequestTask;
.super Lcom/perfectcorp/common/network/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/network/RequestTask$Response;,
        Lcom/perfectcorp/common/network/RequestTask$RequestMethod;,
        Lcom/perfectcorp/common/network/RequestTask$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/perfectcorp/common/network/j<",
        "Lcom/perfectcorp/common/network/RequestTask$Response<",
        "TResult;>;>;"
    }
.end annotation


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/perfectcorp/common/network/HttpRequestProvider;

.field private final b:Lcom/perfectcorp/common/network/ResponseConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/perfectcorp/common/network/ResponseConverter<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xbb8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1770

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->A(Ljava/lang/Object;Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/network/RequestTask;->g:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/perfectcorp/common/network/RequestTask$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/network/RequestTask$Builder<",
            "TResult;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/perfectcorp/common/network/RequestTask$Builder;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/network/j;-><init>(Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;)V

    iget-object v0, p1, Lcom/perfectcorp/common/network/RequestTask$Builder;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    iput-object v0, p0, Lcom/perfectcorp/common/network/RequestTask;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    iget-object v0, p1, Lcom/perfectcorp/common/network/RequestTask$Builder;->b:Lcom/perfectcorp/common/network/ResponseConverter;

    iput-object v0, p0, Lcom/perfectcorp/common/network/RequestTask;->b:Lcom/perfectcorp/common/network/ResponseConverter;

    iget-object v0, p1, Lcom/perfectcorp/common/network/RequestTask$Builder;->d:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    iput-object v0, p0, Lcom/perfectcorp/common/network/RequestTask;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    iget-object p1, p1, Lcom/perfectcorp/common/network/RequestTask$Builder;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/common/network/RequestTask;->d:Ljava/util/List;

    sget-object p1, Lcom/perfectcorp/common/utility/k;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/common/network/RequestTask$Builder;B)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/perfectcorp/common/network/RequestTask;-><init>(Lcom/perfectcorp/common/network/RequestTask$Builder;)V

    return-void
.end method

.method private a(Lcom/perfectcorp/common/utility/HttpRequest;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/utility/HttpRequest;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/perfectcorp/common/network/RequestTask;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/perfectcorp/common/network/RequestTask;->a(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Lcom/perfectcorp/common/network/j$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[request#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] failed. url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/HttpRequest;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retry timeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RequestTask"

    invoke-static {v3, v1, v2}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    throw p0

    :cond_0
    const/16 v0, 0x5208

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/common/network/RequestTask;->a(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/utility/HttpRequest;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/perfectcorp/common/network/RequestTask$1;->a:[I

    iget-object v1, p0, Lcom/perfectcorp/common/network/RequestTask;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/common/network/RequestTask;->c(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, La61;->h()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/perfectcorp/common/network/RequestTask;->b(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private b(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/utility/HttpRequest;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    const-string v1, "UnknownHostException :"

    const-string v2, "Content-Type"

    const-string v3, "Mozilla/5.0"

    const-string v4, "User-Agent"

    const-string v5, "10"

    const-string v6, "http.maxConnections"

    const-string v7, "RequestTask"

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v9, p1, Lcom/perfectcorp/common/utility/HttpRequest;->a:Ljava/lang/String;

    if-eqz v9, :cond_2

    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    invoke-static {v9}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v9, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v9, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-static {v6, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    iget-object p2, p0, Lcom/perfectcorp/common/network/RequestTask;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    iget-object p2, p2, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->a:Ljava/lang/String;

    invoke-virtual {v9, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "application/x-www-form-urlencoded"

    invoke-virtual {v9, v2, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/perfectcorp/common/network/RequestTask;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, v8

    goto/16 :goto_2

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {v9, p2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/HttpRequest;->b()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-static {v9}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-static {v9}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/common/network/RequestTask;->f:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "response code #"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perfectcorp/common/network/RequestTask;->f:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-static {v1, v7, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v8

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-static {p2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catch_0
    move-exception p0

    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_2
    move-exception p0

    move-object p2, v8

    move-object v9, p2

    goto :goto_2

    :cond_2
    :try_start_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Bad post url"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Input HttpRequest is null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p0

    invoke-static {v8}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-static {p2}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw p0
.end method

.method private c(Lcom/perfectcorp/common/utility/HttpRequest;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/utility/HttpRequest;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/net/HttpURLConnection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/perfectcorp/common/utility/HttpRequest;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    iget-object v1, p0, Lcom/perfectcorp/common/network/RequestTask;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    iget-object v1, v1, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/RequestTask;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v3, v2}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p2

    iput p2, p0, Lcom/perfectcorp/common/network/RequestTask;->f:I

    const-string p2, "RequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response code #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/perfectcorp/common/network/RequestTask;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, p2, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/perfectcorp/common/network/RequestTask;->f:I

    const/16 v2, 0x190

    if-ge v1, v2, :cond_2

    invoke-static {p1}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->c()V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/perfectcorp/common/io/IO;->b(Ljava/io/Closeable;)Z

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p0

    :cond_4
    const-string p0, "Get empty url"

    :goto_3
    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string p0, "Input HttpRequest is null"

    goto :goto_3
.end method

.method private h()Lcom/perfectcorp/common/network/RequestTask$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/perfectcorp/common/network/RequestTask$Response<",
            "TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/perfectcorp/common/network/RequestTask;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    invoke-interface {v0}, Lcom/perfectcorp/common/network/HttpRequestProvider;->get()Lcom/perfectcorp/common/utility/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/common/utility/HttpRequest;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[runImpl#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] url="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v4, "RequestTask"

    invoke-static {v2, v4, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/perfectcorp/common/network/RequestTask;->a(Lcom/perfectcorp/common/utility/HttpRequest;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/net/HttpURLConnection;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] responseCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/perfectcorp/common/network/RequestTask;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", response="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/perfectcorp/common/network/RequestTask;->b:Lcom/perfectcorp/common/network/ResponseConverter;

    invoke-interface {v5, v0}, Lcom/perfectcorp/common/network/ResponseConverter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/perfectcorp/common/network/RequestTask;->e:I

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] convert response end"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/perfectcorp/common/network/RequestTask$Response;

    invoke-direct {p0, v1, v0}, Lcom/perfectcorp/common/network/RequestTask$Response;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/perfectcorp/common/network/RequestTask;->h()Lcom/perfectcorp/common/network/RequestTask$Response;

    move-result-object p0

    return-object p0
.end method

.method public final getHttpRequest()Lcom/perfectcorp/common/utility/HttpRequest;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/common/network/RequestTask;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    invoke-interface {p0}, Lcom/perfectcorp/common/network/HttpRequestProvider;->get()Lcom/perfectcorp/common/utility/HttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "RequestTask"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    const-string v1, "requestMethod"

    iget-object v2, p0, Lcom/perfectcorp/common/network/RequestTask;->c:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/perfectcorp/common/network/RequestTask;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    invoke-interface {v1}, Lcom/perfectcorp/common/network/HttpRequestProvider;->get()Lcom/perfectcorp/common/utility/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/common/utility/HttpRequest;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "priority"

    invoke-virtual {p0}, Lcom/perfectcorp/common/network/j;->b()Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
