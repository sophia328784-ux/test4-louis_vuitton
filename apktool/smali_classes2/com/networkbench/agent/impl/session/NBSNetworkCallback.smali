.class public Lcom/networkbench/agent/impl/session/NBSNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# instance fields
.field connectivityManager:Landroid/net/ConnectivityManager;

.field type:I


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    iput-object p1, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->extracted(Landroid/net/NetworkInfo;)I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    return-void

    :cond_0
    iput v0, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    return-void
.end method

.method private extracted(Landroid/net/NetworkInfo;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/v;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/v;->a(Landroid/content/Context;I)I

    move-result p0

    :cond_2
    return p0
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    :try_start_0
    sget p1, Lcom/networkbench/agent/impl/util/r;->p:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iput p2, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_2

    iput p2, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->extracted(Landroid/net/NetworkInfo;)I

    move-result p1

    iget p2, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/networkbench/agent/impl/session/Event;

    const-string v0, "network change"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/networkbench/agent/impl/session/Event;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/session/Event;->getAttributes()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "networkStatusFrom"

    iget v2, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/session/Event;->getAttributes()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "networkStatusTo"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/session/SpanDatas;->addEvent(Lcom/networkbench/agent/impl/session/Event;)V

    :goto_0
    iput p1, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 4

    sget p1, Lcom/networkbench/agent/impl/util/r;->p:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->connectivityManager:Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iput v0, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->extracted(Landroid/net/NetworkInfo;)I

    move-result p1

    iput p1, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    :cond_2
    new-instance p1, Lcom/networkbench/agent/impl/session/Event;

    const-string v1, "network change"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lcom/networkbench/agent/impl/session/Event;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/Event;->getAttributes()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "networkStatusFrom"

    iget v3, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/Event;->getAttributes()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    const-string v2, "networkStatusTo"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getSpanDatas()Lcom/networkbench/agent/impl/session/SpanDatas;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/session/SpanDatas;->addEvent(Lcom/networkbench/agent/impl/session/Event;)V

    iput v0, p0, Lcom/networkbench/agent/impl/session/NBSNetworkCallback;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method
