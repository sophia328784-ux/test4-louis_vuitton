.class public Lcom/networkbench/agent/impl/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x14

.field public static final b:I = 0x1d

.field private static final c:Ljava/lang/String; = "ActionData"

.field private static final d:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x5

    const/16 v1, 0x14

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 102
    :pswitch_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/v;->b(Landroid/content/Context;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    .line 121
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isHttp_network_enabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 125
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    long-to-int v1, v4

    .line 127
    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    if-eqz v3, :cond_4

    .line 128
    array-length v2, v3

    if-lez v2, :cond_4

    .line 129
    sget-object v2, Lcom/networkbench/agent/impl/socket/r;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/networkbench/agent/impl/socket/r$a;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 130
    invoke-virtual {v4}, Lcom/networkbench/agent/impl/socket/r$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 131
    aget-object p0, v3, v5

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/networkbench/agent/impl/socket/r$a;->a(Ljava/lang/String;)V

    return v1

    .line 132
    :cond_3
    new-instance v4, Lcom/networkbench/agent/impl/socket/r$a;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v1, v3}, Lcom/networkbench/agent/impl/socket/r$a;-><init>(ILjava/lang/String;)V

    .line 133
    invoke-virtual {v2, p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return v1

    :catchall_0
    :cond_5
    :goto_1
    return v0
.end method

.method public static a()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/e/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buildId is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appinfo is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/networkbench/com/google/gson/JsonObject;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 186
    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->d()Z

    move-result v1

    if-nez v1, :cond_2

    .line 187
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "white list and black list is empty"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/v;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 190
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v0

    .line 191
    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "white url list"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 193
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/v;->b(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0

    .line 194
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/util/v;->c(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 103
    const-string p0, "UNKNOWN"

    return-object p0

    .line 104
    :pswitch_0
    const-string p0, "HSPAP"

    return-object p0

    .line 105
    :pswitch_1
    const-string p0, "EHRPD"

    return-object p0

    .line 106
    :pswitch_2
    const-string p0, "LTE"

    return-object p0

    .line 107
    :pswitch_3
    const-string p0, "EVDO_B"

    return-object p0

    .line 108
    :pswitch_4
    const-string p0, "iDen"

    return-object p0

    .line 109
    :pswitch_5
    const-string p0, "HSPA"

    return-object p0

    .line 110
    :pswitch_6
    const-string p0, "HSUPA"

    return-object p0

    .line 111
    :pswitch_7
    const-string p0, "HSDPA"

    return-object p0

    .line 112
    :pswitch_8
    const-string p0, "1xRTT"

    return-object p0

    .line 113
    :pswitch_9
    const-string p0, "EVDO_A"

    return-object p0

    .line 114
    :pswitch_a
    const-string p0, "EVDO_0"

    return-object p0

    .line 115
    :pswitch_b
    const-string p0, "CDMA"

    return-object p0

    .line 116
    :pswitch_c
    const-string p0, "UMTS"

    return-object p0

    .line 117
    :pswitch_d
    const-string p0, "EDGE"

    return-object p0

    .line 118
    :pswitch_e
    const-string p0, "GPRS"

    return-object p0

    .line 119
    :cond_0
    const-string p0, "NR"

    return-object p0

    .line 120
    :cond_1
    const-string p0, "WIFI"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 175
    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    sget-object p1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "network body white list and black list is empty"

    invoke-interface {p1, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object p0

    .line 177
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->c()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    .line 178
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "network body white url list"

    invoke-interface {v0, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 180
    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 181
    :cond_2
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamBlackArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 182
    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    return-object p0
.end method

.method public static a(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->b(Lcom/networkbench/agent/impl/d/b/a;)V

    .line 149
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;)V
    .locals 1

    .line 164
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string p3, ""

    invoke-direct {p2, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 166
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isRequestBodyCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 167
    invoke-static {p3}, Lcom/networkbench/agent/impl/util/ak;->s(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 168
    sget-object p3, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {p3, p2, p4}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->invokeRequestBodyCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 169
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide p3

    long-to-int p3, p3

    .line 170
    invoke-static {p2, p3}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 171
    new-instance p3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p3, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 172
    :cond_1
    new-instance p3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    .line 173
    invoke-static {p4, p2}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide p4

    long-to-int p4, p4

    invoke-static {p2, p4}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1, p3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method public static a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/networkbench/agent/impl/harvest/HttpLibType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/harvest/HttpLibType;",
            "Z)V"
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance p2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 156
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isRequestHeaderCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 157
    sget-object p4, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    .line 158
    invoke-virtual {p4, p2, p3}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->invokeRequestHeaderCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p2

    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 160
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p4

    if-gtz p4, :cond_2

    .line 161
    new-instance p2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 162
    :cond_2
    invoke-static {p3, p5, p2}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p2

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 1

    .line 134
    new-instance v0, Lcom/networkbench/agent/impl/data/l;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/l;-><init>()V

    .line 135
    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/l;->a(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/l;->b(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, p3}, Lcom/networkbench/agent/impl/data/l;->b(I)V

    .line 138
    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/data/l;->c(I)V

    const/4 p0, 0x0

    .line 139
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/l;->a(I)V

    .line 140
    invoke-virtual {v0, p4}, Lcom/networkbench/agent/impl/data/l;->a(Z)V

    .line 141
    invoke-static {p3}, Lcom/networkbench/agent/impl/util/s;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 142
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/l;->b(Z)V

    .line 143
    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Lcom/networkbench/agent/impl/data/l;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 152
    :cond_1
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getIgnoreErrRules()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/networkbench/agent/impl/util/aj;->a(Ljava/lang/String;ILjava/util/List;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_2
    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 144
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    .line 145
    sget-object p0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "couldn\'t get connectivity manager"

    invoke-interface {p0, v1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_1
    return v0
.end method

.method public static a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)Z
    .locals 1

    .line 195
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

.method private static a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/networkbench/agent/impl/harvest/HarvestConfiguration$UrlFilter;",
            "Lcom/networkbench/agent/impl/data/j$c;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->getAvalidUrlParam(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/j$c;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static b()I
    .locals 1

    .line 209
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;I)I
    .locals 1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 208
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/v;->c(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private static b(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/networkbench/com/google/gson/JsonObject;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->getAvalidUrlParam(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/j$c;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getHeaderData httpUrlParam:  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/j$c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p2, p2, Lcom/networkbench/agent/impl/data/j$c;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/networkbench/agent/impl/data/j$c;->c:[Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_3

    array-length v1, p2

    if-lez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/v;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p0, "ActionData"

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "white list responce header:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "white list request header:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 210
    sget-object v0, Lcom/networkbench/agent/impl/util/ai;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 211
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    sget-object p0, Lcom/networkbench/agent/impl/util/ai;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 214
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static b(Lcom/networkbench/agent/impl/d/b/a;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/d/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/n;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    .line 217
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/e;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    .line 218
    invoke-static {p0}, Lcom/networkbench/agent/impl/data/a/k;->a(Lcom/networkbench/agent/impl/d/b/a;)V

    return-void
.end method

.method public static b(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/HttpLibType;)V
    .locals 1

    .line 229
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    new-instance p2, Lcom/networkbench/com/google/gson/JsonPrimitive;

    const-string p3, ""

    invoke-direct {p2, p3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 231
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isRespBodyCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p5}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 232
    invoke-static {p3}, Lcom/networkbench/agent/impl/util/ak;->s(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 233
    sget-object p3, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {p3, p2, p4}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->invokeRespBodyCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 234
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide p3

    long-to-int p3, p3

    .line 235
    invoke-static {p2, p3}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 236
    new-instance p3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p3, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 237
    :cond_1
    new-instance p3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    .line 238
    invoke-static {p4, p2}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->o()J

    move-result-wide p4

    long-to-int p4, p4

    invoke-static {p2, p4}, Lcom/networkbench/agent/impl/util/ab;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, p1, p3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method public static b(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/networkbench/agent/impl/harvest/HttpLibType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/harvest/HttpLibType;",
            "Z)V"
        }
    .end annotation

    .line 219
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isEnableNetworkContentRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    new-instance p2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 221
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->isRespHeaderCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Lcom/networkbench/agent/impl/util/v;->a(Lcom/networkbench/agent/impl/harvest/HttpLibType;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 222
    sget-object p4, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->instance:Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;

    .line 223
    invoke-virtual {p4, p2, p3}, Lcom/networkbench/agent/impl/session/network/NBSNetworkCallbackManager;->invokeRespHeaderCallback(Ljava/lang/String;Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p2

    .line 224
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 225
    :cond_1
    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p4

    if-gtz p4, :cond_2

    .line 226
    new-instance p2, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void

    .line 227
    :cond_2
    invoke-static {p3, p5, p2}, Lcom/networkbench/agent/impl/util/v;->a(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p2

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-void
.end method

.method public static b(I)Z
    .locals 1

    .line 240
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 205
    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 206
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :catchall_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .line 212
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    .line 214
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/content/Context;I)I
    .locals 7

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 217
    :try_start_0
    const-string v0, "phone"

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 219
    invoke-static {}, Lcom/networkbench/agent/impl/util/v;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 220
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 221
    :cond_0
    :try_start_1
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 222
    const-string v2, "getServiceStateForSubscriber"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 223
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 224
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 225
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ServiceState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 226
    :try_start_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 227
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->g(Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p0, :cond_2

    const/16 p1, 0x14

    :catchall_1
    :cond_2
    return p1
.end method

.method public static c(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4

    .line 228
    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 229
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/e/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 230
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 231
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 232
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 233
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 234
    sget-object v1, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buildId is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getBuildId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appinfo is"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crashType"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/util/HashMap;ZLjava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/networkbench/com/google/gson/JsonObject;"
        }
    .end annotation

    new-instance v0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlParamBlackArray()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-static {v1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionStateUtil;->getAvalidUrlParam(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/j$c;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/networkbench/agent/impl/data/j$c;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lcom/networkbench/agent/impl/data/j$c;->c:[Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_5

    array-length p2, p1

    if-lez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    const-string v3, ","

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/v;->h(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blacklist getHeaderData headerParam value:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->o(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2, v4}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/v;->h(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-object v0
.end method

.method private static c()Z
    .locals 1

    .line 238
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isUrlBlackListEnabled()Z

    move-result v0

    return v0
.end method

.method public static c(I)Z
    .locals 1

    .line 237
    const/16 v0, 0x190

    if-ge p0, v0, :cond_1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 0

    .line 19
    sget-object p0, Lcom/networkbench/agent/impl/PrivacyDataType;->PrivacyDataNetType:Lcom/networkbench/agent/impl/PrivacyDataType;

    invoke-static {p0}, Lcom/networkbench/agent/impl/e/b;->c(Lcom/networkbench/agent/impl/PrivacyDataType;)I

    move-result p0

    return p0
.end method

.method private static d()Z
    .locals 1

    .line 21
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->isUrlWhiteListEnabled()Z

    move-result v0

    return v0
.end method

.method public static d(I)Z
    .locals 1

    .line 20
    const/16 v0, 0x190

    if-ge p0, v0, :cond_0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ak;->r(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "networkbench.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "isGetNetworkTypePermission get READ_PHONE_STATE permission"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v2
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 34
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 36
    :cond_2
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlFilterMode()I

    move-result v2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getUrlRules()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/networkbench/agent/impl/util/aj;->b(Ljava/lang/String;ILjava/util/List;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->C(Ljava/net/URLConnection;)V

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->a(Ljava/net/HttpURLConnection;)V

    invoke-static {p0}, Lcom/dynatrace/android/callback/Callback;->g(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "loadBitmap url is null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "run network action in ui thread"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->h(Landroid/content/Context;)I

    move-result p0

    .line 56
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 4

    new-instance p0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aw()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/util/r;->av()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->au()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->t()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/t;->a()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v0, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->q()Lcom/networkbench/agent/impl/util/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/t;->b()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 1

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "nrState=NOT_RESTRICTED"

    .line 141
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nrState=CONNECTED"

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static h(Landroid/content/Context;)I
    .locals 2

    .line 44
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 46
    :cond_1
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    return p0
.end method

.method private static h(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cookie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "proxy-authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "set-cookie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method
