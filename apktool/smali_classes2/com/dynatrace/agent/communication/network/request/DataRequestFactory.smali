.class public final Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;",
        "",
        "",
        "version",
        "Lkotlin/Function0;",
        "",
        "timestampProvider",
        "",
        "useCompression",
        "<init>",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lkotlin/jvm/functions/Function0;

.field public final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->b:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/communication/network/datasource/DataRequest;)Lokhttp3/Request;
    .locals 9

    iget-object v0, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v1, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->b:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->c:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedWriter;

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "application/octet-stream"

    invoke-static {v2}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    sget-object v3, Lcom/dynatrace/agent/communication/network/request/Compression;->GZIP:Lcom/dynatrace/agent/communication/network/request/Compression;

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v3, p0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-static {v1}, Lkotlin/text/StringsKt;->o(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "application/json;charset=UTF-8"

    invoke-static {v2}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    sget-object v3, Lcom/dynatrace/agent/communication/network/request/Compression;->UNCOMPRESSED:Lcom/dynatrace/agent/communication/network/request/Compression;

    :goto_0
    new-instance v4, Lokhttp3/Headers$Builder;

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v5, "accept-encoding"

    const-string v6, "gzip"

    invoke-virtual {v4, v5, v6}, Lokhttp3/Headers$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    array-length v6, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6, v2, v1}, Lokhttp3/RequestBody$Companion;->a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v2

    sget-object v5, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    iget-object v6, v0, Lcom/dynatrace/agent/storage/db/EndPointInfo;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->d:Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object v6, v6, Lcom/dynatrace/agent/communication/LocalServerData;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-wide v6, v6, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    iget-object v8, p0, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->a:Ljava/lang/String;

    invoke-static {v5, v0, v8, v6, v7}, Lcom/dynatrace/agent/communication/network/request/HttpUrlExtensionsKt;->a(Lokhttp3/HttpUrl$Builder;Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;J)V

    iget-boolean v0, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "high"

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->b:Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "cy"

    const-string v7, "event"

    invoke-virtual {v5, v6, v7}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v6, "pr"

    invoke-virtual {v5, v6, v0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bc"

    invoke-virtual {v5, v1, v0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/dynatrace/agent/communication/network/request/Compression;->UNCOMPRESSED:Lcom/dynatrace/agent/communication/network/request/Compression;

    if-eq v3, v0, :cond_3

    const-string v0, "co"

    invoke-virtual {v3}, Lcom/dynatrace/agent/communication/network/request/Compression;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "st"

    invoke-virtual {v5, v0, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->e:Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rc"

    invoke-virtual {v5, v1, v0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->b:Ljava/lang/String;

    if-eqz p0, :cond_5

    const-string v0, "rr"

    invoke-virtual {v5, v0, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->f:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string p1, "si"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p1, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v5}, Lcom/dynatrace/agent/communication/network/request/HttpUrlExtensionsKt;->b(Lokhttp3/HttpUrl$Builder;)Lokhttp3/HttpUrl;

    move-result-object p0

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "POST"

    invoke-virtual {p1, v0, v2}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->d()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->h()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p1, Lokhttp3/Request$Builder;->c:Lokhttp3/Headers$Builder;

    iput-object p0, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0
.end method
