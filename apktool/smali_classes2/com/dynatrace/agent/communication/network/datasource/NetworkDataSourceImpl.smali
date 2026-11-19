.class public final Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;",
        "Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;",
        "Lokhttp3/Call$Factory;",
        "client",
        "Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;",
        "configRequestFactory",
        "Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;",
        "dataRequestFactory",
        "Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;",
        "configurationsParser",
        "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;",
        "connectivityChecker",
        "<init>",
        "(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V",
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
.field public final a:Lokhttp3/Call$Factory;

.field public final b:Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;

.field public final c:Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;

.field public final d:Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;

.field public final e:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->a:Lokhttp3/Call$Factory;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->b:Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;

    iput-object p3, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->c:Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->d:Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;

    iput-object p5, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->e:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;
    .locals 4

    const-string v0, "config request: "

    :try_start_0
    iget-object v1, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->e:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;->b()Lcom/dynatrace/agent/common/connectivity/NetworkState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/dynatrace/agent/common/connectivity/NetworkState;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->a:Lokhttp3/Call$Factory;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->b:Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;

    invoke-virtual {v2, p1}, Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;->a(Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;)Lokhttp3/Request;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lokhttp3/Call$Factory;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    move-result-object v0

    iget-object v1, p1, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->b:Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    invoke-virtual {p0, v0, v1, p1}, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->c(Lokhttp3/Response;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/storage/db/EndPointInfo;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "config request failed: no connectivity"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    const-string p1, "No internet connection"

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    const-string p1, "unknown_error"

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final b(Lcom/dynatrace/agent/communication/network/datasource/DataRequest;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;
    .locals 5

    const-string v0, "data request body: "

    const-string v1, "data request: "

    :try_start_0
    iget-object v2, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->e:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    invoke-interface {v2}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;->b()Lcom/dynatrace/agent/common/connectivity/NetworkState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/dynatrace/agent/common/connectivity/NetworkState;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->a:Lokhttp3/Call$Factory;

    iget-object v3, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->c:Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;

    invoke-virtual {v3, p1}, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;->a(Lcom/dynatrace/agent/communication/network/datasource/DataRequest;)Lokhttp3/Request;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lokhttp3/Call$Factory;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealCall;->execute()Lokhttp3/Response;

    move-result-object v0

    iget-object v1, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->d:Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object p1, p1, Lcom/dynatrace/agent/communication/network/datasource/DataRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    invoke-virtual {p0, v0, v1, p1}, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->c(Lokhttp3/Response;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/storage/db/EndPointInfo;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "data request failed: no connectivity"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    const-string p1, "No internet connection"

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;

    const-string p1, "unknown_error"

    invoke-direct {p0, p1}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Lokhttp3/Response;Lcom/dynatrace/agent/communication/LocalServerData;Lcom/dynatrace/agent/storage/db/EndPointInfo;)Lcom/dynatrace/agent/communication/network/response/ResponseResult;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    iget v1, p1, Lokhttp3/Response;->e:I

    const/4 v2, 0x0

    const/16 v3, 0x1ad

    if-ne v1, v3, :cond_2

    iget-object p0, p1, Lokhttp3/Response;->g:Lokhttp3/Headers;

    const-string p1, "Retry-After"

    invoke-virtual {p0, p1}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/text/StringsKt;->Z(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object p3, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p1, p2, p3}, Lkotlin/time/DurationKt;->h(JLkotlin/time/DurationUnit;)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    sget-wide p1, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImplKt;->a:J

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "erroneous response: too many requests; retry-after: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;

    invoke-direct {p0, p1, p2, v2}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    :cond_2
    const-string p1, "; body: "

    const/16 v4, 0x195

    if-ne v1, v4, :cond_3

    goto :goto_2

    :cond_3
    const/16 v5, 0xc8

    if-eq v1, v4, :cond_5

    if-eq v1, v3, :cond_5

    if-eq v1, v5, :cond_5

    const/16 v3, 0x1f7

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1f4

    if-eq v1, v3, :cond_5

    const/16 v3, 0x19b

    if-eq v1, v3, :cond_5

    const/16 v3, 0x19d

    if-eq v1, v3, :cond_5

    const/16 v3, 0x193

    if-eq v1, v3, :cond_5

    const/16 v3, 0x190

    if-eq v1, v3, :cond_5

    const/16 v3, 0xca

    if-eq v1, v3, :cond_5

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "erroneous response: unexpected response code: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;->a:Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    return-object p0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "erroneous response: no body; response code: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;->a:Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    return-object p0

    :cond_7
    iget-object p0, p0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;->d:Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;->b:Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;

    iget-object v4, p2, Lcom/dynatrace/agent/communication/LocalServerData;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-wide v6, v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    iget-object p3, p3, Lcom/dynatrace/agent/storage/db/EndPointInfo;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Lorg/json/JSONTokener;

    invoke-direct {v3, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;->a(Lorg/json/JSONObject;)Lcom/dynatrace/agent/communication/api/AgentState;

    move-result-object v4

    invoke-static {v3}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->a(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v8

    if-nez v4, :cond_9

    :cond_8
    :goto_4
    move-object v3, v2

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v6, v9, v6

    if-gtz v6, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p3, v3, v6, v7}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;->b(Ljava/lang/String;Lorg/json/JSONObject;J)Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    move-result-object p3

    if-eqz p3, :cond_8

    new-instance v3, Lcom/dynatrace/agent/communication/network/response/ParsedResponse;

    invoke-direct {v3, v4, p3}, Lcom/dynatrace/agent/communication/network/response/ParsedResponse;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;)V

    goto :goto_6

    :cond_b
    :goto_5
    new-instance v3, Lcom/dynatrace/agent/communication/network/response/ParsedResponse;

    invoke-direct {v3, v4, v2}, Lcom/dynatrace/agent/communication/network/response/ParsedResponse;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    goto :goto_4

    :goto_6
    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    :try_start_1
    iget-object p2, p2, Lcom/dynatrace/agent/communication/LocalServerData;->c:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-virtual {p0, p2, v0}, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    move-result-object p0

    new-instance p2, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;

    iget-object p3, v3, Lcom/dynatrace/agent/communication/network/response/ParsedResponse;->a:Lcom/dynatrace/agent/communication/api/AgentState;

    iget-object v3, v3, Lcom/dynatrace/agent/communication/network/response/ParsedResponse;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-direct {p2, p3, v3, p0}, Lcom/dynatrace/agent/communication/api/ServerDataUpdate;-><init>(Lcom/dynatrace/agent/communication/api/AgentState;Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p2

    goto :goto_7

    :catch_1
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :goto_7
    if-nez v2, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "erroneous config received: parsing error; response code: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;->a:Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;

    goto :goto_8

    :cond_d
    if-ne v1, v5, :cond_e

    const-string p0, "successful response: "

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;

    invoke-direct {p0, v2}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;-><init>(Lcom/dynatrace/agent/communication/api/ServerDataUpdate;)V

    goto :goto_8

    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "retrying due to erroneous response code: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    new-instance p0, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;-><init>(Ljava/lang/String;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;)V

    :goto_8
    return-object p0
.end method
