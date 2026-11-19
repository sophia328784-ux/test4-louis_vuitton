.class public final Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;",
        "",
        "",
        "version",
        "<init>",
        "(Ljava/lang/String;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;)Lokhttp3/Request;
    .locals 4

    sget-object v0, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    iget-object v1, p1, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->a:Lcom/dynatrace/agent/storage/db/EndPointInfo;

    iget-object v2, v1, Lcom/dynatrace/agent/storage/db/EndPointInfo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lokhttp3/HttpUrl$Companion;->c(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->b:Lcom/dynatrace/agent/communication/LocalServerData;

    iget-object v2, v2, Lcom/dynatrace/agent/communication/LocalServerData;->b:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-wide v2, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    iget-object p0, p0, Lcom/dynatrace/agent/communication/network/request/ConfigRequestFactory;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0, v2, v3}, Lcom/dynatrace/agent/communication/network/request/HttpUrlExtensionsKt;->a(Lokhttp3/HttpUrl$Builder;Lcom/dynatrace/agent/storage/db/EndPointInfo;Ljava/lang/String;J)V

    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->c:Lcom/dynatrace/agent/communication/network/model/RetryInfo;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "rc"

    invoke-virtual {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/dynatrace/agent/communication/network/model/RetryInfo;->b:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v1, "rr"

    invoke-virtual {v0, v1, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p1, Lcom/dynatrace/agent/communication/network/datasource/ConfigRequest;->d:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    const-string p1, "si"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Lcom/dynatrace/agent/communication/network/request/HttpUrlExtensionsKt;->b(Lokhttp3/HttpUrl$Builder;)Lokhttp3/HttpUrl;

    move-result-object p0

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->c(Ljava/lang/String;Lokhttp3/RequestBody;)V

    iput-object p0, p1, Lokhttp3/Request$Builder;->a:Lokhttp3/HttpUrl;

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, p1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    return-object p0
.end method
