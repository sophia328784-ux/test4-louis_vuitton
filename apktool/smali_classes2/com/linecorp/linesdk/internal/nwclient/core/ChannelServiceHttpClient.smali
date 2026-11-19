.class public Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;
    }
.end annotation


# static fields
.field public static final e:[B


# instance fields
.field public final a:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

.field public final b:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->e:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-direct {v0, p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    new-instance p1, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    const-string p2, "UTF-8"

    invoke-direct {p1, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    const p1, 0x15f90

    iput p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->c:I

    iput p1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->d:I

    return-void
.end method

.method public static b(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 5

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->d(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->f(Ljava/net/URLConnection;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "Content-Encoding"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->k(Ljava/net/HttpURLConnection;)I

    move-result p0

    const/16 v1, 0xc8

    if-eq p0, v1, :cond_4

    const/16 v1, 0xcc

    if-eq p0, v1, :cond_4

    :try_start_0
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->SERVER_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    invoke-interface {p2, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->NOT_DEFINED:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {v0, p0, p2, v1}, Lcom/linecorp/linesdk/LineApiError;-><init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    sget-object p0, Lcom/linecorp/linesdk/LineApiResponse;->d:Lcom/linecorp/linesdk/LineApiResponse;

    return-object p0

    :cond_5
    invoke-interface {p1, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/linecorp/linesdk/LineApiResponse;->b(Ljava/lang/Object;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p2, Lcom/linecorp/linesdk/LineApiError;

    sget-object v0, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->HTTP_RESPONSE_PARSE_ERROR:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {p2, p0, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    instance-of v1, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0

    :cond_0
    const-string v0, "The scheme of the server url must be https."

    invoke-static {p0, v0}, Lpq0;->l(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/net/HttpURLConnection;Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Map;Ljava/util/Map;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 0

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/linecorp/linesdk/utils/UriUtils;->a(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->d(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->i(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-static {p3}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {p3, p4, p0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p2, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p2, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p0

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw p0
.end method

.method public final c(Landroid/net/Uri;ILcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->e(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->c:I

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->d:I

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method public final d(Landroid/net/Uri;)Ljava/net/HttpURLConnection;
    .locals 2

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->e(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v0}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->c:I

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->d:I

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    sget-object p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->GET:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;
    .locals 3

    invoke-static {p1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->e(Landroid/net/Uri;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->a:Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;

    invoke-virtual {v1}, Lcom/linecorp/linesdk/internal/nwclient/core/UserAgentGenerator;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->c:I

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->d:I

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    sget-object p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->POST:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method public final g(Landroid/net/Uri;Ljava/util/LinkedHashMap;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object p2, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->e:[B

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/linecorp/linesdk/utils/UriUtils;->a(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p2

    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    array-length v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->f(Landroid/net/Uri;I)Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->i(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    invoke-static {v2}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {v2, p3, p0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p2, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p2, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public final h(Landroid/net/Uri;Ljava/util/LinkedHashMap;Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3

    sget-object v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;->POST:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p3

    invoke-virtual {p0, p1, v2, v0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->c(Landroid/net/Uri;ILcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient$HttpMethod;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->i(Ljava/net/HttpURLConnection;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    invoke-static {v1}, Lcom/dynatrace/android/callback/Callback;->i(Ljava/net/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/StringResponseParser;

    invoke-static {v1, p4, p0}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;->b(Ljava/net/HttpURLConnection;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->NETWORK_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance p2, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p2, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    invoke-static {p1, p2}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-object p0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw p0
.end method
