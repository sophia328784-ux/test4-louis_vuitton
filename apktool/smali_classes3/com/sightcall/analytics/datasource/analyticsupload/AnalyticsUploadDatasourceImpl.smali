.class public final Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J.\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0096@\u00a2\u0006\u0002\u0010\u000eJ(\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\tH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;",
        "Lcom/sightcall/analytics/datasource/AnalyticsUploadDatasource;",
        "analyticsUploadApi",
        "Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;",
        "<init>",
        "(Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;)V",
        "upload",
        "",
        "uploadUrl",
        "",
        "token",
        "chunk",
        "",
        "fileName",
        "(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "tryUpload",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final analyticsUploadApi:Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;


# direct methods
.method public constructor <init>(Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;->analyticsUploadApi:Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    return-void
.end method

.method private final tryUpload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;,
            Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException;
        }
    .end annotation

    sget-object v0, Lokhttp3/MultipartBody$Part;->c:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p4, v1}, Lokhttp3/RequestBody$Companion;->b(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v2

    const-string v3, "name"

    invoke-static {v3, v1, v2}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    sget-object v3, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    const-string v4, "application/octet-stream"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {v4}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    array-length v3, p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, p3}, Lokhttp3/RequestBody$Companion;->a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p3

    const-string v0, "file"

    invoke-static {v0, p4, p3}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p3

    iget-object p0, p0, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;->analyticsUploadApi:Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;

    new-instance p4, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;

    invoke-direct {p4, p2}, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, p1, p4, v2, p3}, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadApi;->upload(Ljava/lang/String;Lcom/sightcall/httpclient/SightCallHeaders$Authorization$Bearer;Lokhttp3/MultipartBody$Part;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object p0

    iget-object p1, p0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p1, p1, Lokhttp3/Response;->r:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException;

    iget-object p2, p0, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget p2, p2, Lokhttp3/Response;->e:I

    iget-object p0, p0, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    invoke-direct {p1, p2, p0}, Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException;-><init>(ILokhttp3/ResponseBody;)V

    throw p1
.end method


# virtual methods
.method public upload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sightcall/analytics/datasource/analyticsupload/AnalyticsUploadDatasourceImpl;->tryUpload(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sightcall/pratik/exceptions/NotSuccessfulResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    goto :goto_0

    :catch_2
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
