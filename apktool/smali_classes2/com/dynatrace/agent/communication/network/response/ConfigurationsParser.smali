.class public final Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;",
        "",
        "Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;",
        "v3configParser",
        "Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;",
        "v4configParser",
        "<init>",
        "(Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;)V",
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
.field public final a:Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;

.field public final b:Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;->a:Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;

    iput-object p2, p0, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;->b:Lcom/dynatrace/agent/communication/network/response/ServerConfigurationManagerV4;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Ljava/lang/String;)Lcom/dynatrace/android/agent/conf/ServerConfiguration;
    .locals 11

    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lorg/json/JSONObject;

    const-string v0, "dynamicConfig"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "bp3Config"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "config v3 parsing: BPv3 config missing"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v2, "revision"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "environmentConfig"

    const-string v5, "appConfig"

    if-eqz v2, :cond_1

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/dynatrace/agent/communication/network/response/JsonExtensionKt;->a(Lorg/json/JSONObject;)Ljava/lang/Long;

    move-result-object v6

    iget-object p0, p0, Lcom/dynatrace/agent/communication/network/response/ConfigurationsParser;->a:Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;

    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration;->o:J

    cmp-long v2, v7, v9

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {p1}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->o:J

    sget-object v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;->k:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    new-instance v2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;

    invoke-direct {v2}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;-><init>()V

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {p0, p1, v2, v3}, Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;->e(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;Lorg/json/JSONObject;)V

    invoke-virtual {p2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p0, p1, v2, p2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;->b(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;Lorg/json/JSONObject;)V

    new-instance p2, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    invoke-direct {p2, v2}, Lcom/dynatrace/android/agent/conf/ReplayConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ReplayConfiguration$Builder;)V

    iput-object p2, p1, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;->j:Lcom/dynatrace/android/agent/conf/ReplayConfiguration;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;

    invoke-direct {p2, p1, v3}, Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration;Z)V

    move-object p1, p2

    :goto_2
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/dynatrace/android/agent/conf/ServerConfigurationParser;->a(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;Lorg/json/JSONObject;)V

    new-instance p0, Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p0, p1}, Lcom/dynatrace/android/agent/conf/ServerConfiguration;-><init>(Lcom/dynatrace/android/agent/conf/ServerConfiguration$Builder;)V

    return-object p0
.end method
