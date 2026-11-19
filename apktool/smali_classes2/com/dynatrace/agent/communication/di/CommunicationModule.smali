.class public final Lcom/dynatrace/agent/communication/di/CommunicationModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001BI\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/di/CommunicationModule;",
        "",
        "Lokhttp3/Call$Factory;",
        "httpFactory",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "",
        "version",
        "Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;",
        "dataBaseDataSource",
        "Lcom/dynatrace/agent/storage/db/EndPointInfo;",
        "activeEndpoint",
        "Lcom/dynatrace/agent/communication/api/ServerDataListener;",
        "serverDataListener",
        "Lkotlinx/coroutines/CoroutineScope;",
        "externalScope",
        "Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;",
        "connectivityChecker",
        "<init>",
        "(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/common/time/TimeProvider;Ljava/lang/String;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V",
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

.field public final b:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

.field public final e:Lcom/dynatrace/agent/storage/db/EndPointInfo;

.field public final f:Lcom/dynatrace/agent/communication/api/ServerDataListener;

.field public final g:Lkotlinx/coroutines/CoroutineScope;

.field public final h:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/common/time/TimeProvider;Ljava/lang/String;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->a:Lokhttp3/Call$Factory;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-object p3, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->d:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iput-object p5, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->e:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iput-object p6, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->f:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    iput-object p7, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->g:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->h:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/agent/communication/CommunicationManagerImpl;
    .locals 11

    new-instance v0, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->a:Lokhttp3/Call$Factory;

    if-nez v1, :cond_0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->b(J)V

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->d(J)V

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->c(J)V

    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2, v1}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    move-object v1, v2

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;

    iget-object v3, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;

    new-instance v4, Lcom/dynatrace/agent/communication/di/CommunicationModule$provideCommunicationManager$networkDataSource$1;

    const-string v9, "millisSinceEpoch()J"

    const/4 v10, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    const-class v7, Lcom/dynatrace/agent/common/time/TimeProvider;

    const-string v8, "millisSinceEpoch"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->c:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v6, v4

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;

    new-instance v5, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;

    iget-object v6, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->e:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v7, v6, Lcom/dynatrace/agent/storage/db/EndPointInfo;->a:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/dynatrace/android/agent/conf/ServerConfigurationManager;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;

    invoke-direct {v7}, Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;-><init>()V

    invoke-direct {v4, v5, v7}, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;)V

    iget-object v5, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->h:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    invoke-direct/range {v0 .. v5}, Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSourceImpl;-><init>(Lokhttp3/Call$Factory;Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;Lcom/dynatrace/agent/communication/network/request/DataRequestFactory;Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V

    new-instance v3, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;

    iget-object v1, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->d:Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;

    iget-object v2, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->b:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-direct {v3, v1, v2}, Lcom/dynatrace/agent/communication/ResponseProcessorImpl;-><init>(Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;)V

    move-object v4, v2

    new-instance v2, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v7, "{\"data_version\":1,\"data\":{\"events\":["

    invoke-virtual {v7, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v7, v7

    const-string v8, "]}}"

    invoke-virtual {v8, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v5, v5

    add-int/2addr v7, v5

    invoke-direct {v2, v6, v1, v7, v4}, Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;-><init>(Lcom/dynatrace/agent/storage/db/EndPointInfo;Lcom/dynatrace/agent/storage/db/EventDatabaseDataSource;ILcom/dynatrace/agent/common/time/TimeProvider;)V

    move-object v1, v0

    new-instance v0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object v5, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->g:Lkotlinx/coroutines/CoroutineScope;

    iget-object v6, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->h:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    iget-object v4, p0, Lcom/dynatrace/agent/communication/di/CommunicationModule;->f:Lcom/dynatrace/agent/communication/api/ServerDataListener;

    invoke-direct/range {v0 .. v6}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;-><init>(Lcom/dynatrace/agent/communication/network/datasource/NetworkDataSource;Lcom/dynatrace/agent/communication/preprocessing/DispatchableDataProvider;Lcom/dynatrace/agent/communication/ResponseProcessor;Lcom/dynatrace/agent/communication/api/ServerDataListener;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;)V

    return-object v0
.end method
