.class public Lcom/networkbench/agent/impl/harvest/ActionData;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/harvest/c/a;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionData"

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private IP:Ljava/lang/String;

.field private addressAllStr:Ljava/lang/String;

.field private appData:Ljava/lang/String;

.field private appDataNew:Ljava/lang/String;

.field private app_phase:I

.field private bytesReceived:J

.field private bytesSent:J

.field private carrier:Ljava/lang/String;

.field private cdnVendorName:Ljava/lang/String;

.field private connectType:I

.field private contentType:Ljava/lang/String;

.field private controllerDispatch:Z

.field private dataTag:Ljava/util/Map;

.field private errMsg:Ljava/lang/String;

.field private errStackTrace:Ljava/lang/String;

.field private errorCode:I

.field private httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

.field private isOk2DnsFromThread:Z

.field private isOkhttp3:Z

.field private networkHeaderAndBody:Lcom/networkbench/com/google/gson/JsonObject;

.field private remainPkTime:I

.field private requestBody:Ljava/lang/String;

.field public requestHeaderParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field private responseBody:Ljava/lang/String;

.field public responseHeaderParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seriesData:Lcom/networkbench/agent/impl/k/b;

.field private statusCode:I

.field private suuid:Ljava/lang/String;

.field private timeToQueueTime:I

.field private time_first_package:I

.field private time_ssl_handshake:I

.field private time_to_connect:I

.field private time_to_dns:I

.field private timestamp:Ljava/lang/Long;

.field private totalTime:I

.field private unknown:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;

.field private urlParams:Ljava/lang/String;

.field private userActionId:Ljava/lang/String;

.field private webviewData:Lcom/networkbench/com/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/harvest/ActionData;->log:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 118
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    .line 119
    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    .line 120
    const-string v1, ""

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->IP:Ljava/lang/String;

    const/4 v2, -0x1

    .line 121
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    .line 122
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    .line 123
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    .line 125
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    .line 126
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    .line 127
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->unknown:Ljava/util/HashMap;

    .line 128
    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->app_phase:I

    .line 129
    iput-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3:Z

    .line 130
    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->addressAllStr:Ljava/lang/String;

    .line 131
    sget-object v2, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    iput-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    .line 132
    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    .line 135
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->networkHeaderAndBody:Lcom/networkbench/com/google/gson/JsonObject;

    .line 136
    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestBody:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseBody:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->userActionId:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errMsg:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errStackTrace:Ljava/lang/String;

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->webviewData:Lcom/networkbench/com/google/gson/JsonObject;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const-string v1, ""

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->IP:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->unknown:Ljava/util/HashMap;

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->app_phase:I

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3:Z

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->addressAllStr:Ljava/lang/String;

    sget-object v2, Lcom/networkbench/agent/impl/harvest/RequestMethodType;->GET:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    iput-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->networkHeaderAndBody:Lcom/networkbench/com/google/gson/JsonObject;

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestBody:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseBody:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->userActionId:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errMsg:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errStackTrace:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->webviewData:Lcom/networkbench/com/google/gson/JsonObject;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/networkbench/agent/impl/k/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->getCurrentScreenName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/c;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private caclErrorCode()I
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    const/16 v1, 0x389

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ActionData;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setErrorCode :  \u91cd\u7f6e\u4e3a0 ... url + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    :cond_0
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    return p0
.end method

.method private calcRemainPackageTime()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    if-lez p0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private check(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x400

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private conutHttpTime()Z
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    if-lt v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errMsg:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-eq p0, v3, :cond_2

    sget-object v3, Lcom/networkbench/agent/impl/harvest/HttpLibType;->HttpClient:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne p0, v3, :cond_3

    :cond_2
    const/16 p0, 0x258

    if-gt v2, p0, :cond_3

    const/16 p0, 0x190

    if-lt v2, p0, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method private getErrorStackTrace()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errStackTrace:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    const/16 v2, 0xc8

    if-ne p0, v2, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method private getHttpData()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aA()Lcom/networkbench/agent/impl/util/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "ActionData"

    const-string v0, "isRecordNetworkEnabled false, get Http data return empty"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestHeaderParam:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const/4 v5, 0x0

    const-string v1, "requestHeader"

    invoke-static/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/networkbench/agent/impl/harvest/HttpLibType;Z)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseHeaderParam:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const/4 v5, 0x1

    const-string v1, "responseHeader"

    invoke-static/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/v;->b(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/networkbench/agent/impl/harvest/HttpLibType;Z)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->contentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestBody:Ljava/lang/String;

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const-string v1, "requestBody"

    invoke-static/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->contentType:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseBody:Ljava/lang/String;

    iget-object v5, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    const-string v1, "responseBody"

    invoke-static/range {v0 .. v5}, Lcom/networkbench/agent/impl/util/v;->b(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 8

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/harvest/ActionData;->check(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->IP:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcTotalTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->caclErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v6, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesSent:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-wide v6, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesReceived:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appData:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appData:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->contentType:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v3, v2

    :cond_2
    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-boolean v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->controllerDispatch:Z

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->connectType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->cdnVendorName:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object v3, v2

    :cond_3
    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->app_phase:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_1
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    if-ne v3, v5, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcRemainPackageTime()I

    move-result v3

    if-ne v3, v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcRemainPackageTime()I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->unknown:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->c(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_3
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appDataNew:Ljava/lang/String;

    if-nez v3, :cond_8

    move-object v3, v2

    :cond_8
    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getHttpData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->seriesData:Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->webviewData:Lcom/networkbench/com/google/gson/JsonObject;

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->userActionId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getErrorStackTrace()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public calcFirstpackage()V
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    :cond_0
    return-void
.end method

.method public calcQueueTime()V
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    return-void

    :cond_0
    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    return-void
.end method

.method public calcTotalTime()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    return p0
.end method

.method public checkActionData()V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->conutHttpTime()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getAllTime()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    return-void

    :cond_0
    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    :cond_1
    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    if-lt v0, v1, :cond_2

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    :cond_2
    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    if-lt v0, v1, :cond_3

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    :cond_3
    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    if-lt v0, v1, :cond_4

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    :cond_4
    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    if-lt v0, v1, :cond_5

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    :cond_5
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->conutHttpTime()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    :cond_6
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->conutHttpTime()Z

    move-result v0

    if-eqz v0, :cond_7

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    :cond_7
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->conutHttpTime()Z

    move-result v0

    if-eqz v0, :cond_8

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    :cond_8
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->conutHttpTime()Z

    move-result v0

    if-eqz v0, :cond_9

    iput v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    :cond_9
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->conutHttpTime()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    :cond_a
    return-void
.end method

.method public correctDataInfo()V
    .locals 9

    sget-object v0, Lcom/networkbench/agent/impl/harvest/ActionData;->log:Lcom/networkbench/agent/impl/c/e;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "before connecttime:%d, ssl:%d, remainpktime:%d, firstpk:%d, dns:%d, alltime:%d, queuetime:%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->checkActionData()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcFirstpackage()V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcQueueTime()V

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "after connecttime:%d, ssl:%d, remainpktime:%d, firstpk:%d, dns:%d, alltime:%d, queuetime:%d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method public getAddressAllStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->addressAllStr:Ljava/lang/String;

    return-object p0
.end method

.method public getAllTime()I
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    add-int/2addr v0, v1

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result v0

    add-int/2addr v0, v1

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->d(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public getAppData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appData:Ljava/lang/String;

    return-object p0
.end method

.method public getAppDataNew()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appDataNew:Ljava/lang/String;

    return-object p0
.end method

.method public getAppPhase()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->app_phase:I

    return p0
.end method

.method public getBytesReceived()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesReceived:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesSent:J

    return-wide v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->carrier:Ljava/lang/String;

    return-object p0
.end method

.method public getCdnVendorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->cdnVendorName:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDataTag()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->dataTag:Ljava/util/Map;

    return-object p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    return p0
.end method

.method public getHttpLibType()Lcom/networkbench/agent/impl/harvest/HttpLibType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-object p0
.end method

.method public getIP()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->IP:Ljava/lang/String;

    return-object p0
.end method

.method public getRemainPkTime()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    return p0
.end method

.method public getRequestMethod()Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    return p0
.end method

.method public getSuuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->suuid:Ljava/lang/String;

    return-object p0
.end method

.method public getTime_first_package()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    return p0
.end method

.method public getTime_ssl_handshake()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    return p0
.end method

.method public getTime_to_connect()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    return p0
.end method

.method public getTime_to_dns()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    return p0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public getTotalTime()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    return p0
.end method

.method public getUnknown()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->unknown:Ljava/util/HashMap;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlParams()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->urlParams:Ljava/lang/String;

    return-object p0
.end method

.method public isOk2DnsFromThread()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOk2DnsFromThread:Z

    return p0
.end method

.method public isOkhttp3()Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isOkhttp3 : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-boolean v1, v1, Lcom/networkbench/agent/impl/util/r;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->t(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/util/r;->d:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isWebViewData()Z
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->Webview:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebviewAJAX:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->WebViewResource:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAddressAllStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->addressAllStr:Ljava/lang/String;

    return-void
.end method

.method public setAppData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appData:Ljava/lang/String;

    return-void
.end method

.method public setAppDataNew(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appDataNew:Ljava/lang/String;

    return-void
.end method

.method public setAppPhase(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->app_phase:I

    return-void
.end method

.method public setBytesReceived(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesReceived:J

    return-void
.end method

.method public setBytesSent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesSent:J

    return-void
.end method

.method public setCarrier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->carrier:Ljava/lang/String;

    return-void
.end method

.method public setCdnVendorName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->cdnVendorName:Ljava/lang/String;

    return-void
.end method

.method public setConnectType(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->connectType:I

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setDataTag(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->dataTag:Ljava/util/Map;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-gt v0, v1, :cond_0

    const/16 v0, 0x389

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/harvest/ActionData;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setErrorCode :  \u91cd\u7f6e\u4e3a0 ... url + "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    return-void

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/harvest/ActionData;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "setErrorCode  : "

    const-string v2, " ......url"

    invoke-static {p1, v1, v2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    return-void
.end method

.method public setErrorInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errMsg:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errStackTrace:Ljava/lang/String;

    return-void
.end method

.method public setHttpLibType(Lcom/networkbench/agent/impl/harvest/HttpLibType;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-void
.end method

.method public setIP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->IP:Ljava/lang/String;

    return-void
.end method

.method public setNetworkData(Lcom/networkbench/agent/impl/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->seriesData:Lcom/networkbench/agent/impl/k/b;

    return-void
.end method

.method public setOk2DnsFromThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOk2DnsFromThread:Z

    return-void
.end method

.method public setOkhttp3(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->isOkhttp3:Z

    return-void
.end method

.method public setRemainPkTime(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->remainPkTime:I

    return-void
.end method

.method public setRequestBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestBody:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lcom/networkbench/agent/impl/harvest/RequestMethodType;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->responseBody:Ljava/lang/String;

    return-void
.end method

.method public setSeriesData(Lcom/networkbench/agent/impl/k/b;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->seriesData:Lcom/networkbench/agent/impl/k/b;

    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    return-void
.end method

.method public setSuuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->suuid:Ljava/lang/String;

    return-void
.end method

.method public setTimeToQueueTime(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    return-void
.end method

.method public setTime_first_package(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    return-void
.end method

.method public setTime_ssl_handshake(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    return-void
.end method

.method public setTime_to_connect(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    return-void
.end method

.method public setTime_to_dns(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    return-void
.end method

.method public setTimestamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    iput p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    return-void
.end method

.method public setUnknown(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->unknown:Ljava/util/HashMap;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    return-void
.end method

.method public setUrlParams(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->urlParams:Ljava/lang/String;

    return-void
.end method

.method public setUserActionId(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->userActionId:Ljava/lang/String;

    return-void
.end method

.method public setWebviewData(Lcom/networkbench/com/google/gson/JsonObject;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->webviewData:Lcom/networkbench/com/google/gson/JsonObject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", totalTime(include timeQueueTime)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcTotalTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesSent:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->bytesReceived:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", appData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->appData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->totalTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", urlParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->urlParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->requestMethod:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpLibType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->httpLibType:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", IP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time_to_dns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_dns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time_to_connect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_to_connect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",time_to_ssl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_ssl_handshake:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", time_first_package ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->time_first_package:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",content_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ctl_flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->controllerDispatch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",connectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->connectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cdnVendorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->cdnVendorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",app_phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->app_phase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeQueueTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->timeToQueueTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainPkTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->calcRemainPackageTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", webviewData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->webviewData:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",userActionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->userActionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errStack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/ActionData;->getErrorStackTrace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",requestBody:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/ActionData;->networkHeaderAndBody:Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
